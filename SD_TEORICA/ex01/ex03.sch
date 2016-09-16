<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24" />
        <signal name="XLXN_26" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_51" />
        <signal name="XLXN_33" />
        <signal name="A" />
        <signal name="S" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_28" />
        <signal name="XLXN_53" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_78" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_81" />
        <signal name="XLXN_60" />
        <signal name="B" />
        <signal name="C" />
        <signal name="D" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="S" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
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
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_16">
            <blockpin signalname="XLXN_60" name="I0" />
            <blockpin signalname="XLXN_59" name="I1" />
            <blockpin signalname="XLXN_58" name="I2" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_18">
            <blockpin signalname="XLXN_53" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_57" name="I2" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_26">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_55" name="I2" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_27">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1744" y="1760" name="XLXI_12" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1728" y1="1424" y2="1424" x1="1408" />
            <wire x2="1728" y1="1424" y2="1632" x1="1728" />
            <wire x2="1744" y1="1632" y2="1632" x1="1728" />
        </branch>
        <branch name="A">
            <wire x2="1168" y1="1344" y2="1344" x1="1152" />
            <wire x2="1168" y1="1344" y2="1424" x1="1168" />
            <wire x2="1184" y1="1424" y2="1424" x1="1168" />
        </branch>
        <branch name="S">
            <wire x2="2032" y1="1664" y2="1664" x1="2000" />
        </branch>
        <instance x="1424" y="1968" name="XLXI_16" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="1712" y1="1840" y2="1840" x1="1680" />
            <wire x2="1712" y1="1696" y2="1840" x1="1712" />
            <wire x2="1744" y1="1696" y2="1696" x1="1712" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1088" y1="2048" y2="2048" x1="1056" />
        </branch>
        <instance x="832" y="2080" name="XLXI_15" orien="R0" />
        <branch name="XLXN_46">
            <wire x2="1088" y1="1984" y2="1984" x1="1056" />
        </branch>
        <instance x="832" y="2016" name="XLXI_20" orien="R0" />
        <instance x="1088" y="2112" name="XLXI_17" orien="R0" />
        <instance x="1056" y="1936" name="XLXI_18" orien="R0" />
        <instance x="1184" y="1456" name="XLXI_10" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="1056" y1="1872" y2="1872" x1="1024" />
        </branch>
        <instance x="800" y="1904" name="XLXI_26" orien="R0" />
        <instance x="1184" y="1744" name="XLXI_19" orien="R0" />
        <branch name="XLXN_55">
            <wire x2="1184" y1="1552" y2="1552" x1="1152" />
        </branch>
        <instance x="928" y="1584" name="XLXI_24" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="1184" y1="1616" y2="1616" x1="1152" />
        </branch>
        <instance x="928" y="1648" name="XLXI_25" orien="R0" />
        <branch name="XLXN_57">
            <wire x2="1056" y1="1744" y2="1744" x1="1024" />
        </branch>
        <instance x="800" y="1776" name="XLXI_27" orien="R0" />
        <branch name="XLXN_58">
            <wire x2="1424" y1="1696" y2="1776" x1="1424" />
            <wire x2="1520" y1="1696" y2="1696" x1="1424" />
            <wire x2="1520" y1="1616" y2="1616" x1="1440" />
            <wire x2="1520" y1="1616" y2="1696" x1="1520" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1360" y1="1808" y2="1808" x1="1312" />
            <wire x2="1360" y1="1808" y2="1840" x1="1360" />
            <wire x2="1424" y1="1840" y2="1840" x1="1360" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1424" y1="1984" y2="1984" x1="1344" />
            <wire x2="1424" y1="1904" y2="1984" x1="1424" />
        </branch>
        <branch name="C">
            <wire x2="576" y1="1616" y2="1616" x1="432" />
            <wire x2="736" y1="1616" y2="1616" x1="576" />
            <wire x2="928" y1="1616" y2="1616" x1="736" />
            <wire x2="736" y1="1616" y2="1808" x1="736" />
            <wire x2="1056" y1="1808" y2="1808" x1="736" />
            <wire x2="576" y1="1616" y2="1984" x1="576" />
            <wire x2="832" y1="1984" y2="1984" x1="576" />
        </branch>
        <branch name="D">
            <wire x2="480" y1="1680" y2="1680" x1="432" />
            <wire x2="688" y1="1680" y2="1680" x1="480" />
            <wire x2="1184" y1="1680" y2="1680" x1="688" />
            <wire x2="688" y1="1680" y2="1872" x1="688" />
            <wire x2="800" y1="1872" y2="1872" x1="688" />
            <wire x2="480" y1="1680" y2="2048" x1="480" />
            <wire x2="832" y1="2048" y2="2048" x1="480" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1664" name="S" orien="R0" />
        <iomarker fontsize="28" x="1152" y="1344" name="A" orien="R180" />
        <branch name="B">
            <wire x2="640" y1="1552" y2="1552" x1="416" />
            <wire x2="784" y1="1552" y2="1552" x1="640" />
            <wire x2="928" y1="1552" y2="1552" x1="784" />
            <wire x2="784" y1="1552" y2="1568" x1="784" />
            <wire x2="784" y1="1568" y2="1744" x1="784" />
            <wire x2="800" y1="1744" y2="1744" x1="784" />
            <wire x2="640" y1="1552" y2="1920" x1="640" />
            <wire x2="1072" y1="1920" y2="1920" x1="640" />
            <wire x2="1088" y1="1920" y2="1920" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="416" y="1552" name="B" orien="R180" />
        <iomarker fontsize="28" x="432" y="1616" name="C" orien="R180" />
        <iomarker fontsize="28" x="432" y="1680" name="D" orien="R180" />
    </sheet>
</drawing>