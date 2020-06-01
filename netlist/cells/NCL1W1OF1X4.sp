
.SUBCKT NCL1W1OF1X4 A Q VDD VSS
*.PININFO A:I Q:O VDD:P VSS:G
MPI0 VDD A PREQ VDD PMOS_VTL W=205n L=50n M=1
MNI0 PREQ A VSS VSS NMOS_VTL W=155n L=50n M=1
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
