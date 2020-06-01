
.SUBCKT INCLP1W11OF2X4 A B Q VDD VSS
*.PININFO A:I B:I Q:O VDD:P VSS:G
M_i_0 net_0 B VSS VSS NMOS_VTL W=360n L=50n M=1 AD=0.064800P AS=0.064800P PD=0.720000U PS=0.720000U
M_i_1 net_1 B VSS VSS NMOS_VTL W=360n L=50n M=1 AD=0.064800P AS=0.064800P PD=0.720000U PS=0.720000U
M_i_2 Q A net_0 VSS NMOS_VTL W=360n L=50n M=1 AD=0.064800P AS=0.064800P PD=0.720000U PS=0.720000U
M_i_3 Q A net_1 VSS NMOS_VTL W=360n L=50n M=1 AD=0.064800P AS=0.064800P PD=0.720000U PS=0.720000U
M_i_4 Q B VDD VDD PMOS_VTL W=415n L=50n M=1 AD=0.086113P AS=0.086113P PD=0.830000U PS=0.830000U
M_i_5 Q B VDD VDD PMOS_VTL W=415n L=50n M=1 AD=0.086113P AS=0.086113P PD=0.830000U PS=0.830000U
M_i_6 VDD A Q VDD PMOS_VTL W=415n L=50n M=1 AD=0.086113P AS=0.086113P PD=0.830000U PS=0.830000U
M_i_7 VDD A Q VDD PMOS_VTL W=415n L=50n M=1 AD=0.086113P AS=0.086113P PD=0.830000U PS=0.830000U
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
