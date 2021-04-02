# ASCEnD-FreePDK45
A free standard cell library for SDDS-NCL circuits

// ASCEnD: Asynchronous Standard Cells Enabling n-Designs <br>
// Library name: ascend-freepdk45 <br>
// Authors: <br>
//    Marcos Luiggi Lemos Sartori <br>
//    Matheus Trevisan Moreira <br>
//    Ney Laert Vilar Calazans <br>
// Contact: ney.calazans@pucrs.br, marcos.sartori@acad.pucrs.br or gaph@googlegroups.com <br>

This is a distribution for the ASCEnD-freePDK45 library, developed over the North Carolina State University (NCSU) open source predictive Process Design Kit (PDK) FreePDK 45nm (bulk CMOS). The library supports the design of asynchronous circuits. ASCEnD stands for "Asynchronous Standard Cells for 'n' Designs". The asynchronous design templates supported by the library are from the quasi-delay insensitive (QDI) class, all based on the Null Convention Logic (NCL) paradigm. On top of this paradigm, the library developers propose, besides conventional NCL gates, an additional set of gates with behavior dual to NCL, the NCL+ (or NCLP) gates [8]. The library contains NCL gates as well as NCL+ gates and inverted versions of both these gate types (INCL and INCLP).

ASCEnD-freePDK45 was designed as a stand-alone cell library. Although using the same PDK as the Silvaco 45nm Open Cell Library (previously called Nangate Open Cell Library, available at https://www.silvaco.com/products/nangate/FreePDK45_Open_Cell_Library/) these libraries are not compatible. We found the original Open Cell Library characteristics to be quite limiting to the overall quality of cells and decided it was not worth to keep compatibility with it, given the implied cost.

The ASCEnD-freePDK45 library contains a total of 159 cells: 38 NCL gates, 37 NCL+ gates (NCLP), inverted versions of each of these gates (34 INCL cells and 33 INCLP cells), totalizing 142 cells. The remaining 17 cells comprise 12 gates with Set and/or Reset control pins (for implementing NCL registers), 3 asymmetric C-elements and a Pull-up and a Pull-down cells. Most cells employ a Sutherland transistor topology. Most cell types are available in 3 drive strengths: X1, X2 and X4. The exact number of drives is cell-type dependent.

This release of ASCEnD-freePDK45 is distributed in seven folders:
.<br>
|-- doc<br>
|-- gds<br>
|-- lef<br>
|-- lib<br>
|-- netlist<br>
|-- oa<br>
|-- verilog<br>

The folder ./doc contains the datasheet for every cell in the library, in html format (Note that in the current library release the area field of the cells is not valid, all of these fields are zeroed). The ./gds folder contains all cell layouts. The ./lef folder provides the cell abstract views (pin locations and metal layers blocks). The ./lib folder furnishes the cell characterization data in a machine readable format (.lib). The ./netlist folder contains the cell transistor schematics as Spice descriptions, including transistor sizing data. The ./oa folder contains layout information in the open access format. Finally, the ./verilog folder contains the behavioral cell description.

The library ASCEnD-freePDK45 comes with characterization data for three corners: NOM (Nominal 1.10V, 25C), SS (Slow-Slow 0.95V, 125C) and FF (Fast-Fast 1.25V, 0C). Separate .lib and .html files are accordingly available for each of the corners.

ATTENTION: The ASCEnD-freePDK45 is originally an internal development of the GAPH research group to support our SDDS-NCL logic template [7], derived from NCL but essentially distinct from the latter. As such, we employ the concept of virtual functions [4,5] that enable using conventional synthesis tools to generate and optimize NCL circuits (see e.g. our SDDS-NCL page at https://corfu.pucrs.br/tikiwiki/tiki-index.php?page=SDDS-NCL). Besides, the design of sequential SDDS-NCL circuits requires the use of special characterization procedures and models [3,2,1]. As a consequence, pure NCL design with our cells, although possible, may require a re-characterization of the library. Please contact us to find out how to conduct this process. Another consequence is that some data from our library may have to be overlooked during pure NCL design, such as the dummy clock pin G, present in the datasheet of cells used to build registers [3,2]. These pins do not physically exist, but are used during circuit modeling and synthesis.

It is necessary to point out here to the way the behavior of sequential gates (most of the library gates fall in this category) is described in characterization and datasheets. Due to the threshold with hysteresis behavior of most NCL/NCLP gates, three Boolean functions are necessary to fully describe their operation:
  - The ON-set, a function that is '1' when the gate is expected to force '1' in its output, and is '0' otherwise.
  - The OFF-set, a function that is '1' when the gate is expected to force '0' in its output, and is '0' otherwise.
  - The HOLD-set, a function that is '1' when the gate is expected to keep its output unchanged and is '0' otherwise.

Traditional design tools (e.g. those from Cadence or Synopsys frameworks) manipulate gate behaviors based on a single Boolean function. Given this, and considering the threshold with hysteresis behavior of NCL/NCLP gates, the ASCEnD-freePDK45 characterization data provides a single Boolean function to represent the "activation function" of the gate, merging the three functions in specific ways, as explained in references [1] to [7] below.

For those interested in using the full spectrum of the ASCEnD-freePDK45 library, we have a companion project of this, the Pulsar tool available at https://github.com/marlls1989/pulsar. Pulsar is a push-button synthesis tool that accepts a SystemVerilog or VHDL description and can output the layout of an SDDS-NCL circuit implemented with ASCEnD-freePDK45.

Information about the NCL+ gates, particular templates based on NCL, NCL+ and mixes of these can be found in several of the ASCEnD-freePDK45 authors' publications. A selected list about ASCEnD libraries and about newly proposed asynchronous QDI design templates appear below.

## ACKNOWLEDGEMENTS
The development of the ASCEnD-freePDK45 library was enabled through the use of several professional tools. These were obtained through agreements in the scope of cooperation projects as well as engagement in Institutional University Programs. In these contexts we acknowledge the support of Silvaco Inc., Cadence Inc., Synopsys Inc. and Mentor Graphics (now a Siemens company).

## REFERENCES
[1] - SARTORI, M. L. L.; MOREIRA, M. T.; CALAZANS, N. L. V. A Frontend using Traditional EDA Tools for the Pulsar QDI Design Flow. In: 26th IEEE International Symposium on Asynchronous Circuits and Systems (ASYNC'20), Snowbird, 2020. pp. 3-10. Avalable at: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9179357.

[2] - SARTORI, M. L. L. PULSAR: Towards a Synthesis flow for QDI Circuits. MSc Dissertation, PPGCC-FACIN-PUCRS, Porto Alegre, Brazil. August 2019. (Research Advisor: Ney Laert Vilar Calazans). Available at: https://www.inf.pucrs.br/~calazans/publications/2019_MarcosSartori_MScDiss.pdf.

[3] - SARTORI, M. L. L.; WUERDIG, R. N.; MOREIRA, M. T.; CALAZANS, N. L. V. Pulsar: Constraining QDI Circuits Cycle Time Using Traditional EDA Tools. In: 25th IEEE International Symposium on Asynchronous Circuits and Systems (ASYNC'19), Hirosaki, 2019. pp. 114-123. (Best Paper Award Nominee). Available at: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8850667.

[4] - MOREIRA, M. T.; BEEREL, P. A.; SARTORI, M. L. L.; CALAZANS, N. L. V. NCL Synthesis with Conventional EDA Tools: Technology Mapping and Optimization. IEEE Transactions on Circuits and Systems I - Regular Papers, 65(6), June 2018, pp. 1981-1993. Available at: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8241815.

[5] - MOREIRA, Matheus Trevisan. Asynchronous Circuits: Innovations in Components, Cell Libraries and Design Templates. PhD Thesis, PPGCC - FACIN - PUCRS, Porto Alegre, Brazil. January 2016. 276p. Scholarship Sponsor: CNPq (PNM). (Presented and  Approved. Research Advisor: Ney Laert Vilar Calazans, Co-Advisor: Peter Beerel, University of Southern California). Available at: http://tede2.pucrs.br/tede2/bitstream/tede/5174/1/439051.pdf.

[6] - GUAZZELLI, R. ; MORAES, F. G. ; CALAZANS, N. L. V. ; MOREIRA, M. T. SDDS-NCL Design: Analysis of Supply Voltage Scaling. In: 28th Symposium on Integrated Circuits and Systems Design (SBCCI´15), Salvador, BA, 2015. pp. 2-8. Available at: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=7460285.

[7] - MOREIRA, M. T.; TROJAN, G.; MORAES, F. G.; CALAZANS, N. L. V. Spatially Distributed Dual-Spacer Null Convention Logic Design. Journal of Low Power Electronics (Print), 10(3), pp. 313-320, September 2014. Available at: https://www.ingentaconnect.com/contentone/asp/jolpe/2014/00000010/00000003/art00002.

[8] - MOREIRA, M. T.; MENEZES, C. H.; PORTO, R. C.; CALAZANS, N. L. V. NCL+: Return-to-One Null Convention Logic. In: IEEE International Midwest Symposium on Circuits and Systems (MWSCAS´13), Columbus, OH, 2013. pp. 836-839. Available at: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6674779.

[9] - MOREIRA, M. T., Calazans, N.L.V. Design of Standard-Cell Libraries for Asynchronous Circuits with the ASCEnD Flow. In: IEEE Computer Society Annual Symposium on VLSI (ISVLSI´13), Natal, RN, 2013. 2p. PhD Forum Best Paper Award. Available at: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6654647.

[10] - MOREIRA, M. T., GUAZZELLI, R., CALAZANS, N. L. V. Return-to-One Protocol for Reducing Static Power in QDI Circuits Employing m-of-n Codes. In: 25th Symposium on Integrated Circuit and Systems Design (SBCCI´12), Brasília, DF, 2012. 6p. Available at: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6344444.

[11] - MOREIRA, M. T., OLIVEIRA, B. S., PONTES, J. J. H., CALAZANS, N. L. V. A 65nm Standard Cell Set and Flow Dedicated to Automated Asynchronous Circuits Design. In: 24th IEEE International SoC Conference (SoCC'11), Taipei, Taiwan, 2011, pp. 99-104. Available at: https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6085103.
