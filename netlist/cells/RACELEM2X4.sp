
.SUBCKT RACELEM2X4 A M1 M2 P1 P2 RN Q VDD VSS
*.PININFO A:I M1:I M2:I P1:I P2:I RN:I Q:O VDD:P VSS:G
MPI0 VDD RN PREQ VDD PMOS_VTL W=340n L=50n M=1
MPI1 VDD P1 pl00 VDD PMOS_VTL W=340n L=50n M=1
MPI2 pl00 P2 pl01 VDD PMOS_VTL W=340n L=50n M=1
MPI3 pl01 A PREQ VDD PMOS_VTL W=340n L=50n M=1
MNI0 VSS M1 nl00 VSS NMOS_VTL W=235n L=50n M=1
MNI1 nl00 M2 nl01 VSS NMOS_VTL W=235n L=50n M=1
MNI2 nl01 A nl02 VSS NMOS_VTL W=235n L=50n M=1
MNI3 nl02 RN PREQ VSS NMOS_VTL W=235n L=50n M=1
MPH0 VDD IQ ph00 VDD PMOS_VTL W=250n L=50n M=1
MPH1 ph00 RN PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH2 ph00 M1 PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH3 ph00 M2 PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH4 ph00 A PREQ VDD PMOS_VTL W=250n L=50n M=1
MNH0 nh00 IQ VSS VSS NMOS_VTL W=205n L=50n M=1
MNH1 nh01 RN nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH2 PREQ P1 nh01 VSS NMOS_VTL W=205n L=50n M=1
MNH3 PREQ P2 nh01 VSS NMOS_VTL W=205n L=50n M=1
MNH4 PREQ A nh01 VSS NMOS_VTL W=205n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=415n L=50n M=1
MNO1 Q PREQ VSS VSS NMOS_VTL W=415n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=305n L=50n M=1
MPO1 VDD PREQ Q VDD PMOS_VTL W=305n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
