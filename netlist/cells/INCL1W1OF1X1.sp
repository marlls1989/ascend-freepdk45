
.SUBCKT INCL1W1OF1X1 A Q VDD VSS
*.PININFO A:I Q:O VDD:P VSS:G
MPO0 VDD A Q VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q A VSS VSS NMOS_VTL W=155n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
