
.SUBCKT NCLP2W11OF2X2 A B Q VDD VSS
*.PININFO A:I B:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=250n L=50n M=1
MPI1 pl00 B PREQ VDD PMOS_VTL W=250n L=50n M=1
MNI0 PREQ B nl00 VSS NMOS_VTL W=180n L=50n M=1
MNI1 nl00 A VSS VSS NMOS_VTL W=180n L=50n M=1
MPH0 PREQ IQ ph00 VDD PMOS_VTL W=250n L=50n M=1
MPH1 ph00 A VDD VDD PMOS_VTL W=250n L=50n M=1
MPH2 ph00 B VDD VDD PMOS_VTL W=250n L=50n M=1
MNH0 nh00 IQ PREQ VSS NMOS_VTL W=180n L=50n M=1
MNH1 VSS A nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH2 VSS B nh00 VSS NMOS_VTL W=180n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=305n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=415n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
