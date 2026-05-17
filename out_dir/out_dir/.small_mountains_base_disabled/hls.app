<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="do_compute" name=".small_mountains_base_disabled" ideType="classic">
    <files>
        <file name="flood_HLS_base.cpp" sc="0" tb="false" cflags="-DNROWS=60 -DNCOLS=80 -DNCLOUDS=9" csimflags="" blackbox="false"/>
        <file name="rng.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="FLOOD.h" sc="0" tb="false" cflags="-DNROWS=60 -DNCOLS=80 -DNCLOUDS=9" csimflags="" blackbox="false"/>
        <file name="../../test_FLOOD_base.cpp" sc="0" tb="1" cflags="-DNROWS=60 -DNCOLS=80 -DNCLOUDS=9 -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution_FLOOD_HLS_base" status=""/>
    </solutions>
    <Simulation argv="small_mountains.out M 0.00001 100 50 10 20 12 110 9 2 110 20 45 843135">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

