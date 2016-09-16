<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="B" />
        <signal name="A" />
        <signal name="XLXN_15" />
        <signal name="saida">
        </signal>
        <signal name="S" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="S" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
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
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="saida" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="saida" name="I" />
            <blockpin signalname="S" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="912" y="1408" name="A" orien="R180" />
        <iomarker fontsize="28" x="912" y="1472" name="C" orien="R180" />
        <branch name="C">
            <wire x2="992" y1="1472" y2="1472" x1="912" />
            <wire x2="992" y1="1472" y2="1616" x1="992" />
            <wire x2="1104" y1="1616" y2="1616" x1="992" />
        </branch>
        <instance x="1104" y="1680" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="864" y="1728" name="B" orien="R180" />
        <branch name="B">
            <wire x2="1424" y1="1728" y2="1728" x1="864" />
        </branch>
        <branch name="A">
            <wire x2="1056" y1="1408" y2="1408" x1="912" />
            <wire x2="1056" y1="1408" y2="1552" x1="1056" />
            <wire x2="1104" y1="1552" y2="1552" x1="1056" />
        </branch>
        <instance x="1424" y="1792" name="XLXI_5" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1392" y1="1584" y2="1584" x1="1360" />
            <wire x2="1392" y1="1584" y2="1664" x1="1392" />
            <wire x2="1424" y1="1664" y2="1664" x1="1392" />
        </branch>
        <branch name="saida">
            <wire x2="1712" y1="1696" y2="1696" x1="1680" />
        </branch>
        <instance x="1712" y="1728" name="XLXI_6" orien="R0" />
        <branch name="S">
            <wire x2="1968" y1="1696" y2="1696" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1696" name="S" orien="R0" />
    </sheet>
</drawing>