
.SUBCKT INCL1W11OF2X4 A B Q VDD VSS
*.PININFO A:I B:I Q:O VDD:P VSS:G
M_i_0 Q B VSS VSS NMOS_VTL W=305n L=50n M=1 AD=0.012013P AS=0.012013P PD=0.310000U PS=0.310000U
M_i_1 Q B VSS VSS NMOS_VTL W=305n L=50n M=1 AD=0.012013P AS=0.012013P PD=0.310000U PS=0.310000U
M_i_2 VSS A Q VSS NMOS_VTL W=305n L=50n M=1 AD=0.012013P AS=0.012013P PD=0.310000U PS=0.310000U
M_i_3 VSS A Q VSS NMOS_VTL W=305n L=50n M=1 AD=0.012013P AS=0.012013P PD=0.310000U PS=0.310000U
M_i_4 net_0 B VDD VDD PMOS_VTL W=500n L=50n M=1 AD=0.031250P AS=0.031250P PD=0.500000U PS=0.500000U
M_i_5 net_1 B VDD VDD PMOS_VTL W=500n L=50n M=1 AD=0.031250P AS=0.031250P PD=0.500000U PS=0.500000U
M_i_6 Q A net_0 VDD PMOS_VTL W=500n L=50n M=1 AD=0.031250P AS=0.031250P PD=0.500000U PS=0.500000U
M_i_7 Q A net_1 VDD PMOS_VTL W=500n L=50n M=1 AD=0.031250P AS=0.031250P PD=0.500000U PS=0.500000U
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
