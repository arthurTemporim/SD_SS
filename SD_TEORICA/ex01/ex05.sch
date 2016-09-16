<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="fita" />
        <signal name="fm" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="disco" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="fita" />
        <port polarity="Output" name="fm" />
        <port polarity="Output" name="disco" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and3" name="XLXI_1">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="fita" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="fm" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="XLXN_11" name="I" />
            <blockpin signalname="disco" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="1280" name="XLXI_1" orien="R0" />
        <instance x="1072" y="1472" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="512" y1="1104" y2="1344" x1="512" />
            <wire x2="1072" y1="1344" y2="1344" x1="512" />
            <wire x2="1008" y1="1104" y2="1104" x1="512" />
            <wire x2="1008" y1="1056" y2="1056" x1="960" />
            <wire x2="1072" y1="1056" y2="1056" x1="1008" />
            <wire x2="1072" y1="1056" y2="1088" x1="1072" />
            <wire x2="1088" y1="1088" y2="1088" x1="1072" />
            <wire x2="1008" y1="1056" y2="1104" x1="1008" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1088" y1="1152" y2="1152" x1="960" />
        </branch>
        <instance x="736" y="1184" name="XLXI_3" orien="R0" />
        <branch name="A">
            <wire x2="688" y1="1056" y2="1056" x1="592" />
            <wire x2="736" y1="1056" y2="1056" x1="688" />
            <wire x2="832" y1="944" y2="944" x1="688" />
            <wire x2="688" y1="944" y2="1056" x1="688" />
        </branch>
        <branch name="B">
            <wire x2="688" y1="1152" y2="1152" x1="592" />
            <wire x2="720" y1="1152" y2="1152" x1="688" />
            <wire x2="736" y1="1152" y2="1152" x1="720" />
            <wire x2="688" y1="1152" y2="1408" x1="688" />
            <wire x2="1072" y1="1408" y2="1408" x1="688" />
        </branch>
        <branch name="C">
            <wire x2="1088" y1="1216" y2="1216" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1216" name="C" orien="R180" />
        <branch name="fita">
            <wire x2="1376" y1="1152" y2="1152" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1376" y="1152" name="fita" orien="R0" />
        <branch name="fm">
            <wire x2="1360" y1="1376" y2="1376" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1376" name="fm" orien="R0" />
        <iomarker fontsize="28" x="592" y="1152" name="B" orien="R180" />
        <iomarker fontsize="28" x="592" y="1056" name="A" orien="R180" />
        <instance x="736" y="1088" name="XLXI_4" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="1088" y1="944" y2="944" x1="1056" />
        </branch>
        <instance x="832" y="976" name="XLXI_6" orien="R0" />
        <instance x="1088" y="976" name="XLXI_7" orien="R0" />
        <branch name="disco">
            <wire x2="1344" y1="944" y2="944" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="944" name="disco" orien="R0" />
    </sheet>
</drawing>