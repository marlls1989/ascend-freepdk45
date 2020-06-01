******************************************************************************
*                                                                            *
*                   Copyright (C) 2004-2020, Silvaco Inc.                    *
*                           All rights reserved.                             *
*                                                                            *
* Silvaco and the Silvaco logo are trademarks of Silvaco Inc.                *
*                                                                            *
* All trademarks, logos, software marks, and trade names (collectively the   *
* "Marks") in this program are proprietary to Silvaco or other respective    *
* owners that have granted Silvaco the right and license to use such Marks.  *
* You are not permitted to use the Marks without the prior written consent   *
* of Silvaco or such third party that may own the Marks.                     *
*                                                                            *
* This file has been provided pursuant to a License Agreement containing     *
* restrictions on its use. This file contains valuable trade secrets and     *
* proprietary information of Silvaco Inc., and is protected by U.S. and      *
* international laws and/or treaties.                                        *
*                                                                            *
* The copyright notice(s) in this file does not indicate actual or intended  *
* publication of this file.                                                  *
*                                                                            *
******************************************************************************

.SUBCKT ACELEM1X4 A M P Q VDD VSS
*.PININFO A:I M:I P:I Q:O VDD:P VSS:G
M_i_0 net_6 M VSS VSS NMOS_VTL W=180n L=50n M=1
M_i_1 VSS A net_6 VSS NMOS_VTL W=180n L=50n M=1
M_i_2 net_6 net_8 net_7 VSS NMOS_VTL W=180n L=50n M=1
M_i_3 net_7 A net_10 VSS NMOS_VTL W=180n L=50n M=1
M_i_4 net_10 P VSS VSS NMOS_VTL W=180n L=50n M=1
M_i_5 net_8 net_7 VSS VSS NMOS_VTL W=155n L=50n M=1
M_i_6 VSS net_7 Q VSS NMOS_VTL W=305n L=50n M=1
M_i_7 VSS net_7 Q VSS NMOS_VTL W=305n L=50n M=1
M_i_8 VDD M net_11 VDD PMOS_VTL W=240n L=50n M=1
M_i_9 net_11 A net_7 VDD PMOS_VTL W=240n L=50n M=1
M_i_10 net_7 net_8 net_9 VDD PMOS_VTL W=240n L=50n M=1
M_i_11 net_9 A VDD VDD PMOS_VTL W=240n L=50n M=1
M_i_12 VDD P net_9 VDD PMOS_VTL W=240n L=50n M=1
M_i_13 net_8 net_7 VDD VDD PMOS_VTL W=215n L=50n M=1
M_i_14 VDD net_7 Q VDD PMOS_VTL W=415n L=50n M=1
M_i_15 VDD net_7 Q VDD PMOS_VTL W=415n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
