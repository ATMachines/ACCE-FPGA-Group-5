<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" top="do_compute" name=".tiny_dam_base_enabled" ideType="classic">
    <files>
        <file name="flood_HLS_base.cpp" sc="0" tb="false" cflags="-DNROWS=50 -DNCOLS=50 -DNCLOUDS=7" csimflags="" blackbox="false"/>
        <file name="rng.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="FLOOD.h" sc="0" tb="false" cflags="-DNROWS=50 -DNCOLS=50 -DNCLOUDS=7" csimflags="" blackbox="false"/>
        <file name="../../test_FLOOD_base.cpp" sc="0" tb="1" cflags="-DNROWS=50 -DNCOLS=50 -DNCLOUDS=7 -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution_FLOOD_HLS_base" status=""/>
    </solutions>
    <Simulation argv="tiny_dam.out D 0.00001 10 50 10 30 10 70 7 5 60 26 25 1321156">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

