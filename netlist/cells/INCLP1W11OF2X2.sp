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

.SUBCKT INCLP1W11OF2X2 A B Q VDD VSS
*.PININFO A:I B:I Q:O VDD:P VSS:G
M_i_1 net_0 B VSS VSS NMOS_VTL W=360n L=50n M=1 AD=0.064800P AS=0.064800P PD=0.720000U PS=0.720000U
M_i_0 Q A net_0 VSS NMOS_VTL W=360n L=50n M=1 AD=0.064800P AS=0.064800P PD=0.720000U PS=0.720000U
M_i_3 Q B VDD VDD PMOS_VTL W=415n L=50n M=1 AD=0.086113P AS=0.086113P PD=0.830000U PS=0.830000U
M_i_2 VDD A Q VDD PMOS_VTL W=415n L=50n M=1 AD=0.086113P AS=0.086113P PD=0.830000U PS=0.830000U
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
