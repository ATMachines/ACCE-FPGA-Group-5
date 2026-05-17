/*
 * NOTE: READ CAREFULLY
 * Here the function `do_compute` is just a copy of the CPU sequential version.
 * Implement your FPGA code using VITIS HLS. Check the README for further instructions.

 *
 * Simulation of rainwater flooding
 * FPGA version
 *
 * Adapted for ACCE at the VU, Period 5 2025-2026 from the original version by
 * Based on the EduHPC 2025: Peachy assignment, Computacion Paralela, Grado en Informatica (Universidad de Valladolid)
 * 2024/2025
 */

#include <stdio.h>

#include "FLOOD.h"
#include <math.h>

/*
 * Utils: Random generator
 */
#include "rng.h"

void do_compute(struct parameters *p, struct results *r) {

    double max_spillage_iter = p->threshold + 1;

    // int *water_level;           // Level of water on each cell (fixed precision)
    // float *spillage_flag;       // Indicates which cells are spilling to neighbors
    // float *spillage_level;      // Maximum level of spillage of each cell
    // float *spillage_from_neigh; // Spillage from each neighbor

    int water_level[NROWS][NCOLS];
    float spillage_flag[NROWS][NCOLS];
    float spillage_level[NROWS][NCOLS];
    float spillage_from_neigh[NROWS][NCOLS][CONTIGUOUS_CELLS];

#pragma HLS ARRAY_PARTITION variable=spillage_from_neigh complete dim=3
#pragma HLS array_partition variable=water_level complete dim=2

    /* Initialization */
    /* 3.1. Memory allocation */
    // water_level = (int *)malloc(sizeof(int) * (size_t)NROWS * (size_t)NCOLS);
    // spillage_flag = (float *)malloc(sizeof(float) * (size_t)NROWS * (size_t)NCOLS);
    // spillage_level = (float *)malloc(sizeof(float) * (size_t)NROWS * (size_t)NCOLS);
    // spillage_from_neigh = (float *)malloc(sizeof(float) * (size_t)NROWS * (size_t)NCOLS * (size_t)CONTIGUOUS_CELLS);

    if (water_level == NULL || spillage_flag == NULL || spillage_level == NULL || spillage_from_neigh == NULL) {
        fprintf(stderr, "-- Error allocating ground and rain structures for size: %d x %d \n", NROWS, NCOLS);
        exit(EXIT_FAILURE);
    }

    /* Ground generation and initialization of other structures */
    int row_pos, col_pos, depth_pos;
    for (row_pos = 0; row_pos < NROWS; row_pos++) {
        for (col_pos = 0; col_pos < NCOLS; col_pos++) {
            // accessMat(water_level, row_pos, col_pos) = 0;
            // accessMat(spillage_flag, row_pos, col_pos) = 0.0;
            // accessMat(spillage_level, row_pos, col_pos) = 0.0;
            water_level[row_pos][col_pos] = 0;
            spillage_flag[row_pos][col_pos] = 0.0;
            spillage_level[row_pos][col_pos] = 0.0;

            int depths = CONTIGUOUS_CELLS;
            for (depth_pos = 0; depth_pos < depths; depth_pos++)
                spillage_from_neigh[row_pos][col_pos][depth_pos] = 0.0;
                // accessMat3D(spillage_from_neigh, row_pos, col_pos, depth_pos) = 0.0;
        }
    }

    /* Flood simulation (time iterations) */
    for (r->minute = 0; r->minute < p->num_minutes && max_spillage_iter > p->threshold; r->minute++) {

        int new_row, new_col;
        int cell_pos;

        /* Step 1: Clouds movement */
        for (int cloud = 0; cloud < NCLOUDS; cloud++) {
            // Calculate new position (x are rows, y are columns)
            p->clouds[cloud].x += p->clouds[cloud].dx / 60;
            p->clouds[cloud].y += p->clouds[cloud].dy / 60;
        }

        /* Rainfall */
        for (int cloud = 0; cloud < NCLOUDS; cloud++) {
            // Compute the bounding box area of the cloud
            float row_start = COORD_SCEN2MAT_Y(MAX(0.0f, p->clouds[cloud].y - p->clouds[cloud].radius));
            float row_end = COORD_SCEN2MAT_Y(MIN(p->clouds[cloud].y + p->clouds[cloud].radius, SCENARIO_SIZE));
            float col_start = COORD_SCEN2MAT_X(MAX(0.0f, p->clouds[cloud].x - p->clouds[cloud].radius));
            float col_end = COORD_SCEN2MAT_X(MIN(p->clouds[cloud].x + p->clouds[cloud].radius, SCENARIO_SIZE));
            float distance;
            // Add rain to the ground water level
            float row_pos, col_pos;
            for (row_pos = row_start; row_pos < row_end; row_pos++) {
                for (col_pos = col_start; col_pos < col_end; col_pos++) {
#pragma HLS PIPELINE II=1
                    float x_pos = COORD_MAT2SCEN_X(col_pos);
                    float y_pos = COORD_MAT2SCEN_Y(row_pos);
                    distance = sqrt(pow(x_pos - p->clouds[cloud].x, 2) + pow(y_pos - p->clouds[cloud].y, 2));
                    if (distance < p->clouds[cloud].radius) {
                        float rain = p->ex_factor * MAX(0.0f, p->clouds[cloud].intensity - distance / p->clouds[cloud].radius * sqrt(p->clouds[cloud].intensity));
                        float meters_per_minute = rain / 1000.0f / 60.0f;
                        // accessMat(water_level, row_pos, col_pos) += FIXED(meters_per_minute);
                        water_level[(int)row_pos][(int)col_pos] += FIXED(meters_per_minute);
                        r->total_rain += FIXED(meters_per_minute);
                    }
                }
            }
        }
        
        /* Step 2: Compute water spillage to neighbor cells */
        for (row_pos = 0; row_pos < NROWS; row_pos++) {
            for (col_pos = 0; col_pos < NCOLS; col_pos++) {
                if (water_level[row_pos][col_pos] > 0) {
                    float sum_diff = 0;
                    float my_spillage_level = 0;

                    /* Differences between current-cell level and its neighbours  */
                    float current_height =
                        p->ground[row_pos][col_pos] + FLOATING(water_level[row_pos][col_pos]);
                        // accessMat(p->ground, row_pos, col_pos) + FLOATING(water_level[row_pos][col_pos]);

                    // Iterate over the four neighboring cells using the displacement array
                    for (cell_pos = 0; cell_pos < CONTIGUOUS_CELLS; cell_pos++) {
                        new_row = row_pos + displacements[cell_pos][0];
                        new_col = col_pos + displacements[cell_pos][1];

                        float neighbor_height;

                        // Check if the new position is within the matrix boundaries
                        if (new_row < 0 || new_row >= NROWS || new_col < 0 || new_col >= NCOLS)
                            // Out of borders: Same height as the cell with no water
                            neighbor_height = p->ground[row_pos][col_pos];
                            // neighbor_height = accessMat(p->ground, row_pos, col_pos);
                        else
                            // Neighbor cell: Ground height + water level
                            neighbor_height = p->ground[new_row][new_col] + FLOATING(water_level[new_row][new_col]);
                            // neighbor_height = accessMat(p->ground, row_pos, col_pos) + FLOATING(water_level[new_row][new_col]);


                        // Compute level differences
                        if (current_height >= neighbor_height) {
                            float height_diff = current_height - neighbor_height;
                            sum_diff += height_diff;
                            my_spillage_level = MAX(my_spillage_level, height_diff);
                        }
                    }
                    my_spillage_level = MIN(FLOATING(water_level[row_pos][col_pos]), my_spillage_level);

                    // Compute proportion of spillage to each neighbor
                    if (sum_diff > 0.0) {
                        float proportion = my_spillage_level / sum_diff;
                        // If proportion is significative, spillage
                        if (proportion > 1e-8) {
                            spillage_flag[row_pos][col_pos] = 1;
                            spillage_level[row_pos][col_pos] = my_spillage_level;

                            // Iterate over the four neighboring cells using the displacement array
                            for (cell_pos = 0; cell_pos < 4; cell_pos++) {
                                new_row = row_pos + displacements[cell_pos][0];
                                new_col = col_pos + displacements[cell_pos][1];

                                float neighbor_height;

                                // Check if the new position is within the matrix boundaries
                                if (new_row < 0 || new_row >= NROWS || new_col < 0 || new_col >= NCOLS) {
                                    // Spillage out of the borders: Water loss
                                    neighbor_height = p->ground[row_pos][col_pos];
                                    // neighbor_height = accessMat(p->ground, row_pos, col_pos);
                                    if (current_height >= neighbor_height) {
                                        r->total_water_loss +=
                                            FIXED(proportion * (current_height - neighbor_height) / 2);
                                    }
                                } else {
                                    // Spillage to a neighbor cell
                                    neighbor_height = p->ground[new_row][new_col] +
                                                      FLOATING(water_level[new_row][new_col]);
                                    if (current_height >= neighbor_height) {
                                        int depths = CONTIGUOUS_CELLS;
                                        spillage_from_neigh[new_row][new_col][cell_pos] = proportion * (current_height - neighbor_height);
                                        // accessMat3D(spillage_from_neigh, new_row, new_col, cell_pos) = proportion * (current_height - neighbor_height);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        /* Step 3: Propagation of previously computer water spillage to/from neighbors */
        max_spillage_iter = 0.0;
        PROPAGATION_ROWS:
        for (row_pos = 0; row_pos < NROWS; row_pos++) {
            PROPAGATION_COLS:
            for (col_pos = 0; col_pos < NCOLS; col_pos++) {

#pragma HLS PIPELINE II=1
                //local copy to avoid dependencies
                int wl = water_level[row_pos][col_pos];

                // If the cell has spillage
                if (spillage_flag[row_pos][col_pos] == 1) {

                    //local calculation
                    float spill = spillage_level[row_pos][col_pos] / SPILLAGE_FACTOR;
                    int fixed_spill = FIXED(spill);
                    wl -= fixed_spill;

                    // Compute termination condition: Maximum cell spillage during the iteration
                    if (spill > max_spillage_iter) {
                        max_spillage_iter = spill;
                    }
                    // Statistics: Record maximum cell spillage during the scenario and its time
                    if (spill > r->max_spillage_scenario) {
                        r->max_spillage_scenario = spill;
                        r->max_spillage_minute = r->minute;
                    }
                }

                int spill_acc = 0;

                // Accumulate spillage from neighbors
                NEIGHBOR_ACCUM:
                for (cell_pos = 0; cell_pos < CONTIGUOUS_CELLS; cell_pos++) {
#pragma HLS UNROLL
                    spill_acc += FIXED(spillage_from_neigh[row_pos][col_pos][cell_pos] / SPILLAGE_FACTOR);
                }

                // Apply accumulated incoming spill
                wl += spill_acc;

                // Write back final water level
                water_level[row_pos][col_pos] = wl;
            }
        }

        /* Reset ancillary structures */
        for (row_pos = 0; row_pos < NROWS; row_pos++) {
            for (col_pos = 0; col_pos < NCOLS; col_pos++) {
                for (cell_pos = 0; cell_pos < CONTIGUOUS_CELLS; cell_pos++) {
                    int depths = CONTIGUOUS_CELLS;
                    // accessMat3D(spillage_from_neigh, row_pos, col_pos, cell_pos) = 0;
                    spillage_from_neigh[row_pos][col_pos][cell_pos] = 0;
                }
                spillage_flag[row_pos][col_pos] = 0;
                spillage_level[row_pos][col_pos] = 0;
            }
        }
    }

    /* 5. Statistics: Total remaining water and maximum amount of water in a cell */
    r->max_water_scenario = 0.0;
    for (row_pos = 0; row_pos < NROWS; row_pos++) {
        for (col_pos = 0; col_pos < NCOLS; col_pos++) {
            if (FLOATING(water_level[row_pos][col_pos]) > r->max_water_scenario)
                r->max_water_scenario = FLOATING(water_level[row_pos][col_pos]);
            r->total_water += water_level[row_pos][col_pos];
        }
    }

    /* 6. Free resources */
    // free(water_level);
    // free(spillage_flag);
    // free(spillage_level);
    // free(spillage_from_neigh);

    return;
}
