//CMOS inverter Fig. 10-22 (a)module inverter (Y, A);  input A;  output Y;  supply1  PWR;  supply0  GRD;  pmos (Y, PWR, A);	// (Drain, source, gate)  nmos (Y, GRD, A);	// (Drain, source, gate)endmodule