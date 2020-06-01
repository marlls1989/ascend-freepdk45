
.SUBCKT NCL3W111OF3X1 A B C Q VDD VSS
*.PININFO A:I B:I C:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=305n L=50n M=1
MPI1 pl00 B pl01 VDD PMOS_VTL W=305n L=50n M=1
MPI2 pl01 C PREQ VDD PMOS_VTL W=305n L=50n M=1
MNI0 PREQ C nl00 VSS NMOS_VTL W=205n L=50n M=1
MNI1 nl00 B nl01 VSS NMOS_VTL W=205n L=50n M=1
MNI2 nl01 A VSS VSS NMOS_VTL W=205n L=50n M=1
MPH0 VDD IQ ph00 VDD PMOS_VTL W=250n L=50n M=1
MPH1 ph00 A PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH2 ph00 B PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH3 ph00 C PREQ VDD PMOS_VTL W=250n L=50n M=1
MNH0 nh00 IQ VSS VSS NMOS_VTL W=180n L=50n M=1
MNH1 PREQ A nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH2 PREQ B nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH3 PREQ C nh00 VSS NMOS_VTL W=180n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=205n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
