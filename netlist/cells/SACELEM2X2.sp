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

.SUBCKT SACELEM2X2 A M1 M2 P1 P2 S Q VDD VSS
*.PININFO A:I M1:I M2:I P1:I P2:I S:I Q:O VDD:P VSS:G
MPI0 VDD S pl00 VDD PMOS_VTL W=340n L=50n M=1
MPI1 pl00 P1 pl01 VDD PMOS_VTL W=340n L=50n M=1
MPI2 pl01 P2 pl02 VDD PMOS_VTL W=340n L=50n M=1
MPI3 pl02 A PREQ VDD PMOS_VTL W=340n L=50n M=1
MNI0 VSS M1 nl00 VSS NMOS_VTL W=235n L=50n M=1
MNI1 nl00 M2 nl01 VSS NMOS_VTL W=235n L=50n M=1
MNI2 nl01 A PREQ VSS NMOS_VTL W=235n L=50n M=1
MNI3 VSS S PREQ VSS NMOS_VTL W=235n L=50n M=1
MPH0 VDD IQ ph00 VDD PMOS_VTL W=250n L=50n M=1
MPH1 ph00 S ph01 VDD PMOS_VTL W=250n L=50n M=1
MPH2 ph01 M1 PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH3 ph01 M2 PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH4 ph01 A PREQ VDD PMOS_VTL W=250n L=50n M=1
MNH0 nh00 IQ VSS VSS NMOS_VTL W=205n L=50n M=1
MNH1 PREQ S nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH2 PREQ P1 nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH3 PREQ P2 nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH4 PREQ A nh00 VSS NMOS_VTL W=205n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNO0 Q PREQ VSS VSS NMOS_VTL W=415n L=50n M=1
MPO0 VDD PREQ Q VDD PMOS_VTL W=305n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
