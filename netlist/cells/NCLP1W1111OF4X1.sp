
.SUBCKT NCLP1W1111OF4X1 A B C D Q VDD VSS
*.PININFO A:I B:I C:I D:I Q:O VDD:P VSS:G
MPI0 PREQ A VDD VDD PMOS_VTL W=250n L=50n M=1
MPI1 PREQ B VDD VDD PMOS_VTL W=250n L=50n M=1
MPI2 PREQ C VDD VDD PMOS_VTL W=250n L=50n M=1
MPI3 PREQ D VDD VDD PMOS_VTL W=250n L=50n M=1
MNI0 PREQ D nl00 VSS NMOS_VTL W=235n L=50n M=1
MNI1 nl00 C nl01 VSS NMOS_VTL W=235n L=50n M=1
MNI2 nl01 B nl02 VSS NMOS_VTL W=235n L=50n M=1
MNI3 nl02 A VSS VSS NMOS_VTL W=235n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
