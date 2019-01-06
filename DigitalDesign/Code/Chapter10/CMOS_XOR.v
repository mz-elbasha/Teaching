module CMOS_XOR (A, B, Y);	// XOR with CMOS switches (Fig. 10-26)  input		A, B;  output	Y;  wire		A_not, B_not;// instantiate inverters  inverter M1 (A_not, A);  inverter M2 (B_not, B);// instanatiate cmos switch  cmos (Y, B, A_not, A);  cmos (Y, B_not, A, A_not);endmodulemodule inverter (Y, A);		// Fig. 10-22(a)  input		A;  output	Y;  supply1	PWR;  supply0	GND;  pmos 		(Y, PWR, A);	// drain, source, gate  nmos 		(Y, GND, A);	// drain, source, gateendmodule// Testbench for simulation of CMOS_XORmodule test_CMOS_XOR ( );  reg	A, B;  wire	Y;// instantiate CMOS_XOR  CMOS_XOR TM1 (A, B, Y);// Stimulus generator for truth table  initial     begin            A = 1'b0; B = 1'b0;      #5  A = 1'b0; B = 1'b1;      #5  A = 1'b1; B = 1'b0;      #5  A = 1'b1; B = 1'b1;    end// display text of results  initial    $monitor ($time,,"A =%b  B = %b  Y = %b", A, B, Y);// stopwatch to end simulation  initial #25 $finish;endmodule