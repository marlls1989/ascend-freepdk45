
.SUBCKT NCLAO22OF4X4 A B C D Q VDD VSS
*.PININFO A:I B:I C:I D:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=340n L=50n M=1
MPI1 pl00 B pl01 VDD PMOS_VTL W=340n L=50n M=1
MPI2 pl01 C pl02 VDD PMOS_VTL W=340n L=50n M=1
MPI3 pl02 D PREQ VDD PMOS_VTL W=340n L=50n M=1
MNI0 PREQ D nl00 VSS NMOS_VTL W=180n L=50n M=1
MNI1 nl00 C VSS VSS NMOS_VTL W=180n L=50n M=1
MNI2 PREQ B nl01 VSS NMOS_VTL W=180n L=50n M=1
MNI3 nl01 A VSS VSS NMOS_VTL W=180n L=50n M=1
MPH0 VDD IQ ph00 VDD PMOS_VTL W=305n L=50n M=1
MPH1 ph00 A ph01 VDD PMOS_VTL W=305n L=50n M=1
MPH2 ph00 B ph01 VDD PMOS_VTL W=305n L=50n M=1
MPH3 ph01 C PREQ VDD PMOS_VTL W=305n L=50n M=1
MPH4 ph01 D PREQ VDD PMOS_VTL W=305n L=50n M=1
MNH0 nh00 IQ VSS VSS NMOS_VTL W=180n L=50n M=1
MNH1 PREQ A nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH2 PREQ B nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH3 PREQ C nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH4 PREQ D nh00 VSS NMOS_VTL W=180n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=415n L=50n M=1
MPO1 VDD PREQ Q VDD PMOS_VTL W=415n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=305n L=50n M=1
MNO1 Q PREQ VSS VSS NMOS_VTL W=305n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
