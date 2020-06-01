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

.SUBCKT INCL1W11OF2X1 A B Q VDD VSS
*.PININFO A:I B:I Q:O VDD:P VSS:G
M_i_1 Q B VSS VSS NMOS_VTL W=155n L=50n M=1 AD=0.012013P AS=0.012013P PD=0.310000U PS=0.310000U
M_i_0 VSS A Q VSS NMOS_VTL W=155n L=50n M=1 AD=0.012013P AS=0.012013P PD=0.310000U PS=0.310000U
M_i_3 net_0 B VDD VDD PMOS_VTL W=250n L=50n M=1 AD=0.031250P AS=0.031250P PD=0.500000U PS=0.500000U
M_i_2 Q A net_0 VDD PMOS_VTL W=250n L=50n M=1 AD=0.031250P AS=0.031250P PD=0.500000U PS=0.500000U
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
