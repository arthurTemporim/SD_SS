<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="S2" />
        <signal name="XLXN_3" />
        <signal name="S1" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="S2" />
        <port polarity="Output" name="S1" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="S2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="S1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="1104" name="XLXI_1" orien="R0" />
        <branch name="A">
            <wire x2="880" y1="960" y2="1024" x1="880" />
            <wire x2="992" y1="1024" y2="1024" x1="880" />
            <wire x2="992" y1="1024" y2="1072" x1="992" />
            <wire x2="1088" y1="1072" y2="1072" x1="992" />
            <wire x2="1088" y1="960" y2="960" x1="992" />
            <wire x2="992" y1="960" y2="1024" x1="992" />
        </branch>
        <branch name="S2">
            <wire x2="1344" y1="1072" y2="1072" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="1072" name="S2" orien="R0" />
        <iomarker fontsize="28" x="880" y="960" name="A" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="1376" y1="960" y2="960" x1="1312" />
        </branch>
        <instance x="1376" y="992" name="XLXI_3" orien="R0" />
        <branch name="S1">
            <wire x2="1632" y1="960" y2="960" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1632" y="960" name="S1" orien="R0" />
        <instance x="1088" y="992" name="XLXI_2" orien="R0" />
    </sheet>
</drawing>