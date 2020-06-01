
.SUBCKT SRNCL2W11OF2X1 A B RN S Q VDD VSS
*.PININFO A:I B:I RN:I S:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=305n L=50n M=1
MPI1 pl00 B PNET VDD PMOS_VTL W=305n L=50n M=1
MPI2 VDD RN PNET VDD PMOS_VTL W=305n L=50n M=1
MNI0 NNET B nl00 VSS NMOS_VTL W=205n L=50n M=1
MNI1 nl00 A VSS VSS NMOS_VTL W=205n L=50n M=1
MNI2 PREQ S VSS VSS NMOS_VTL W=205n L=50n M=1
MPH0 PNET IQ ph00 VDD PMOS_VTL W=305n L=50n M=1
MPH2 ph00 A VDD VDD PMOS_VTL W=305n L=50n M=1
MPH3 ph00 B VDD VDD PMOS_VTL W=305n L=50n M=1
MNH0 nh00 IQ NNET VSS NMOS_VTL W=205n L=50n M=1
MNH1 VSS A nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH2 VSS B nh00 VSS NMOS_VTL W=205n L=50n M=1
MPG0 PNET S PREQ VDD PMOS_VTL W=305n L=50n M=1
MNG0 PREQ RN NNET VSS NMOS_VTL W=205n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
