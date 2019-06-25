module rvfi_wrapper (
	input clock,
	input reset,
	`RVFI_OUTPUTS
);

	// OUT
	(* keep *)      wire [31:0] iaddr;
	(* keep *)      wire [31:0] datao;
	(* keep *)      wire [31:0] daddr;
	(* keep *)      wire [3:0]	be;
	(* keep *)      wire		wr;
	(* keep *)      wire		rd;
	(* keep *)      wire [3:0]	debug;

	// IN
	(* keep *) rand reg			hlt;
	(* keep *) rand reg	 [31:0] idata;
	(* keep *) rand reg  [31:0] datai;

	darkriscv uut (
		.CLK(clock),
		.RES(reset),
		.HLT(hlt),

		.IDATA(idata),
		.IADDR(iaddr),

		.DATAI(datai),
		.DATAO(datao),
		.DADDR(daddr),

		.BE(be),

		.WR(wr),
		.RD(rd),

		`RVFI_CONN,

		.DEBUG(debug)
	);




endmodule
