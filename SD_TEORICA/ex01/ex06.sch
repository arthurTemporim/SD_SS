<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="T1" />
        <signal name="T2" />
        <signal name="T3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="B1">
        </signal>
        <signal name="B2" />
        <signal name="C" />
        <signal name="B11" />
        <port polarity="Input" name="T1" />
        <port polarity="Input" name="T2" />
        <port polarity="Input" name="T3" />
        <port polarity="Output" name="B2" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="B11" />
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
            <blockpin signalname="T2" name="I0" />
            <blockpin signalname="T1" name="I1" />
            <blockpin signalname="B2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="T3" name="I0" />
            <blockpin signalname="T2" name="I1" />
            <blockpin signalname="T1" name="I2" />
            <blockpin signalname="C" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="T1" name="I" />
            <blockpin signalname="B1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="B1" name="I" />
            <blockpin signalname="B11" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="1536" name="XLXI_2" orien="R0" />
        <instance x="848" y="1264" name="XLXI_1" orien="R0" />
        <branch name="T1">
            <wire x2="704" y1="1008" y2="1008" x1="576" />
            <wire x2="736" y1="1008" y2="1008" x1="704" />
            <wire x2="736" y1="1008" y2="1136" x1="736" />
            <wire x2="848" y1="1136" y2="1136" x1="736" />
            <wire x2="848" y1="1008" y2="1008" x1="736" />
            <wire x2="704" y1="1008" y2="1344" x1="704" />
            <wire x2="848" y1="1344" y2="1344" x1="704" />
        </branch>
        <branch name="T2">
            <wire x2="672" y1="1200" y2="1200" x1="592" />
            <wire x2="832" y1="1200" y2="1200" x1="672" />
            <wire x2="848" y1="1200" y2="1200" x1="832" />
            <wire x2="672" y1="1200" y2="1408" x1="672" />
            <wire x2="848" y1="1408" y2="1408" x1="672" />
        </branch>
        <branch name="T3">
            <wire x2="832" y1="1472" y2="1472" x1="592" />
            <wire x2="848" y1="1472" y2="1472" x1="832" />
        </branch>
        <iomarker fontsize="28" x="592" y="1472" name="T3" orien="R180" />
        <iomarker fontsize="28" x="592" y="1200" name="T2" orien="R180" />
        <iomarker fontsize="28" x="576" y="1008" name="T1" orien="R180" />
        <branch name="B2">
            <wire x2="1136" y1="1168" y2="1168" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1168" name="B2" orien="R0" />
        <branch name="C">
            <wire x2="1136" y1="1408" y2="1408" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1408" name="C" orien="R0" />
        <branch name="B1">
            <wire x2="1104" y1="1008" y2="1008" x1="1072" />
        </branch>
        <instance x="848" y="1040" name="XLXI_3" orien="R0" />
        <instance x="1104" y="1040" name="XLXI_4" orien="R0" />
        <branch name="B11">
            <wire x2="1360" y1="1008" y2="1008" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1008" name="B11" orien="R0" />
    </sheet>
</drawing>