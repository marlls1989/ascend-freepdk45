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

.SUBCKT INCL1W111OF3X1 A B C Q VDD VSS
*.PININFO A:I B:I C:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=305n L=50n M=1
MPI1 pl00 B pl01 VDD PMOS_VTL W=305n L=50n M=1
MPI2 pl01 C Q VDD PMOS_VTL W=305n L=50n M=1
MNI0 Q A VSS VSS NMOS_VTL W=115n L=50n M=1
MNI1 Q B VSS VSS NMOS_VTL W=115n L=50n M=1
MNI2 Q C VSS VSS NMOS_VTL W=115n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
