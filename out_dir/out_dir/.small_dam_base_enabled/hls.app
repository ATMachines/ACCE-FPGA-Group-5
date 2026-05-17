<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="do_compute" name=".small_dam_base_enabled" ideType="classic">
    <files>
        <file name="flood_HLS_base.cpp" sc="0" tb="false" cflags="-DNROWS=90 -DNCOLS=90 -DNCLOUDS=9" csimflags="" blackbox="false"/>
        <file name="rng.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="FLOOD.h" sc="0" tb="false" cflags="-DNROWS=90 -DNCOLS=90 -DNCLOUDS=9" csimflags="" blackbox="false"/>
        <file name="../../test_FLOOD_base.cpp" sc="0" tb="1" cflags="-DNROWS=90 -DNCOLS=90 -DNCLOUDS=9 -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution_FLOOD_HLS_base" status=""/>
    </solutions>
    <Simulation argv="small_dam.out D 0.00001 120 50 8 30 10 160 9 2 80 30 45 1558756">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

