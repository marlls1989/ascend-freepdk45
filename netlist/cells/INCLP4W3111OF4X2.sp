
.SUBCKT INCLP4W3111OF4X2 A B C D Q VDD VSS
*.PININFO A:I B:I C:I D:I Q:O VDD:P VSS:G
MPI0 VDD A pl00 VDD PMOS_VTL W=250n L=50n M=1
MPI1 pl00 B PREQ VDD PMOS_VTL W=250n L=50n M=1
MPI2 pl00 C PREQ VDD PMOS_VTL W=250n L=50n M=1
MPI3 pl00 D PREQ VDD PMOS_VTL W=250n L=50n M=1
MNI0 PREQ D nl00 VSS NMOS_VTL W=235n L=50n M=1
MNI1 nl00 C nl01 VSS NMOS_VTL W=235n L=50n M=1
MNI2 nl01 B nl02 VSS NMOS_VTL W=235n L=50n M=1
MNI3 nl02 A VSS VSS NMOS_VTL W=235n L=50n M=1
MPH0 VDD IQ ph00 VDD PMOS_VTL W=250n L=50n M=1
MPH1 ph00 A PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH2 ph00 B PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH3 ph00 C PREQ VDD PMOS_VTL W=250n L=50n M=1
MPH4 ph00 D PREQ VDD PMOS_VTL W=250n L=50n M=1
MNH0 nh00 IQ VSS VSS NMOS_VTL W=235n L=50n M=1
MNH1 PREQ A nh00 VSS NMOS_VTL W=235n L=50n M=1
MNH2 PREQ D nh01 VSS NMOS_VTL W=235n L=50n M=1
MNH3 nh01 C nh02 VSS NMOS_VTL W=235n L=50n M=1
MNH4 nh02 B nh00 VSS NMOS_VTL W=235n L=50n M=1
MPB0 VDD PREQ IQ VDD PMOS_VTL W=205n L=50n M=1
MNB0 IQ PREQ VSS VSS NMOS_VTL W=155n L=50n M=1
MPO0 VDD IQ Q VDD PMOS_VTL W=415n L=50n M=1
MNO0 Q IQ VSS VSS NMOS_VTL W=305n L=50n M=1
.ENDS
******************************************************************************
*                                                                            *
* End of file.                                                               *
*                                                                            *
******************************************************************************
