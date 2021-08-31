// Verilog for library ASCEND_FREEPDK45 created by Liberate dev on Sat Aug 15 16:16:58 -03 2020 for SDF version both
///////////////////////////////////////////////////////////////////////////////
//    ___     ____   ____   ______        _____
//   / _ \   /  __\ /  __\ /  ___/_ __   /  _  \
//  / /_\ \  \  \  /  /   /  /_  / '_ \ /  / / /
// /   _   \__\  \|  /___/  /__ / / / //  /_/ /
// \__/ \__/\____/|_____/_____//_/ /_//______/
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
// Asynchronous Standard Cells Enabling n-Designs
// Library name: ASCEND_FREEPDK45
// Behavioral module definitions generated using genLiberateTemplate
// Authors:
// Marcos Luiggi Lemos Sartori
// Matheus Trevisan Moreira
// Ney Laert Vilar Calazans
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

primitive ACELEM1_Q(Q, A, M, P);
output Q;
input  A, M, P;
reg    Q;
table
	0 0 ? : ? : 0;
	0 1 ? : ? : -;
	1 ? 0 : ? : -;
	1 ? 1 : ? : 1;
	? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module ACELEM1X1(Q, A, M, P);
output Q;
input  A, M, P;

	// Section written by Liberate dev
	wire delayed_A, delayed_M, delayed_P;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, M__bar, P__bar;


	// Additional timing gates
	and (adacond1, M, P);
	not (P__bar, P);
	not (M__bar, M);
	and (adacond0, M__bar, P__bar);
	not (A__bar, A);
	and (adacond2, A__bar, P);
	and (adacond3, A__bar, P__bar);
	and (adacond4, A, M);
	and (adacond5, A, M__bar);

	specify
		if (~M & P)
			(negedge A => (Q+:1'b0)) = 0;
		if (~M & ~P)
			(negedge A => (Q+:1'b0)) = 0;
		ifnone (negedge A => (Q+:1'b0)) = 0;
		if (M & P)
			(posedge A => (Q+:1'b1)) = 0;
		if (~M & P)
			(posedge A => (Q+:1'b1)) = 0;
		ifnone (posedge A => (Q+:1'b1)) = 0;
		if (~A & P)
			(negedge M => (Q+:1'b0)) = 0;
		if (~A & ~P)
			(negedge M => (Q+:1'b0)) = 0;
		ifnone (negedge M => (Q+:1'b0)) = 0;
		if (A & M)
			(posedge P => (Q+:1'b1)) = 0;
		if (A & ~M)
			(posedge P => (Q+:1'b1)) = 0;
		ifnone (posedge P => (Q+:1'b1)) = 0;
		$setuphold (posedge M &&& P, negedge A &&& P, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M &&& ~P, negedge A &&& ~P, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M, negedge A, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (negedge P &&& M, posedge A &&& M, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P &&& ~M, posedge A &&& ~M, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P, posedge A, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (posedge A &&& ~P, negedge M &&& ~P, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (posedge A, negedge M, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (negedge A &&& M, posedge P &&& M, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A, posedge P, 0, 0, notifier,,, delayed_A, delayed_P);
		$width (posedge A &&& adacond1, 0, 0, notifier);
		$width (negedge A &&& adacond0, 0, 0, notifier);
		$width (negedge M &&& adacond2, 0, 0, notifier);
		$width (negedge M &&& adacond3, 0, 0, notifier);
		$width (posedge P &&& adacond4, 0, 0, notifier);
		$width (posedge P &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

ACELEM1_Q u_ACELEM1_Q (Q, A, M, P);
endmodule
`endcelldefine

`celldefine
module ACELEM1X2(Q, A, M, P);
output Q;
input  A, M, P;

	// Section written by Liberate dev
	wire delayed_A, delayed_M, delayed_P;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, M__bar, P__bar;


	// Additional timing gates
	and (adacond1, M, P);
	not (P__bar, P);
	not (M__bar, M);
	and (adacond0, M__bar, P__bar);
	not (A__bar, A);
	and (adacond2, A__bar, P);
	and (adacond3, A__bar, P__bar);
	and (adacond4, A, M);
	and (adacond5, A, M__bar);

	specify
		if (~M & P)
			(negedge A => (Q+:1'b0)) = 0;
		if (~M & ~P)
			(negedge A => (Q+:1'b0)) = 0;
		ifnone (negedge A => (Q+:1'b0)) = 0;
		if (M & P)
			(posedge A => (Q+:1'b1)) = 0;
		if (~M & P)
			(posedge A => (Q+:1'b1)) = 0;
		ifnone (posedge A => (Q+:1'b1)) = 0;
		if (~A & P)
			(negedge M => (Q+:1'b0)) = 0;
		if (~A & ~P)
			(negedge M => (Q+:1'b0)) = 0;
		ifnone (negedge M => (Q+:1'b0)) = 0;
		if (A & M)
			(posedge P => (Q+:1'b1)) = 0;
		if (A & ~M)
			(posedge P => (Q+:1'b1)) = 0;
		ifnone (posedge P => (Q+:1'b1)) = 0;
		$setuphold (posedge M &&& P, negedge A &&& P, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M &&& ~P, negedge A &&& ~P, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M, negedge A, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (negedge P &&& M, posedge A &&& M, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P &&& ~M, posedge A &&& ~M, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P, posedge A, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (posedge A &&& ~P, negedge M &&& ~P, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (posedge A, negedge M, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (negedge A &&& M, posedge P &&& M, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A, posedge P, 0, 0, notifier,,, delayed_A, delayed_P);
		$width (posedge A &&& adacond1, 0, 0, notifier);
		$width (negedge A &&& adacond0, 0, 0, notifier);
		$width (negedge M &&& adacond2, 0, 0, notifier);
		$width (negedge M &&& adacond3, 0, 0, notifier);
		$width (posedge P &&& adacond4, 0, 0, notifier);
		$width (posedge P &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

ACELEM1_Q u_ACELEM1_Q (Q, A, M, P);
endmodule
`endcelldefine

`celldefine
module ACELEM1X4(Q, A, M, P);
output Q;
input  A, M, P;

	// Section written by Liberate dev
	wire delayed_A, delayed_M, delayed_P;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, M__bar, P__bar;


	// Additional timing gates
	and (adacond1, M, P);
	not (P__bar, P);
	not (M__bar, M);
	and (adacond0, M__bar, P__bar);
	not (A__bar, A);
	and (adacond2, A__bar, P);
	and (adacond3, A__bar, P__bar);
	and (adacond4, A, M);
	and (adacond5, A, M__bar);

	specify
		if (~M & P)
			(negedge A => (Q+:1'b0)) = 0;
		if (~M & ~P)
			(negedge A => (Q+:1'b0)) = 0;
		ifnone (negedge A => (Q+:1'b0)) = 0;
		if (M & P)
			(posedge A => (Q+:1'b1)) = 0;
		if (~M & P)
			(posedge A => (Q+:1'b1)) = 0;
		ifnone (posedge A => (Q+:1'b1)) = 0;
		if (~A & P)
			(negedge M => (Q+:1'b0)) = 0;
		if (~A & ~P)
			(negedge M => (Q+:1'b0)) = 0;
		ifnone (negedge M => (Q+:1'b0)) = 0;
		if (A & M)
			(posedge P => (Q+:1'b1)) = 0;
		if (A & ~M)
			(posedge P => (Q+:1'b1)) = 0;
		ifnone (posedge P => (Q+:1'b1)) = 0;
		$setuphold (posedge M &&& P, negedge A &&& P, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M &&& ~P, negedge A &&& ~P, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M, negedge A, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (negedge P &&& M, posedge A &&& M, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P &&& ~M, posedge A &&& ~M, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P, posedge A, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (posedge A &&& ~P, negedge M &&& ~P, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (posedge A, negedge M, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (negedge A &&& M, posedge P &&& M, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A, posedge P, 0, 0, notifier,,, delayed_A, delayed_P);
		$width (posedge A &&& adacond1, 0, 0, notifier);
		$width (negedge A &&& adacond0, 0, 0, notifier);
		$width (negedge M &&& adacond2, 0, 0, notifier);
		$width (negedge M &&& adacond3, 0, 0, notifier);
		$width (posedge P &&& adacond4, 0, 0, notifier);
		$width (posedge P &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

ACELEM1_Q u_ACELEM1_Q (Q, A, M, P);
endmodule
`endcelldefine

primitive INCL1W1111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 1;
	1 ? ? ? : ? : 0;
	? 1 ? ? : ? : 0;
	? ? 1 ? : ? : 0;
	? ? ? 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL1W1111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL1W1111OF4_Q u_INCL1W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive INCL1W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 1;
	1 ? ? : ? : 0;
	? 1 ? : ? : 0;
	? ? 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL1W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL1W111OF3_Q u_INCL1W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive INCL1W11OF2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 0 : ? : 1;
	1 ? : ? : 0;
	? 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL1W11OF2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL1W11OF2_Q u_INCL1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module INCL1W11OF2X2(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL1W11OF2_Q u_INCL1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module INCL1W11OF2X4(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL1W11OF2_Q u_INCL1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

primitive INCL1W1OF1_Q(Q, A);
output Q;
input  A;
reg    Q;
table
	0 : ? : 1;
	1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL1W1OF1X1(Q, A);
output Q;
input  A;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL1W1OF1_Q u_INCL1W1OF1_Q (Q, A);
endmodule
`endcelldefine

`celldefine
module INCL1W1OF1X2(Q, A);
output Q;
input  A;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL1W1OF1_Q u_INCL1W1OF1_Q (Q, A);
endmodule
`endcelldefine

`celldefine
module INCL1W1OF1X4(Q, A);
output Q;
input  A;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL1W1OF1_Q u_INCL1W1OF1_Q (Q, A);
endmodule
`endcelldefine
primitive INCL2W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 1;
	0 0 1 : ? : -;
	0 1 0 : ? : -;
	1 0 0 : ? : -;
	1 1 ? : ? : 0;
	1 ? 1 : ? : 0;
	? 1 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL2W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
endspecify
INCL2W111OF3_Q u_INCL2W111OF3_Q (Q, A, B, C);
endmodule

primitive INCL2W11OF2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 0 : ? : 1;
	0 1 : ? : -;
	1 0 : ? : -;
	1 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL2W11OF2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL2W11OF2_Q u_INCL2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module INCL2W11OF2X2(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL2W11OF2_Q u_INCL2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module INCL2W11OF2X4(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL2W11OF2_Q u_INCL2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

primitive INCL2W211OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 1;
	0 0 1 : ? : -;
	0 1 0 : ? : -;
	1 ? ? : ? : 0;
	? 1 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL2W211OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL2W211OF3_Q u_INCL2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCL2W211OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL2W211OF3_Q u_INCL2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCL2W211OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL2W211OF3_Q u_INCL2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive INCL3W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 1;
	0 1 ? : ? : -;
	0 ? 1 : ? : -;
	1 0 ? : ? : -;
	1 1 1 : ? : 0;
	1 ? 0 : ? : -;
	? 0 1 : ? : -;
	? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module INCL3W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W111OF3_Q u_INCL3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCL3W111OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W111OF3_Q u_INCL3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCL3W111OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W111OF3_Q u_INCL3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive INCL3W211OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 1;
	0 1 ? : ? : -;
	0 ? 1 : ? : -;
	1 0 0 : ? : -;
	1 1 ? : ? : 0;
	1 ? 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL3W211OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W211OF3_Q u_INCL3W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCL3W211OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W211OF3_Q u_INCL3W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCL3W211OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W211OF3_Q u_INCL3W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive INCL3W3111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 1;
	0 0 1 ? : ? : -;
	0 0 ? 1 : ? : -;
	0 1 0 ? : ? : -;
	0 1 ? 0 : ? : -;
	0 ? 0 1 : ? : -;
	0 ? 1 0 : ? : -;
	1 ? ? ? : ? : 0;
	? 1 1 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCL3W3111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W3111OF4_Q u_INCL3W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module INCL3W3111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W3111OF4_Q u_INCL3W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module INCL3W3111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q-:1'b0)) = 0.01;
		if (~B & ~C & ~D)
			(posedge A => (Q-:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL3W3111OF4_Q u_INCL3W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive INCL4W1111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 1;
	0 1 ? ? : ? : -;
	0 ? 1 ? : ? : -;
	0 ? ? 1 : ? : -;
	1 0 ? ? : ? : -;
	1 1 1 1 : ? : 0;
	1 ? 0 ? : ? : -;
	1 ? ? 0 : ? : -;
	? 0 1 ? : ? : -;
	? 0 ? 1 : ? : -;
	? 1 0 ? : ? : -;
	? 1 ? 0 : ? : -;
	? ? 0 1 : ? : -;
	? ? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module INCL4W1111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL4W1111OF4_Q u_INCL4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module INCL4W1111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL4W1111OF4_Q u_INCL4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module INCL4W1111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCL4W1111OF4_Q u_INCL4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine
primitive INCLAO22OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 1;
	0 1 0 ? : ? : -;
	0 1 ? 0 : ? : -;
	0 ? 0 1 : ? : -;
	0 ? 1 0 : ? : -;
	1 0 0 ? : ? : -;
	1 0 ? 0 : ? : -;
	1 1 ? ? : ? : 0;
	? 0 0 1 : ? : -;
	? 0 1 0 : ? : -;
	? ? 1 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCLAO22OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
	(D => Q) = (0.1, 0.1);
endspecify
INCLAO22OF4_Q u_INCLAO22OF4_Q (Q, A, B, C, D);
endmodule
primitive INCLOA22OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 1;
	0 0 1 ? : ? : -;
	0 0 ? 1 : ? : -;
	1 ? 0 0 : ? : -;
	1 ? 1 ? : ? : 0;
	1 ? ? 1 : ? : 0;
	? 1 0 0 : ? : -;
	? 1 1 ? : ? : 0;
	? 1 ? 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCLOA22OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
	(D => Q) = (0.1, 0.1);
endspecify
INCLOA22OF4_Q u_INCLOA22OF4_Q (Q, A, B, C, D);
endmodule

primitive INCLP1W1111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 ? ? ? : ? : 1;
	1 1 1 1 : ? : 0;
	? 0 ? ? : ? : 1;
	? ? 0 ? : ? : 1;
	? ? ? 0 : ? : 1;
endtable
endprimitive

`celldefine
module INCLP1W1111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP1W1111OF4_Q u_INCLP1W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive INCLP1W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 ? ? : ? : 1;
	1 1 1 : ? : 0;
	? 0 ? : ? : 1;
	? ? 0 : ? : 1;
endtable
endprimitive

`celldefine
module INCLP1W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP1W111OF3_Q u_INCLP1W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive INCLP1W11OF2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 ? : ? : 1;
	1 1 : ? : 0;
	? 0 : ? : 1;
endtable
endprimitive

`celldefine
module INCLP1W11OF2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP1W11OF2_Q u_INCLP1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module INCLP1W11OF2X2(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP1W11OF2_Q u_INCLP1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module INCLP1W11OF2X4(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP1W11OF2_Q u_INCLP1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine
primitive INCLP2W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 ? : ? : 1;
	0 1 1 : ? : -;
	0 ? 0 : ? : 1;
	1 0 1 : ? : -;
	1 1 0 : ? : -;
	1 1 1 : ? : 0;
	? 0 0 : ? : 1;
endtable
endprimitive

`celldefine
module INCLP2W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
endspecify
INCLP2W111OF3_Q u_INCLP2W111OF3_Q (Q, A, B, C);
endmodule

primitive INCLP2W11OF2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 0 : ? : 1;
	0 1 : ? : -;
	1 0 : ? : -;
	1 1 : ? : 0;
endtable
endprimitive

`celldefine
module INCLP2W11OF2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP2W11OF2_Q u_INCLP2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module INCLP2W11OF2X2(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP2W11OF2_Q u_INCLP2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module INCLP2W11OF2X4(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP2W11OF2_Q u_INCLP2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

primitive INCLP2W211OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 ? ? : ? : 1;
	1 0 1 : ? : -;
	1 1 0 : ? : -;
	1 1 1 : ? : 0;
	? 0 0 : ? : 1;
endtable
endprimitive

`celldefine
module INCLP2W211OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(negedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP2W211OF3_Q u_INCLP2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCLP2W211OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(negedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP2W211OF3_Q u_INCLP2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCLP2W211OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(negedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP2W211OF3_Q u_INCLP2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive INCLP3W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 1;
	0 1 ? : ? : -;
	0 ? 1 : ? : -;
	1 0 ? : ? : -;
	1 1 1 : ? : 0;
	1 ? 0 : ? : -;
	? 0 1 : ? : -;
	? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module INCLP3W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP3W111OF3_Q u_INCLP3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCLP3W111OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP3W111OF3_Q u_INCLP3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module INCLP3W111OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP3W111OF3_Q u_INCLP3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine
primitive INCLP3W211OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 ? : ? : 1;
	0 1 1 : ? : -;
	0 ? 0 : ? : 1;
	1 0 ? : ? : -;
	1 1 1 : ? : 0;
	1 ? 0 : ? : -;
endtable
endprimitive

`celldefine
module INCLP3W211OF3X1(Q, A, B, C);
output Q;
input  A, B, C;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
endspecify
INCLP3W211OF3_Q u_INCLP3W211OF3_Q (Q, A, B, C);
endmodule

primitive INCLP4W1111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 1;
	0 1 ? ? : ? : -;
	0 ? 1 ? : ? : -;
	0 ? ? 1 : ? : -;
	1 0 ? ? : ? : -;
	1 1 1 1 : ? : 0;
	1 ? 0 ? : ? : -;
	1 ? ? 0 : ? : -;
	? 0 1 ? : ? : -;
	? 0 ? 1 : ? : -;
	? 1 0 ? : ? : -;
	? 1 ? 0 : ? : -;
	? ? 0 1 : ? : -;
	? ? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module INCLP4W1111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP4W1111OF4_Q u_INCLP4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module INCLP4W1111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP4W1111OF4_Q u_INCLP4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module INCLP4W1111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP4W1111OF4_Q u_INCLP4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive INCLP4W3111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 ? ? : ? : 1;
	0 1 1 1 : ? : -;
	0 ? 0 ? : ? : 1;
	0 ? ? 0 : ? : 1;
	1 0 ? ? : ? : -;
	1 1 1 1 : ? : 0;
	1 ? 0 ? : ? : -;
	1 ? ? 0 : ? : -;
endtable
endprimitive

`celldefine
module INCLP4W3111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP4W3111OF4_Q u_INCLP4W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module INCLP4W3111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP4W3111OF4_Q u_INCLP4W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module INCLP4W3111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & ~D)
			(negedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

INCLP4W3111OF4_Q u_INCLP4W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine
primitive INCLPAO22OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 ? ? : ? : 1;
	0 1 1 ? : ? : -;
	0 1 ? 1 : ? : -;
	1 0 1 ? : ? : -;
	1 0 ? 1 : ? : -;
	1 1 1 1 : ? : 0;
	1 ? 0 1 : ? : -;
	1 ? 1 0 : ? : -;
	? 1 0 1 : ? : -;
	? 1 1 0 : ? : -;
	? ? 0 0 : ? : 1;
endtable
endprimitive

`celldefine
module INCLPAO22OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
	(D => Q) = (0.1, 0.1);
endspecify
INCLPAO22OF4_Q u_INCLPAO22OF4_Q (Q, A, B, C, D);
endmodule
primitive INCLPOA22OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 ? 0 ? : ? : 1;
	0 ? 1 1 : ? : -;
	0 ? ? 0 : ? : 1;
	1 1 0 ? : ? : -;
	1 1 1 1 : ? : 0;
	1 1 ? 0 : ? : -;
	? 0 0 ? : ? : 1;
	? 0 1 1 : ? : -;
	? 0 ? 0 : ? : 1;
endtable
endprimitive

`celldefine
module INCLPOA22OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
	(D => Q) = (0.1, 0.1);
endspecify
INCLPOA22OF4_Q u_INCLPOA22OF4_Q (Q, A, B, C, D);
endmodule

primitive MUT_X(X, A, Y);
output X;
input  A, Y;
reg    X;
table
	0 ? : ? : 0;
	1 0 : ? : 1;
	? 1 : ? : 0;
endtable
endprimitive

primitive MUT_Y(Y, B, X);
output Y;
input  B, X;
reg    Y;
table
	0 ? : ? : 0;
	1 0 : ? : 1;
	? 1 : ? : 0;
endtable
endprimitive

`celldefine
module MUTX1(X, Y, A, B);
output X, Y;
input  A, B;
reg X, Y;

	// Section written by Liberate dev
	specify
		ifnone (A => X) = 0.01;
		if (B)
			(negedge A => (X+:1'b0)) = 0.01;
		if (~B)
			(negedge A => (X+:1'b0)) = 0.01;
		ifnone (negedge B => (X+:1'b1)) = 0.01;
		ifnone (negedge A => (Y+:1'b1)) = 0.01;
		ifnone (B => Y) = 0.01;
		if (A)
			(negedge B => (Y+:1'b0)) = 0.01;
		if (~A)
			(negedge B => (Y+:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

  always @(A or B)
    case ({A,B})
      2'b00: begin
        X <= 0;
        Y <= 0;
      end
      2'b01: begin
        X <= 0;
        Y <= 1;
      end
      2'b10: begin
        X <= 1;
        Y <= 0;
      end
      2'b11: if (!X && !Y) begin
        if($urandom%2)
          X <= 1;
        else
          Y <= 1;
      end
    endcase

endmodule
`endcelldefine

`celldefine
module MUTX2(X, Y, A, B);
output X, Y;
input  A, B;
reg X, Y;

	// Section written by Liberate dev
	specify
		ifnone (A => X) = 0.01;
		if (B)
			(negedge A => (X+:1'b0)) = 0.01;
		if (~B)
			(negedge A => (X+:1'b0)) = 0.01;
		ifnone (negedge B => (X+:1'b1)) = 0.01;
		ifnone (negedge A => (Y+:1'b1)) = 0.01;
		ifnone (B => Y) = 0.01;
		if (A)
			(negedge B => (Y+:1'b0)) = 0.01;
		if (~A)
			(negedge B => (Y+:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

  always @(A or B)
    case ({A,B})
      2'b00: begin
        X <= 0;
        Y <= 0;
      end
      2'b01: begin
        X <= 0;
        Y <= 1;
      end
      2'b10: begin
        X <= 1;
        Y <= 0;
      end
      2'b11: if (!X && !Y) begin
        if($urandom%2)
          X <= 1;
        else
          Y <= 1;
      end
    endcase
endmodule
`endcelldefine

primitive NCL1W1111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 0;
	1 ? ? ? : ? : 1;
	? 1 ? ? : ? : 1;
	? ? 1 ? : ? : 1;
	? ? ? 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL1W1111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W1111OF4_Q u_NCL1W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCL1W1111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W1111OF4_Q u_NCL1W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCL1W1111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W1111OF4_Q u_NCL1W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCL1W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 0;
	1 ? ? : ? : 1;
	? 1 ? : ? : 1;
	? ? 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL1W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W111OF3_Q u_NCL1W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCL1W111OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W111OF3_Q u_NCL1W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCL1W111OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W111OF3_Q u_NCL1W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive NCL1W11OF2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 0 : ? : 0;
	1 ? : ? : 1;
	? 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL1W11OF2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W11OF2_Q u_NCL1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module NCL1W11OF2X2(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W11OF2_Q u_NCL1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module NCL1W11OF2X4(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W11OF2_Q u_NCL1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

primitive NCL1W1OF1_Q(Q, A);
output Q;
input  A;
reg    Q;
table
	0 : ? : 0;
	1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL1W1OF1X1(Q, A);
output Q;
input  A;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W1OF1_Q u_NCL1W1OF1_Q (Q, A);
endmodule
`endcelldefine

`celldefine
module NCL1W1OF1X2(Q, A);
output Q;
input  A;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W1OF1_Q u_NCL1W1OF1_Q (Q, A);
endmodule
`endcelldefine

`celldefine
module NCL1W1OF1X4(Q, A);
output Q;
input  A;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL1W1OF1_Q u_NCL1W1OF1_Q (Q, A);
endmodule
`endcelldefine
primitive NCL2W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 0;
	0 0 1 : ? : -;
	0 1 0 : ? : -;
	1 0 0 : ? : -;
	1 1 ? : ? : 1;
	1 ? 1 : ? : 1;
	? 1 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL2W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
endspecify
NCL2W111OF3_Q u_NCL2W111OF3_Q (Q, A, B, C);
endmodule

primitive NCL2W11OF2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 0 : ? : 0;
	0 1 : ? : -;
	1 0 : ? : -;
	1 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL2W11OF2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL2W11OF2_Q u_NCL2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module NCL2W11OF2X2(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL2W11OF2_Q u_NCL2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module NCL2W11OF2X4(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL2W11OF2_Q u_NCL2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

primitive NCL2W211OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 0;
	0 0 1 : ? : -;
	0 1 0 : ? : -;
	1 ? ? : ? : 1;
	? 1 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL2W211OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL2W211OF3_Q u_NCL2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCL2W211OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL2W211OF3_Q u_NCL2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCL2W211OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL2W211OF3_Q u_NCL2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive NCL3W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 0;
	0 1 ? : ? : -;
	0 ? 1 : ? : -;
	1 0 ? : ? : -;
	1 1 1 : ? : 1;
	1 ? 0 : ? : -;
	? 0 1 : ? : -;
	? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module NCL3W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W111OF3_Q u_NCL3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCL3W111OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W111OF3_Q u_NCL3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCL3W111OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W111OF3_Q u_NCL3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive NCL3W211OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 0;
	0 1 ? : ? : -;
	0 ? 1 : ? : -;
	1 0 0 : ? : -;
	1 1 ? : ? : 1;
	1 ? 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL3W211OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W211OF3_Q u_NCL3W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCL3W211OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W211OF3_Q u_NCL3W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCL3W211OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W211OF3_Q u_NCL3W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive NCL3W3111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 0;
	0 0 1 ? : ? : -;
	0 0 ? 1 : ? : -;
	0 1 0 ? : ? : -;
	0 1 ? 0 : ? : -;
	0 ? 0 1 : ? : -;
	0 ? 1 0 : ? : -;
	1 ? ? ? : ? : 1;
	? 1 1 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCL3W3111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W3111OF4_Q u_NCL3W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCL3W3111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W3111OF4_Q u_NCL3W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCL3W3111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL3W3111OF4_Q u_NCL3W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCL4W1111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 0;
	0 1 ? ? : ? : -;
	0 ? 1 ? : ? : -;
	0 ? ? 1 : ? : -;
	1 0 ? ? : ? : -;
	1 1 1 1 : ? : 1;
	1 ? 0 ? : ? : -;
	1 ? ? 0 : ? : -;
	? 0 1 ? : ? : -;
	? 0 ? 1 : ? : -;
	? 1 0 ? : ? : -;
	? 1 ? 0 : ? : -;
	? ? 0 1 : ? : -;
	? ? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module NCL4W1111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL4W1111OF4_Q u_NCL4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCL4W1111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL4W1111OF4_Q u_NCL4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCL4W1111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCL4W1111OF4_Q u_NCL4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCLAO22OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 0;
	0 1 0 ? : ? : -;
	0 1 ? 0 : ? : -;
	0 ? 0 1 : ? : -;
	0 ? 1 0 : ? : -;
	1 0 0 ? : ? : -;
	1 0 ? 0 : ? : -;
	1 1 ? ? : ? : 1;
	? 0 0 1 : ? : -;
	? 0 1 0 : ? : -;
	? ? 1 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCLAO22OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (A & C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (A & ~C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (A & ~C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & ~B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & ~B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & ~B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & ~B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLAO22OF4_Q u_NCLAO22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLAO22OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (A & C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (A & ~C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (A & ~C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & ~B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & ~B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & ~B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & ~B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLAO22OF4_Q u_NCLAO22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLAO22OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (B & ~C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (A & C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (A & ~C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (A & ~C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & ~B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & ~B & D)
			(posedge C => (Q+:1'b1)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & ~B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & ~B & C)
			(posedge D => (Q+:1'b1)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLAO22OF4_Q u_NCLAO22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCLOA22OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 0;
	0 0 1 ? : ? : -;
	0 0 ? 1 : ? : -;
	1 ? 0 0 : ? : -;
	1 ? 1 ? : ? : 1;
	1 ? ? 1 : ? : 1;
	? 1 0 0 : ? : -;
	? 1 1 ? : ? : 1;
	? 1 ? 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCLOA22OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (~B & C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (~A & C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (~A & C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (~A & ~C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (A & ~B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (A & ~B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLOA22OF4_Q u_NCLOA22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLOA22OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (~B & C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (~A & C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (~A & C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (~A & ~C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (A & ~B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (A & ~B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLOA22OF4_Q u_NCLOA22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLOA22OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (~B & C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & C & ~D)
			(posedge A => (Q+:1'b1)) = 0.01;
		if (~B & ~C & D)
			(posedge A => (Q+:1'b1)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (~A & C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (~A & C & ~D)
			(posedge B => (Q+:1'b1)) = 0.01;
		if (~A & ~C & D)
			(posedge B => (Q+:1'b1)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (A & ~B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		if (~A & B & ~D)
			(posedge C => (Q+:1'b1)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (A & ~B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
		if (~A & B & ~C)
			(posedge D => (Q+:1'b1)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLOA22OF4_Q u_NCLOA22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCLP1W1111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 ? ? ? : ? : 0;
	1 1 1 1 : ? : 1;
	? 0 ? ? : ? : 0;
	? ? 0 ? : ? : 0;
	? ? ? 0 : ? : 0;
endtable
endprimitive

`celldefine
module NCLP1W1111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W1111OF4_Q u_NCLP1W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLP1W1111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W1111OF4_Q u_NCLP1W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLP1W1111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W1111OF4_Q u_NCLP1W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCLP1W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 ? ? : ? : 0;
	1 1 1 : ? : 1;
	? 0 ? : ? : 0;
	? ? 0 : ? : 0;
endtable
endprimitive

`celldefine
module NCLP1W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W111OF3_Q u_NCLP1W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCLP1W111OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W111OF3_Q u_NCLP1W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCLP1W111OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W111OF3_Q u_NCLP1W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive NCLP1W11OF2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 ? : ? : 0;
	1 1 : ? : 1;
	? 0 : ? : 0;
endtable
endprimitive

`celldefine
module NCLP1W11OF2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W11OF2_Q u_NCLP1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module NCLP1W11OF2X2(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W11OF2_Q u_NCLP1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module NCLP1W11OF2X4(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP1W11OF2_Q u_NCLP1W11OF2_Q (Q, A, B);
endmodule
`endcelldefine
primitive NCLP2W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 ? : ? : 0;
	0 1 1 : ? : -;
	0 ? 0 : ? : 0;
	1 0 1 : ? : -;
	1 1 0 : ? : -;
	1 1 1 : ? : 1;
	? 0 0 : ? : 0;
endtable
endprimitive

`celldefine
module NCLP2W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
endspecify
NCLP2W111OF3_Q u_NCLP2W111OF3_Q (Q, A, B, C);
endmodule

primitive NCLP2W11OF2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 0 : ? : 0;
	0 1 : ? : -;
	1 0 : ? : -;
	1 1 : ? : 1;
endtable
endprimitive

`celldefine
module NCLP2W11OF2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP2W11OF2_Q u_NCLP2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module NCLP2W11OF2X2(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP2W11OF2_Q u_NCLP2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

`celldefine
module NCLP2W11OF2X4(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP2W11OF2_Q u_NCLP2W11OF2_Q (Q, A, B);
endmodule
`endcelldefine

primitive NCLP2W211OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 ? ? : ? : 0;
	1 0 1 : ? : -;
	1 1 0 : ? : -;
	1 1 1 : ? : 1;
	? 0 0 : ? : 0;
endtable
endprimitive

`celldefine
module NCLP2W211OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C)
			(negedge A => (Q+:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP2W211OF3_Q u_NCLP2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCLP2W211OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C)
			(negedge A => (Q+:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP2W211OF3_Q u_NCLP2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCLP2W211OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C)
			(negedge A => (Q+:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP2W211OF3_Q u_NCLP2W211OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

primitive NCLP3W111OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 0 : ? : 0;
	0 1 ? : ? : -;
	0 ? 1 : ? : -;
	1 0 ? : ? : -;
	1 1 1 : ? : 1;
	1 ? 0 : ? : -;
	? 0 1 : ? : -;
	? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module NCLP3W111OF3X1(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP3W111OF3_Q u_NCLP3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCLP3W111OF3X2(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP3W111OF3_Q u_NCLP3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine

`celldefine
module NCLP3W111OF3X4(Q, A, B, C);
output Q;
input  A, B, C;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP3W111OF3_Q u_NCLP3W111OF3_Q (Q, A, B, C);
endmodule
`endcelldefine
primitive NCLP3W211OF3_Q(Q, A, B, C);
output Q;
input  A, B, C;
reg    Q;
table
	0 0 ? : ? : 0;
	0 1 1 : ? : -;
	0 ? 0 : ? : 0;
	1 0 ? : ? : -;
	1 1 1 : ? : 1;
	1 ? 0 : ? : -;
endtable
endprimitive

`celldefine
module NCLP3W211OF3X1(Q, A, B, C);
output Q;
input  A, B, C;
specify
	(A => Q) = (0.1, 0.1);
	(B => Q) = (0.1, 0.1);
	(C => Q) = (0.1, 0.1);
endspecify
NCLP3W211OF3_Q u_NCLP3W211OF3_Q (Q, A, B, C);
endmodule

primitive NCLP4W1111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 0 0 : ? : 0;
	0 1 ? ? : ? : -;
	0 ? 1 ? : ? : -;
	0 ? ? 1 : ? : -;
	1 0 ? ? : ? : -;
	1 1 1 1 : ? : 1;
	1 ? 0 ? : ? : -;
	1 ? ? 0 : ? : -;
	? 0 1 ? : ? : -;
	? 0 ? 1 : ? : -;
	? 1 0 ? : ? : -;
	? 1 ? 0 : ? : -;
	? ? 0 1 : ? : -;
	? ? 1 0 : ? : -;
endtable
endprimitive

`celldefine
module NCLP4W1111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP4W1111OF4_Q u_NCLP4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLP4W1111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP4W1111OF4_Q u_NCLP4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLP4W1111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		(A => Q) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP4W1111OF4_Q u_NCLP4W1111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCLP4W3111OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 ? ? : ? : 0;
	0 1 1 1 : ? : -;
	0 ? 0 ? : ? : 0;
	0 ? ? 0 : ? : 0;
	1 0 ? ? : ? : -;
	1 1 1 1 : ? : 1;
	1 ? 0 ? : ? : -;
	1 ? ? 0 : ? : -;
endtable
endprimitive

`celldefine
module NCLP4W3111OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP4W3111OF4_Q u_NCLP4W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLP4W3111OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP4W3111OF4_Q u_NCLP4W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLP4W3111OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		(B => Q) = 0.01;
		(C => Q) = 0.01;
		(D => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLP4W3111OF4_Q u_NCLP4W3111OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCLPAO22OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 0 ? ? : ? : 0;
	0 1 1 ? : ? : -;
	0 1 ? 1 : ? : -;
	1 0 1 ? : ? : -;
	1 0 ? 1 : ? : -;
	1 1 1 1 : ? : 1;
	1 ? 0 1 : ? : -;
	1 ? 1 0 : ? : -;
	? 1 0 1 : ? : -;
	? 1 1 0 : ? : -;
	? ? 0 0 : ? : 0;
endtable
endprimitive

`celldefine
module NCLPAO22OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (~A & C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (~A & C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (~A & ~C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (A & ~B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (A & ~B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLPAO22OF4_Q u_NCLPAO22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLPAO22OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (~A & C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (~A & C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (~A & ~C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (A & ~B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (A & ~B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLPAO22OF4_Q u_NCLPAO22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLPAO22OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (~B & C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (~B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (~A & C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (~A & C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (~A & ~C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (A & ~B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & B & ~D)
			(negedge C => (Q+:1'b0)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (A & ~B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & B & ~C)
			(negedge D => (Q+:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLPAO22OF4_Q u_NCLPAO22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

primitive NCLPOA22OF4_Q(Q, A, B, C, D);
output Q;
input  A, B, C, D;
reg    Q;
table
	0 ? 0 ? : ? : 0;
	0 ? 1 1 : ? : -;
	0 ? ? 0 : ? : 0;
	1 1 0 ? : ? : -;
	1 1 1 1 : ? : 1;
	1 1 ? 0 : ? : -;
	? 0 0 ? : ? : 0;
	? 0 1 1 : ? : -;
	? 0 ? 0 : ? : 0;
endtable
endprimitive

`celldefine
module NCLPOA22OF4X1(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (A & C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (A & ~C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (A & ~C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & ~B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & ~B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & ~B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & ~B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLPOA22OF4_Q u_NCLPOA22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLPOA22OF4X2(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (A & C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (A & ~C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (A & ~C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & ~B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & ~B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & ~B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & ~B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLPOA22OF4_Q u_NCLPOA22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module NCLPOA22OF4X4(Q, A, B, C, D);
output Q;
input  A, B, C, D;

	// Section written by Liberate dev
	specify
		ifnone (A => Q) = 0.01;
		if (B & C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & D)
			(negedge A => (Q+:1'b0)) = 0.01;
		if (B & ~C & ~D)
			(negedge A => (Q+:1'b0)) = 0.01;
		ifnone (B => Q) = 0.01;
		if (A & C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (A & ~C & D)
			(negedge B => (Q+:1'b0)) = 0.01;
		if (A & ~C & ~D)
			(negedge B => (Q+:1'b0)) = 0.01;
		ifnone (C => Q) = 0.01;
		if (A & ~B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		if (~A & ~B & D)
			(negedge C => (Q+:1'b0)) = 0.01;
		ifnone (D => Q) = 0.01;
		if (A & ~B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
		if (~A & ~B & C)
			(negedge D => (Q+:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

NCLPOA22OF4_Q u_NCLPOA22OF4_Q (Q, A, B, C, D);
endmodule
`endcelldefine

`celldefine
module PULLDOWN(Q);
output Q;

	// Section written by Liberate dev
	specify
	endspecify
	// End Section written by Liberate dev

assign Q = 1'b0;
endmodule
`endcelldefine

`celldefine
module PULLUP(Q);
output Q;

	// Section written by Liberate dev
	specify
	endspecify
	// End Section written by Liberate dev

assign Q = 1'b1;
endmodule
`endcelldefine

primitive RACELEM1_Q(Q, A, M, P, RN);
output Q;
input  A, M, P, RN;
reg    Q;
table
	0 0 ? ? : ? : 0;
	0 1 ? 1 : ? : -;
	1 ? 0 1 : ? : -;
	1 ? 1 1 : ? : 1;
	? 1 0 1 : ? : -;
	? ? ? 0 : ? : 0;
endtable
endprimitive

`celldefine
module RACELEM1X1(Q, A, M, P, RN);
output Q;
input  A, M, P, RN;

	// Section written by Liberate dev
	wire delayed_A, delayed_M, delayed_P, delayed_RN;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, adacond6, adacond7;
	wire adacond8, adacond9, adacond10;
	wire adacond11, adacond12, adacond13;
	wire adacond14, adacond15, adacond16;
	wire M__bar, P__bar;


	// Additional timing gates
	and (adacond5, M, P, RN);
	not (P__bar, P);
	not (M__bar, M);
	and (adacond4, M__bar, P__bar, RN);
	and (adacond0, P, RN);
	and (adacond1, P__bar, RN);
	and (adacond2, M, RN);
	and (adacond3, M__bar, RN);
	not (A__bar, A);
	and (adacond6, A__bar, P, RN);
	and (adacond7, A__bar, P__bar, RN);
	and (adacond8, A, M, RN);
	and (adacond9, A, M__bar, RN);
	and (adacond10, M, P);
	and (adacond11, A, M);
	and (adacond12, A, M__bar);
	and (adacond13, A, M, P__bar);
	and (adacond14, A, M__bar, P__bar);
	and (adacond15, A__bar, M, P);
	and (adacond16, A__bar, M, P__bar);

	specify
		if (~M & P & RN)
			(negedge A => (Q+:1'b0)) = 0;
		if (~M & ~P & RN)
			(negedge A => (Q+:1'b0)) = 0;
		ifnone (negedge A => (Q+:1'b0)) = 0;
		if (M & P & RN)
			(posedge A => (Q+:1'b1)) = 0;
		if (~M & P & RN)
			(posedge A => (Q+:1'b1)) = 0;
		ifnone (posedge A => (Q+:1'b1)) = 0;
		if (~A & P & RN)
			(negedge M => (Q+:1'b0)) = 0;
		if (~A & ~P & RN)
			(negedge M => (Q+:1'b0)) = 0;
		ifnone (negedge M => (Q+:1'b0)) = 0;
		if (A & M & RN)
			(posedge P => (Q+:1'b1)) = 0;
		if (A & ~M & RN)
			(posedge P => (Q+:1'b1)) = 0;
		ifnone (posedge P => (Q+:1'b1)) = 0;
		if (A & M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		if (A & M & P)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & ~M & P)
			(posedge RN => (Q+:1'b1)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		$setuphold (posedge M &&& adacond0, negedge A &&& adacond0, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M &&& adacond1, negedge A &&& adacond1, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M, negedge A, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (negedge P &&& adacond2, posedge A &&& adacond2, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P &&& adacond3, posedge A &&& adacond3, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P, posedge A, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (posedge A &&& adacond1, negedge M &&& adacond1, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (posedge A, negedge M, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (negedge A &&& adacond2, posedge P &&& adacond2, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A, posedge P, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A &&& adacond10, posedge RN &&& adacond10, 0, 0, notifier,,, delayed_A, delayed_RN);
		$setuphold (negedge A, posedge RN, 0, 0, notifier,,, delayed_A, delayed_RN);
		$setuphold (negedge P &&& adacond11, posedge RN &&& adacond11, 0, 0, notifier,,, delayed_P, delayed_RN);
		$setuphold (negedge P &&& adacond12, posedge RN &&& adacond12, 0, 0, notifier,,, delayed_P, delayed_RN);
		$setuphold (negedge P, posedge RN, 0, 0, notifier,,, delayed_P, delayed_RN);
		$width (posedge A &&& adacond5, 0, 0, notifier);
		$width (negedge A &&& adacond4, 0, 0, notifier);
		$width (negedge M &&& adacond6, 0, 0, notifier);
		$width (negedge M &&& adacond7, 0, 0, notifier);
		$width (posedge P &&& adacond8, 0, 0, notifier);
		$width (posedge P &&& adacond9, 0, 0, notifier);
		$width (negedge RN &&& adacond13, 0, 0, notifier);
		$width (negedge RN &&& adacond14, 0, 0, notifier);
		$width (negedge RN &&& adacond15, 0, 0, notifier);
		$width (negedge RN &&& adacond16, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RACELEM1_Q u_RACELEM1_Q (Q, A, M, P, RN);
endmodule
`endcelldefine

`celldefine
module RACELEM1X2(Q, A, M, P, RN);
output Q;
input  A, M, P, RN;

	// Section written by Liberate dev
	wire delayed_A, delayed_M, delayed_P, delayed_RN;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, adacond6, adacond7;
	wire adacond8, adacond9, adacond10;
	wire adacond11, adacond12, adacond13;
	wire adacond14, adacond15, adacond16;
	wire M__bar, P__bar;


	// Additional timing gates
	and (adacond5, M, P, RN);
	not (P__bar, P);
	not (M__bar, M);
	and (adacond4, M__bar, P__bar, RN);
	and (adacond0, P, RN);
	and (adacond1, P__bar, RN);
	and (adacond2, M, RN);
	and (adacond3, M__bar, RN);
	not (A__bar, A);
	and (adacond6, A__bar, P, RN);
	and (adacond7, A__bar, P__bar, RN);
	and (adacond8, A, M, RN);
	and (adacond9, A, M__bar, RN);
	and (adacond10, M, P);
	and (adacond11, A, M);
	and (adacond12, A, M__bar);
	and (adacond13, A, M, P__bar);
	and (adacond14, A, M__bar, P__bar);
	and (adacond15, A__bar, M, P);
	and (adacond16, A__bar, M, P__bar);

	specify
		if (~M & P & RN)
			(negedge A => (Q+:1'b0)) = 0;
		if (~M & ~P & RN)
			(negedge A => (Q+:1'b0)) = 0;
		ifnone (negedge A => (Q+:1'b0)) = 0;
		if (M & P & RN)
			(posedge A => (Q+:1'b1)) = 0;
		if (~M & P & RN)
			(posedge A => (Q+:1'b1)) = 0;
		ifnone (posedge A => (Q+:1'b1)) = 0;
		if (~A & P & RN)
			(negedge M => (Q+:1'b0)) = 0;
		if (~A & ~P & RN)
			(negedge M => (Q+:1'b0)) = 0;
		ifnone (negedge M => (Q+:1'b0)) = 0;
		if (A & M & RN)
			(posedge P => (Q+:1'b1)) = 0;
		if (A & ~M & RN)
			(posedge P => (Q+:1'b1)) = 0;
		ifnone (posedge P => (Q+:1'b1)) = 0;
		if (A & M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		if (A & M & P)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & ~M & P)
			(posedge RN => (Q+:1'b1)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		$setuphold (posedge M &&& adacond0, negedge A &&& adacond0, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M &&& adacond1, negedge A &&& adacond1, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M, negedge A, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (negedge P &&& adacond2, posedge A &&& adacond2, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P &&& adacond3, posedge A &&& adacond3, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P, posedge A, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (posedge A &&& adacond1, negedge M &&& adacond1, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (posedge A, negedge M, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (negedge A &&& adacond2, posedge P &&& adacond2, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A, posedge P, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A &&& adacond10, posedge RN &&& adacond10, 0, 0, notifier,,, delayed_A, delayed_RN);
		$setuphold (negedge A, posedge RN, 0, 0, notifier,,, delayed_A, delayed_RN);
		$setuphold (negedge P &&& adacond11, posedge RN &&& adacond11, 0, 0, notifier,,, delayed_P, delayed_RN);
		$setuphold (negedge P &&& adacond12, posedge RN &&& adacond12, 0, 0, notifier,,, delayed_P, delayed_RN);
		$setuphold (negedge P, posedge RN, 0, 0, notifier,,, delayed_P, delayed_RN);
		$width (posedge A &&& adacond5, 0, 0, notifier);
		$width (negedge A &&& adacond4, 0, 0, notifier);
		$width (negedge M &&& adacond6, 0, 0, notifier);
		$width (negedge M &&& adacond7, 0, 0, notifier);
		$width (posedge P &&& adacond8, 0, 0, notifier);
		$width (posedge P &&& adacond9, 0, 0, notifier);
		$width (negedge RN &&& adacond13, 0, 0, notifier);
		$width (negedge RN &&& adacond14, 0, 0, notifier);
		$width (negedge RN &&& adacond15, 0, 0, notifier);
		$width (negedge RN &&& adacond16, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RACELEM1_Q u_RACELEM1_Q (Q, A, M, P, RN);
endmodule
`endcelldefine

`celldefine
module RACELEM1X4(Q, A, M, P, RN);
output Q;
input  A, M, P, RN;

	// Section written by Liberate dev
	wire delayed_A, delayed_M, delayed_P, delayed_RN;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, adacond6, adacond7;
	wire adacond8, adacond9, adacond10;
	wire adacond11, adacond12, adacond13;
	wire adacond14, adacond15, adacond16;
	wire M__bar, P__bar;


	// Additional timing gates
	and (adacond5, M, P, RN);
	not (P__bar, P);
	not (M__bar, M);
	and (adacond4, M__bar, P__bar, RN);
	and (adacond0, P, RN);
	and (adacond1, P__bar, RN);
	and (adacond2, M, RN);
	and (adacond3, M__bar, RN);
	not (A__bar, A);
	and (adacond6, A__bar, P, RN);
	and (adacond7, A__bar, P__bar, RN);
	and (adacond8, A, M, RN);
	and (adacond9, A, M__bar, RN);
	and (adacond10, M, P);
	and (adacond11, A, M);
	and (adacond12, A, M__bar);
	and (adacond13, A, M, P__bar);
	and (adacond14, A, M__bar, P__bar);
	and (adacond15, A__bar, M, P);
	and (adacond16, A__bar, M, P__bar);

	specify
		if (~M & P & RN)
			(negedge A => (Q+:1'b0)) = 0;
		if (~M & ~P & RN)
			(negedge A => (Q+:1'b0)) = 0;
		ifnone (negedge A => (Q+:1'b0)) = 0;
		if (M & P & RN)
			(posedge A => (Q+:1'b1)) = 0;
		if (~M & P & RN)
			(posedge A => (Q+:1'b1)) = 0;
		ifnone (posedge A => (Q+:1'b1)) = 0;
		if (~A & P & RN)
			(negedge M => (Q+:1'b0)) = 0;
		if (~A & ~P & RN)
			(negedge M => (Q+:1'b0)) = 0;
		ifnone (negedge M => (Q+:1'b0)) = 0;
		if (A & M & RN)
			(posedge P => (Q+:1'b1)) = 0;
		if (A & ~M & RN)
			(posedge P => (Q+:1'b1)) = 0;
		ifnone (posedge P => (Q+:1'b1)) = 0;
		if (A & M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & M & P)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & M & ~P)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		if (A & M & P)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & ~M & P)
			(posedge RN => (Q+:1'b1)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		$setuphold (posedge M &&& adacond0, negedge A &&& adacond0, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M &&& adacond1, negedge A &&& adacond1, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (posedge M, negedge A, 0, 0, notifier,,, delayed_M, delayed_A);
		$setuphold (negedge P &&& adacond2, posedge A &&& adacond2, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P &&& adacond3, posedge A &&& adacond3, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (negedge P, posedge A, 0, 0, notifier,,, delayed_P, delayed_A);
		$setuphold (posedge A &&& adacond1, negedge M &&& adacond1, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (posedge A, negedge M, 0, 0, notifier,,, delayed_A, delayed_M);
		$setuphold (negedge A &&& adacond2, posedge P &&& adacond2, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A, posedge P, 0, 0, notifier,,, delayed_A, delayed_P);
		$setuphold (negedge A &&& adacond10, posedge RN &&& adacond10, 0, 0, notifier,,, delayed_A, delayed_RN);
		$setuphold (negedge A, posedge RN, 0, 0, notifier,,, delayed_A, delayed_RN);
		$setuphold (negedge P &&& adacond11, posedge RN &&& adacond11, 0, 0, notifier,,, delayed_P, delayed_RN);
		$setuphold (negedge P &&& adacond12, posedge RN &&& adacond12, 0, 0, notifier,,, delayed_P, delayed_RN);
		$setuphold (negedge P, posedge RN, 0, 0, notifier,,, delayed_P, delayed_RN);
		$width (posedge A &&& adacond5, 0, 0, notifier);
		$width (negedge A &&& adacond4, 0, 0, notifier);
		$width (negedge M &&& adacond6, 0, 0, notifier);
		$width (negedge M &&& adacond7, 0, 0, notifier);
		$width (posedge P &&& adacond8, 0, 0, notifier);
		$width (posedge P &&& adacond9, 0, 0, notifier);
		$width (negedge RN &&& adacond13, 0, 0, notifier);
		$width (negedge RN &&& adacond14, 0, 0, notifier);
		$width (negedge RN &&& adacond15, 0, 0, notifier);
		$width (negedge RN &&& adacond16, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RACELEM1_Q u_RACELEM1_Q (Q, A, M, P, RN);
endmodule
`endcelldefine

`celldefine
module RMUTX1(X, Y, A, B, R);
output X, Y;
input  A, B, R;
reg X, Y;

	// Section written by Liberate dev
	specify
		ifnone (A => X) = 0.01;
		if (B & ~R)
			(negedge A => (X+:1'b0)) = 0.01;
		if (~B & ~R)
			(negedge A => (X+:1'b0)) = 0.01;
		ifnone (negedge B => (X+:1'b1)) = 0.01;
		ifnone (R => X) = 0.01;
		if (A & B)
			(posedge R => (X-:1'b0)) = 0.01;
		if (A & ~B)
			(posedge R => (X-:1'b0)) = 0.01;
		ifnone (negedge A => (Y+:1'b1)) = 0.01;
		ifnone (B => Y) = 0.01;
		if (A & ~R)
			(negedge B => (Y+:1'b0)) = 0.01;
		if (~A & ~R)
			(negedge B => (Y+:1'b0)) = 0.01;
		ifnone (R => Y) = 0.01;
		if (A & B)
			(posedge R => (Y-:1'b0)) = 0.01;
		if (~A & B)
			(posedge R => (Y-:1'b0)) = 0.01;
	endspecify
	// End Section written by Liberate dev

  always @(A or B or R)
    if (R) begin
      X <= 0;
      Y <= 0;
    end else case ({A,B})
      2'b00: begin
        X <= 0;
        Y <= 0;
      end
      2'b01: begin
        X <= 0;
        Y <= 1;
      end
      2'b10: begin
        X <= 1;
        Y <= 0;
      end
      2'b11: if (!X && !Y) begin
        if($urandom%2)
          X <= 1;
        else
          Y <= 1;
      end
    endcase
endmodule
`endcelldefine

primitive RNCL2W11OF2_Q(Q, A, B, G, RN);
output Q;
input  A, B, G, RN;
reg    Q;
table
	0 0 ? ? : ? : 0;
	0 1 ? 1 : ? : -;
	1 0 ? 1 : ? : -;
	1 1 ? 1 : ? : 1;
	? ? ? 0 : ? : 0;
endtable
endprimitive

`celldefine
module RNCL2W11OF2X1(Q, A, B, G, RN);
output Q;
input  A, B, G, RN;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire B__bar;


	// Additional timing gates
	not (B__bar, B);
	and (adacond0, A, B__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$width (negedge RN &&& adacond0, 0, 0, notifier);
		$width (negedge RN &&& adacond1, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RNCL2W11OF2_Q u_RNCL2W11OF2_Q (Q, A, B, G, RN);
endmodule
`endcelldefine

`celldefine
module RNCL2W11OF2X2(Q, A, B, G, RN);
output Q;
input  A, B, G, RN;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire B__bar;


	// Additional timing gates
	not (B__bar, B);
	and (adacond0, A, B__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$width (negedge RN &&& adacond0, 0, 0, notifier);
		$width (negedge RN &&& adacond1, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RNCL2W11OF2_Q u_RNCL2W11OF2_Q (Q, A, B, G, RN);
endmodule
`endcelldefine

`celldefine
module RNCL2W11OF2X4(Q, A, B, G, RN);
output Q;
input  A, B, G, RN;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire B__bar;


	// Additional timing gates
	not (B__bar, B);
	and (adacond0, A, B__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$width (negedge RN &&& adacond0, 0, 0, notifier);
		$width (negedge RN &&& adacond1, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RNCL2W11OF2_Q u_RNCL2W11OF2_Q (Q, A, B, G, RN);
endmodule
`endcelldefine

primitive RSNCL2W11OF2_Q(Q, A, B, G, RN, S);
output Q;
input  A, B, G, RN, S;
reg    Q;
table
	0 0 ? ? 0 : ? : 0;
	0 1 ? 1 0 : ? : -;
	1 0 ? 1 0 : ? : -;
	1 1 ? 1 ? : ? : 1;
	? ? ? 0 ? : ? : 0;
	? ? ? 1 1 : ? : 1;
endtable
endprimitive

`celldefine
module RSNCL2W11OF2X1(Q, A, B, G, RN, S);
output Q;
input  A, B, G, RN, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G, delayed_RN, delayed_S;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, B__bar, S__bar;


	// Additional timing gates
	not (S__bar, S);
	not (B__bar, B);
	and (adacond2, A, B__bar, S__bar);
	not (A__bar, A);
	and (adacond3, A__bar, B, S__bar);
	and (adacond0, A, B__bar);
	and (adacond1, A__bar, B);
	and (adacond4, A, B__bar, RN);
	and (adacond5, A__bar, B, RN);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & ~B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		if (A & B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & B & ~S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & ~B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (~A & B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (~A & ~B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (negedge S &&& adacond0, posedge RN &&& adacond0, 0, 0, notifier,,, delayed_S, delayed_RN);
		$setuphold (negedge S &&& adacond1, posedge RN &&& adacond1, 0, 0, notifier,,, delayed_S, delayed_RN);
		$setuphold (negedge S, posedge RN, 0, 0, notifier,,, delayed_S, delayed_RN);
		$width (negedge RN &&& adacond2, 0, 0, notifier);
		$width (negedge RN &&& adacond3, 0, 0, notifier);
		$width (posedge S &&& adacond4, 0, 0, notifier);
		$width (posedge S &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RSNCL2W11OF2_Q u_RSNCL2W11OF2_Q (Q, A, B, G, RN, S);
endmodule
`endcelldefine

`celldefine
module RSNCL2W11OF2X2(Q, A, B, G, RN, S);
output Q;
input  A, B, G, RN, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G, delayed_RN, delayed_S;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, B__bar, S__bar;


	// Additional timing gates
	not (S__bar, S);
	not (B__bar, B);
	and (adacond2, A, B__bar, S__bar);
	not (A__bar, A);
	and (adacond3, A__bar, B, S__bar);
	and (adacond0, A, B__bar);
	and (adacond1, A__bar, B);
	and (adacond4, A, B__bar, RN);
	and (adacond5, A__bar, B, RN);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & ~B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		if (A & B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & B & ~S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & ~B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (~A & B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (~A & ~B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (negedge S &&& adacond0, posedge RN &&& adacond0, 0, 0, notifier,,, delayed_S, delayed_RN);
		$setuphold (negedge S &&& adacond1, posedge RN &&& adacond1, 0, 0, notifier,,, delayed_S, delayed_RN);
		$setuphold (negedge S, posedge RN, 0, 0, notifier,,, delayed_S, delayed_RN);
		$width (negedge RN &&& adacond2, 0, 0, notifier);
		$width (negedge RN &&& adacond3, 0, 0, notifier);
		$width (posedge S &&& adacond4, 0, 0, notifier);
		$width (posedge S &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RSNCL2W11OF2_Q u_RSNCL2W11OF2_Q (Q, A, B, G, RN, S);
endmodule
`endcelldefine

`celldefine
module RSNCL2W11OF2X4(Q, A, B, G, RN, S);
output Q;
input  A, B, G, RN, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G, delayed_RN, delayed_S;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, B__bar, S__bar;


	// Additional timing gates
	not (S__bar, S);
	not (B__bar, B);
	and (adacond2, A, B__bar, S__bar);
	not (A__bar, A);
	and (adacond3, A__bar, B, S__bar);
	and (adacond0, A, B__bar);
	and (adacond1, A__bar, B);
	and (adacond4, A, B__bar, RN);
	and (adacond5, A__bar, B, RN);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & ~B & S)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		if (A & B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & B & ~S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (A & ~B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (~A & B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		if (~A & ~B & S)
			(posedge RN => (Q+:1'b1)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (negedge S &&& adacond0, posedge RN &&& adacond0, 0, 0, notifier,,, delayed_S, delayed_RN);
		$setuphold (negedge S &&& adacond1, posedge RN &&& adacond1, 0, 0, notifier,,, delayed_S, delayed_RN);
		$setuphold (negedge S, posedge RN, 0, 0, notifier,,, delayed_S, delayed_RN);
		$width (negedge RN &&& adacond2, 0, 0, notifier);
		$width (negedge RN &&& adacond3, 0, 0, notifier);
		$width (posedge S &&& adacond4, 0, 0, notifier);
		$width (posedge S &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

RSNCL2W11OF2_Q u_RSNCL2W11OF2_Q (Q, A, B, G, RN, S);
endmodule
`endcelldefine

primitive SNCL2W11OF2_Q(Q, A, B, G, S);
output Q;
input  A, B, G, S;
reg    Q;
table
	0 0 ? 0 : ? : 0;
	0 1 ? 0 : ? : -;
	1 0 ? 0 : ? : -;
	1 1 ? ? : ? : 1;
	? ? ? 1 : ? : 1;
endtable
endprimitive

`celldefine
module SNCL2W11OF2X1(Q, A, B, G, S);
output Q;
input  A, B, G, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire B__bar;


	// Additional timing gates
	not (B__bar, B);
	and (adacond0, A, B__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$width (posedge S &&& adacond0, 0, 0, notifier);
		$width (posedge S &&& adacond1, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

SNCL2W11OF2_Q u_SNCL2W11OF2_Q (Q, A, B, G, S);
endmodule
`endcelldefine

`celldefine
module SNCL2W11OF2X2(Q, A, B, G, S);
output Q;
input  A, B, G, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire B__bar;


	// Additional timing gates
	not (B__bar, B);
	and (adacond0, A, B__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$width (posedge S &&& adacond0, 0, 0, notifier);
		$width (posedge S &&& adacond1, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

SNCL2W11OF2_Q u_SNCL2W11OF2_Q (Q, A, B, G, S);
endmodule
`endcelldefine

`celldefine
module SNCL2W11OF2X4(Q, A, B, G, S);
output Q;
input  A, B, G, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire B__bar;


	// Additional timing gates
	not (B__bar, B);
	and (adacond0, A, B__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$width (posedge S &&& adacond0, 0, 0, notifier);
		$width (posedge S &&& adacond1, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

SNCL2W11OF2_Q u_SNCL2W11OF2_Q (Q, A, B, G, S);
endmodule
`endcelldefine

primitive SRNCL2W11OF2_Q(Q, A, B, G, RN, S);
output Q;
input  A, B, G, RN, S;
reg    Q;
table
	0 0 ? ? 0 : ? : 0;
	0 1 ? 1 0 : ? : -;
	1 0 ? 1 0 : ? : -;
	1 1 ? 1 ? : ? : 1;
	? ? ? 0 0 : ? : 0;
	? ? ? ? 1 : ? : 1;
endtable
endprimitive

`celldefine
module SRNCL2W11OF2X1(Q, A, B, G, RN, S);
output Q;
input  A, B, G, RN, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G, delayed_RN, delayed_S;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, B__bar, S__bar;


	// Additional timing gates
	not (S__bar, S);
	not (B__bar, B);
	and (adacond0, A, B__bar, S__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B, S__bar);
	and (adacond2, A, B__bar);
	and (adacond3, A__bar, B);
	and (adacond4, A, B__bar, RN);
	and (adacond5, A__bar, B, RN);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		if (A & B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & ~B & RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & ~B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		ifnone (negedge S => (Q+:1'b0)) = 0;
		if (A & B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (A & ~B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge RN &&& adacond2, negedge S &&& adacond2, 0, 0, notifier,,, delayed_RN, delayed_S);
		$setuphold (posedge RN &&& adacond3, negedge S &&& adacond3, 0, 0, notifier,,, delayed_RN, delayed_S);
		$setuphold (posedge RN, negedge S, 0, 0, notifier,,, delayed_RN, delayed_S);
		$width (negedge RN &&& adacond0, 0, 0, notifier);
		$width (negedge RN &&& adacond1, 0, 0, notifier);
		$width (posedge S &&& adacond4, 0, 0, notifier);
		$width (posedge S &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

SRNCL2W11OF2_Q u_SRNCL2W11OF2_Q (Q, A, B, G, RN, S);
endmodule
`endcelldefine

`celldefine
module SRNCL2W11OF2X2(Q, A, B, G, RN, S);
output Q;
input  A, B, G, RN, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G, delayed_RN, delayed_S;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, B__bar, S__bar;


	// Additional timing gates
	not (S__bar, S);
	not (B__bar, B);
	and (adacond0, A, B__bar, S__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B, S__bar);
	and (adacond2, A, B__bar);
	and (adacond3, A__bar, B);
	and (adacond4, A, B__bar, RN);
	and (adacond5, A__bar, B, RN);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		if (A & B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & ~B & RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & ~B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		ifnone (negedge S => (Q+:1'b0)) = 0;
		if (A & B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (A & ~B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge RN &&& adacond2, negedge S &&& adacond2, 0, 0, notifier,,, delayed_RN, delayed_S);
		$setuphold (posedge RN &&& adacond3, negedge S &&& adacond3, 0, 0, notifier,,, delayed_RN, delayed_S);
		$setuphold (posedge RN, negedge S, 0, 0, notifier,,, delayed_RN, delayed_S);
		$width (negedge RN &&& adacond0, 0, 0, notifier);
		$width (negedge RN &&& adacond1, 0, 0, notifier);
		$width (posedge S &&& adacond4, 0, 0, notifier);
		$width (posedge S &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

SRNCL2W11OF2_Q u_SRNCL2W11OF2_Q (Q, A, B, G, RN, S);
endmodule
`endcelldefine

`celldefine
module SRNCL2W11OF2X4(Q, A, B, G, RN, S);
output Q;
input  A, B, G, RN, S;

	// Section written by Liberate dev
	wire delayed_A, delayed_B, delayed_G, delayed_RN, delayed_S;
	reg notifier;

	// Additional timing wires
	wire A__bar, adacond0, adacond1;
	wire adacond2, adacond3, adacond4;
	wire adacond5, B__bar, S__bar;


	// Additional timing gates
	not (S__bar, S);
	not (B__bar, B);
	and (adacond0, A, B__bar, S__bar);
	not (A__bar, A);
	and (adacond1, A__bar, B, S__bar);
	and (adacond2, A, B__bar);
	and (adacond3, A__bar, B);
	and (adacond4, A, B__bar, RN);
	and (adacond5, A__bar, B, RN);

	specify
		(A => Q) = 0;
		(B => Q) = 0;
		(posedge G => (Q+:((A && B)))) = 0;
		if (A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (A & ~B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		if (~A & B & ~S)
			(negedge RN => (Q+:1'b0)) = 0;
		ifnone (negedge RN => (Q+:1'b0)) = 0;
		ifnone (posedge RN => (Q+:1'b1)) = 0;
		if (A & B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (A & ~B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & ~B & RN)
			(negedge S => (Q+:1'b0)) = 0;
		if (~A & ~B & ~RN)
			(negedge S => (Q+:1'b0)) = 0;
		ifnone (negedge S => (Q+:1'b0)) = 0;
		if (A & B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (A & ~B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & RN)
			(posedge S => (Q+:1'b1)) = 0;
		if (~A & ~B & ~RN)
			(posedge S => (Q+:1'b1)) = 0;
		ifnone (posedge S => (Q+:1'b1)) = 0;
		$setuphold (posedge G, posedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, negedge A, 0, 0, notifier,,, delayed_G, delayed_A);
		$setuphold (posedge G, posedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge G, negedge B, 0, 0, notifier,,, delayed_G, delayed_B);
		$setuphold (posedge RN &&& adacond2, negedge S &&& adacond2, 0, 0, notifier,,, delayed_RN, delayed_S);
		$setuphold (posedge RN &&& adacond3, negedge S &&& adacond3, 0, 0, notifier,,, delayed_RN, delayed_S);
		$setuphold (posedge RN, negedge S, 0, 0, notifier,,, delayed_RN, delayed_S);
		$width (negedge RN &&& adacond0, 0, 0, notifier);
		$width (negedge RN &&& adacond1, 0, 0, notifier);
		$width (posedge S &&& adacond4, 0, 0, notifier);
		$width (posedge S &&& adacond5, 0, 0, notifier);
	endspecify
	// End Section written by Liberate dev

SRNCL2W11OF2_Q u_SRNCL2W11OF2_Q (Q, A, B, G, RN, S);
endmodule
`endcelldefine

primitive XNOR2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 0 : ? : 1;
	0 1 : ? : 0;
	1 0 : ? : 0;
	1 1 : ? : 1;
endtable
endprimitive

`celldefine
module XNOR2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		if (B)
			(A => Q) = 0.01;
		if (~B)
			(A => Q) = 0.01;
		if (A)
			(B => Q) = 0.01;
		if (~A)
			(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

XNOR2_Q u_XNOR2_Q (Q, A, B);
endmodule
`endcelldefine

primitive XOR2_Q(Q, A, B);
output Q;
input  A, B;
reg    Q;
table
	0 0 : ? : 0;
	0 1 : ? : 1;
	1 0 : ? : 1;
	1 1 : ? : 0;
endtable
endprimitive

`celldefine
module XOR2X1(Q, A, B);
output Q;
input  A, B;

	// Section written by Liberate dev
	specify
		if (~B)
			(A => Q) = 0.01;
		if (B)
			(A => Q) = 0.01;
		if (~A)
			(B => Q) = 0.01;
		if (A)
			(B => Q) = 0.01;
	endspecify
	// End Section written by Liberate dev

XOR2_Q u_XOR2_Q (Q, A, B);
endmodule
`endcelldefine

