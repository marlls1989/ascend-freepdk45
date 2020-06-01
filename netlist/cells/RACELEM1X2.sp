
.SUBCKT RACELEM1X2 A M P RN Q VDD VSS
*.PININFO A:I M:I P:I RN:I Q:O VDD:P VSS:G
MPI0 VDD RN PREQ VDD PMOS_VTL W=250n L=50n M=1
MPI1 VDD P pl00 VDD PMOS_VTL W=250n L=50n M=1
MPI2 pl00 A PREQ VDD PMOS_VTL W=250n L=50n M=1
MNI0 VSS M nl00 VSS NMOS_VTL W=205n L=50n M=1
MNI1 nl00 A NNET VSS NMOS_VTL W=205n L=50n M=1
MNG0 NNET RN PREQ VSS NMOS_VTL W=205n L=50n M=1
MPH0 NNET IQ ph00 VDD PMOS_VTL W=250n L=50n M=1
MPH2 ph00 M VDD VDD PMOS_VTL W=250n L=50n M=1
MPH3 ph00 A VDD VDD PMOS_VTL W=250n L=50n M=1
MNH0 nh00 IQ NNET VSS NMOS_VTL W=205n L=50n M=1
MNH2 VSS P nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH3 VSS A nh00 VSS NMOS_VTL W=205n L=50n M=1
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
