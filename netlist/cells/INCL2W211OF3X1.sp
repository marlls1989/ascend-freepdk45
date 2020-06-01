
.SUBCKT INCL2W211OF3X1 A B C Q VDD VSS
*.PININFO A:I B:I C:I Q:O VDD:P VSS:G
MPI0 VDD B pl00 VDD PMOS_VTL W=305n L=50n M=1
MPI1 pl00 C PNET VDD PMOS_VTL W=305n L=50n M=1
MNI0 PREQ C nl00 VSS NMOS_VTL W=180n L=50n M=1
MNI1 nl00 B VSS VSS NMOS_VTL W=180n L=50n M=1
MNI2 PREQ A VSS VSS NMOS_VTL W=180n L=50n M=1
MPH0 PNET IQ ph00 VDD PMOS_VTL W=305n L=50n M=1
MPH2 ph00 B VDD VDD PMOS_VTL W=305n L=50n M=1
MPH3 ph00 C VDD VDD PMOS_VTL W=305n L=50n M=1
MNH0 nh00 IQ PREQ VSS NMOS_VTL W=180n L=50n M=1
MNH1 VSS B nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH2 VSS C nh00 VSS NMOS_VTL W=180n L=50n M=1
MPG0 PNET A PREQ VDD PMOS_VTL W=305n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPO0 VDD IQ Q VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q IQ VSS VSS NMOS_VTL W=155n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
