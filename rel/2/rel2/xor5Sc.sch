<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="D" />
        <signal name="E" />
        <signal name="F" />
        <signal name="S" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="F" />
        <port polarity="Output" name="S" />
        <blockdef name="xor6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="208" ey="-224" sx="128" sy="-176" r="88" cx="132" cy="-264" />
            <arc ex="64" ey="-272" sx="64" sy="-176" r="56" cx="32" cy="-224" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <line x2="64" y1="-272" y2="-272" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <arc ex="48" ey="-272" sx="48" sy="-176" r="56" cx="16" cy="-224" />
            <line x2="48" y1="-64" y2="-176" x1="48" />
            <line x2="48" y1="-272" y2="-384" x1="48" />
            <arc ex="128" ey="-272" sx="208" sy="-224" r="88" cx="132" cy="-184" />
            <line x2="208" y1="-224" y2="-224" x1="256" />
        </blockdef>
        <block symbolname="xor6" name="XLXI_1">
            <blockpin signalname="F" name="I0" />
            <blockpin signalname="E" name="I1" />
            <blockpin signalname="D" name="I2" />
            <blockpin signalname="C" name="I3" />
            <blockpin signalname="B" name="I4" />
            <blockpin signalname="A" name="I5" />
            <blockpin signalname="S" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="336" y="544" name="XLXI_1" orien="R0" />
        <branch name="A">
            <wire x2="320" y1="160" y2="160" x1="304" />
            <wire x2="336" y1="160" y2="160" x1="320" />
        </branch>
        <iomarker fontsize="28" x="304" y="160" name="A" orien="R180" />
        <branch name="B">
            <wire x2="320" y1="224" y2="224" x1="304" />
            <wire x2="336" y1="224" y2="224" x1="320" />
        </branch>
        <iomarker fontsize="28" x="304" y="224" name="B" orien="R180" />
        <branch name="C">
            <wire x2="320" y1="288" y2="288" x1="304" />
            <wire x2="336" y1="288" y2="288" x1="320" />
        </branch>
        <iomarker fontsize="28" x="304" y="288" name="C" orien="R180" />
        <branch name="D">
            <wire x2="320" y1="352" y2="352" x1="304" />
            <wire x2="336" y1="352" y2="352" x1="320" />
        </branch>
        <iomarker fontsize="28" x="304" y="352" name="D" orien="R180" />
        <branch name="E">
            <wire x2="320" y1="416" y2="416" x1="304" />
            <wire x2="336" y1="416" y2="416" x1="320" />
        </branch>
        <iomarker fontsize="28" x="304" y="416" name="E" orien="R180" />
        <branch name="F">
            <wire x2="336" y1="480" y2="480" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="480" name="F" orien="R180" />
        <branch name="S">
            <wire x2="624" y1="320" y2="320" x1="592" />
        </branch>
        <iomarker fontsize="28" x="624" y="320" name="S" orien="R0" />
    </sheet>
</drawing>