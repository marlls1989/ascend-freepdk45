
.SUBCKT ACELEM1X2 A M P Q VDD VSS
*.PININFO A:I M:I P:I Q:O VDD:P VSS:G
M_i_0 net_6 M VSS VSS NMOS_VTL W=180n L=50n M=1
M_i_1 VSS A net_6 VSS NMOS_VTL W=180n L=50n M=1
M_i_2 net_6 net_8 net_7 VSS NMOS_VTL W=180n L=50n M=1
M_i_3 net_7 A net_10 VSS NMOS_VTL W=180n L=50n M=1
M_i_4 net_10 P VSS VSS NMOS_VTL W=180n L=50n M=1
M_i_5 net_8 net_7 VSS VSS NMOS_VTL W=155n L=50n M=1
M_i_6 VSS net_7 Q VSS NMOS_VTL W=305n L=50n M=1
M_i_7 VDD M net_11 VDD PMOS_VTL W=240n L=50n M=1
M_i_8 net_11 A net_7 VDD PMOS_VTL W=240n L=50n M=1
M_i_9 net_7 net_8 net_9 VDD PMOS_VTL W=240n L=50n M=1
M_i_10 net_9 A VDD VDD PMOS_VTL W=240n L=50n M=1
M_i_11 VDD P net_9 VDD PMOS_VTL W=240n L=50n M=1
M_i_12 net_8 net_7 VDD VDD PMOS_VTL W=215n L=50n M=1
M_i_13 VDD net_7 Q VDD PMOS_VTL W=415n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
