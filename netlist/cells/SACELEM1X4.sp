
.SUBCKT SACELEM1X4 A M P S Q VDD VSS
*.PININFO A:I M:I P:I S:I Q:O VDD:P VSS:G
MPI0 VDD P pl00 VDD PMOS_VTL W=305n L=50n M=1
MPI1 pl00 A PNET VDD PMOS_VTL W=305n L=50n M=1
MPG0 PNET S PREQ VDD PMOS_VTL W=305n L=50n M=1
MNI0 VSS M nl00 VSS NMOS_VTL W=180n L=50n M=1
MNI1 nl00 A PREQ VSS NMOS_VTL W=180n L=50n M=1
MNI2 VSS S PREQ VSS NMOS_VTL W=180n L=50n M=1
MPH0 PNET IQ ph00 VDD PMOS_VTL W=305n L=50n M=1
MPH2 ph00 M VDD VDD PMOS_VTL W=305n L=50n M=1
MPH3 ph00 A VDD VDD PMOS_VTL W=305n L=50n M=1
MNH0 nh00 IQ PREQ VSS NMOS_VTL W=180n L=50n M=1
MNH2 VSS P nh00 VSS NMOS_VTL W=180n L=50n M=1
MNH3 VSS A nh00 VSS NMOS_VTL W=180n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=305n L=50n M=1
MNO1 Q PREQ VSS VSS NMOS_VTL W=305n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=415n L=50n M=1
MPO1 VDD PREQ Q VDD PMOS_VTL W=415n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
