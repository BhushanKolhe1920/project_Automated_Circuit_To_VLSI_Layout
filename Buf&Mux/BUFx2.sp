.subckt BUFX2 vdd gnd A Y
M0 vdd A a_2_6# vdd pmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pmos w=1u l=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M2 gnd A a_2_6# gnd nmos w=0.25u l=0.05u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y a_2_6# gnd gnd nmos w=0.5u l=0.05u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX2
