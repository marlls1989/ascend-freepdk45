
.SUBCKT NCL1W111OF3X1 A B C Q VDD VSS
*.PININFO A:I B:I C:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=305n L=50n M=1
MPI1 pl00 B pl01 VDD PMOS_VTL W=305n L=50n M=1
MPI2 pl01 C PREQ VDD PMOS_VTL W=305n L=50n M=1
MNI0 PREQ A VSS VSS NMOS_VTL W=115n L=50n M=1
MNI1 PREQ B VSS VSS NMOS_VTL W=115n L=50n M=1
MNI2 PREQ C VSS VSS NMOS_VTL W=115n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
