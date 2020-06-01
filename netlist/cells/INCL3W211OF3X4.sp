
.SUBCKT INCL3W211OF3X4 A B C Q VDD VSS
*.PININFO A:I B:I C:I Q:O VDD:P VSS:G
MPI0 VDD C pl00 VDD PMOS_VTL W=305n L=50n M=1
MPI1 pl00 B pl01 VDD PMOS_VTL W=305n L=50n M=1
MPI2 pl01 A PREQ VDD PMOS_VTL W=305n L=50n M=1
MNI0 PREQ A nl00 VSS NMOS_VTL W=180n L=50n M=1
MNI1 nl00 B VSS VSS NMOS_VTL W=180n L=50n M=1
MNI2 nl00 C VSS VSS NMOS_VTL W=180n L=50n M=1
MPH0 PREQ IQ ph00 VDD PMOS_VTL W=305n L=50n M=1
MPH1 ph00 A VDD VDD PMOS_VTL W=305n L=50n M=1
MPH2 ph00 B ph01 VDD PMOS_VTL W=305n L=50n M=1
MPH3 ph01 C VDD VDD PMOS_VTL W=305n L=50n M=1
MNH0 nh00 IQ PREQ VSS NMOS_VTL W=180n L=50n M=1
MNH1 VSS A nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH2 VSS B nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH3 VSS C nh00 VSS NMOS_VTL W=180n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q IQ VSS VSS NMOS_VTL W=305n L=50n M=1
MNO1 Q IQ VSS VSS NMOS_VTL W=305n L=50n M=1
MPO0 VDD IQ Q VDD PMOS_VTL W=415n L=50n M=1
MPO1 VDD IQ Q VDD PMOS_VTL W=415n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
