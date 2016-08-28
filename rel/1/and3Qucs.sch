<Qucs Schematic 0.0.18>
<Properties>
  <View=-100,-80,800,1465,1,0,0>
  <Grid=10,10,1>
  <DataSet=and3Qucs.dat>
  <DataDisplay=and3Qucs.dpl>
  <OpenDisplay=1>
  <Script=and3Qucs.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <AND AND2 1 310 180 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "old" 0>
  <AND AND1 1 190 80 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "old" 0>
  <DigiSource A 1 90 40 -35 16 0 0 "1" 1 "low" 0 "10ns; 10ns" 0 "5 V" 0>
  <DigiSource B 1 90 110 -35 16 0 0 "2" 1 "low" 0 "20ns; 20ns" 0 "5 V" 0>
  <DigiSource C 1 90 190 -35 16 0 0 "3" 1 "low" 0 "40ns; 40ns" 0 "5 V" 0>
  <.Digi And3QucsSimulation 1 470 -10 0 71 0 0 "TruthTable" 1 "10 ns" 0 "VHDL" 0>
</Components>
<Wires>
  <90 190 280 190 "" 0 0 0 "">
  <90 40 160 40 "" 0 0 0 "">
  <160 40 160 70 "" 0 0 0 "">
  <90 110 160 110 "" 0 0 0 "">
  <160 90 160 110 "" 0 0 0 "">
  <220 170 280 170 "" 0 0 0 "">
  <220 80 220 170 "" 0 0 0 "">
  <340 180 340 180 "Output" 370 150 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
