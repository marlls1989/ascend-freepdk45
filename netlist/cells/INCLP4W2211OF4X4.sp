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

.SUBCKT INCLP4W2211OF4X4 A B C D Q VDD VSS
*.PININFO A:I B:I C:I D:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=305n L=50n M=1
MPI1 pl00 B pl03 VDD PMOS_VTL W=305n L=50n M=1
MPI2 VDD C pl01 VDD PMOS_VTL W=305n L=50n M=1
MPI3 pl01 D pl03 VDD PMOS_VTL W=305n L=50n M=1
MPI4 pl03 A PREQ VDD PMOS_VTL W=305n L=50n M=1
MPI5 pl03 B PREQ VDD PMOS_VTL W=305n L=50n M=1
MNI0 PREQ D nl00 VSS NMOS_VTL W=180n L=50n M=1
MNI1 nl00 C nl01 VSS NMOS_VTL W=180n L=50n M=1
MNI2 nl01 B nl02 VSS NMOS_VTL W=180n L=50n M=1
MNI3 nl02 A VSS VSS NMOS_VTL W=180n L=50n M=1
MPH0 PREQ IQ ph00 VDD PMOS_VTL W=250n L=50n M=1
MPH1 ph00 A VDD VDD PMOS_VTL W=250n L=50n M=1
MPH2 ph00 B VDD VDD PMOS_VTL W=250n L=50n M=1
MPH3 ph00 C VDD VDD PMOS_VTL W=250n L=50n M=1
MPH4 ph00 D VDD VDD PMOS_VTL W=250n L=50n M=1
MNH0 nh00 IQ PREQ VSS NMOS_VTL W=205n L=50n M=1
MNH1 nh01 A nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH2 VSS B nh01 VSS NMOS_VTL W=205n L=50n M=1
MNH3 VSS C nh02 VSS NMOS_VTL W=205n L=50n M=1
MNH4 VSS D nh02 VSS NMOS_VTL W=205n L=50n M=1
MNH5 nh02 A nh00 VSS NMOS_VTL W=205n L=50n M=1
MNH6 nh02 B nh00 VSS NMOS_VTL W=205n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPO0 VDD IQ Q VDD PMOS_VTL W=415n L=50n M=1
MPO1 VDD IQ Q VDD PMOS_VTL W=415n L=50n M=1
MNO0 Q IQ VSS VSS NMOS_VTL W=305n L=50n M=1
MNO1 Q IQ VSS VSS NMOS_VTL W=305n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
