
.SUBCKT INCL1W1111OF4X1 A B C D Q VDD VSS
*.PININFO A:I B:I C:I D:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=340n L=50n M=1
MPI1 pl00 B pl01 VDD PMOS_VTL W=340n L=50n M=1
MPI2 pl01 C pl02 VDD PMOS_VTL W=340n L=50n M=1
MPI3 pl02 D Q VDD PMOS_VTL W=340n L=50n M=1
MNI0 Q A VSS VSS NMOS_VTL W=180n L=50n M=1
MNI1 Q B VSS VSS NMOS_VTL W=180n L=50n M=1
MNI2 Q C VSS VSS NMOS_VTL W=180n L=50n M=1
MNI3 Q D VSS VSS NMOS_VTL W=180n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
