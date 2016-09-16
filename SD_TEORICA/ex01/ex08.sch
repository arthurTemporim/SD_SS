<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B" />
        <signal name="XLXN_2" />
        <signal name="A" />
        <signal name="XLXN_6" />
        <signal name="Eve" />
        <signal name="Evs" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="Eve" />
        <port polarity="Output" name="Evs" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="Eve" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="Evs" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="864" name="XLXI_1" orien="R0" />
        <branch name="B">
            <wire x2="1072" y1="800" y2="800" x1="944" />
            <wire x2="1136" y1="800" y2="800" x1="1072" />
            <wire x2="1152" y1="800" y2="800" x1="1136" />
            <wire x2="1072" y1="800" y2="912" x1="1072" />
            <wire x2="1136" y1="912" y2="912" x1="1072" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1136" y1="736" y2="736" x1="1120" />
            <wire x2="1152" y1="736" y2="736" x1="1136" />
        </branch>
        <instance x="896" y="768" name="XLXI_2" orien="R0" />
        <instance x="1136" y="944" name="XLXI_3" orien="R0" />
        <branch name="A">
            <wire x2="880" y1="736" y2="736" x1="864" />
            <wire x2="896" y1="736" y2="736" x1="880" />
        </branch>
        <iomarker fontsize="28" x="864" y="736" name="A" orien="R180" />
        <iomarker fontsize="28" x="944" y="800" name="B" orien="R180" />
        <branch name="Eve">
            <wire x2="1440" y1="768" y2="768" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1440" y="768" name="Eve" orien="R0" />
        <branch name="Evs">
            <wire x2="1392" y1="912" y2="912" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="912" name="Evs" orien="R0" />
    </sheet>
</drawing>