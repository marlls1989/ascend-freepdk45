
.SUBCKT INCLP1W11OF2X1 A B Q VDD VSS
*.PININFO A:I B:I Q:O VDD:P VSS:G
M_i_1 net_0 B VSS VSS NMOS_VTL W=180n L=50n M=1 AD=0.016200P AS=0.016200P PD=0.360000U PS=0.360000U
M_i_0 Q A net_0 VSS NMOS_VTL W=180n L=50n M=1 AD=0.016200P AS=0.016200P PD=0.360000U PS=0.360000U
M_i_3 Q B VDD VDD PMOS_VTL W=205n L=50n M=1 AD=0.021012P AS=0.021012P PD=0.410000U PS=0.410000U
M_i_2 VDD A Q VDD PMOS_VTL W=205n L=50n M=1 AD=0.021012P AS=0.021012P PD=0.410000U PS=0.410000U
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
