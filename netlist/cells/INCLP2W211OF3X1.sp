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

.SUBCKT INCLP2W211OF3X1 A B C Q VDD VSS
*.PININFO A:I B:I C:I Q:O VDD:P VSS:G
MPI0 VDD B pl00 VDD PMOS_VTL W=250n L=50n M=1
MPI1 pl00 C PREQ VDD PMOS_VTL W=250n L=50n M=1
MPI2 VDD A PREQ VDD PMOS_VTL W=250n L=50n M=1
MNI0 NNET C nl00 VSS NMOS_VTL W=205n L=50n M=1
MNI1 nl00 B VSS VSS NMOS_VTL W=205n L=50n M=1
MPH0 PREQ IQ ph00 VDD PMOS_VTL W=250n L=50n M=1
MPH2 ph00 B VDD VDD PMOS_VTL W=250n L=50n M=1
MPH3 ph00 C VDD VDD PMOS_VTL W=250n L=50n M=1
MNH0 nh00 IQ NNET VSS NMOS_VTL W=205n L=50n M=1
MNH1 VSS B nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH2 VSS C nh00 VSS NMOS_VTL W=205n L=50n M=1
MNG0 PREQ A NNET VSS NMOS_VTL W=205n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPO0 VDD IQ Q VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q IQ VSS VSS NMOS_VTL W=155n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
