package testcode

import spinal.core._
/*
`ifdef	VERILATOR
	assign	s_clk = i_clk;
`else
	wire	clk_40mhz, pll_locked;
	SB_PLL40_CORE #(
		.FEEDBACK_PATH("SIMPLE"),
		.DELAY_ADJUSTMENT_MODE_FEEDBACK("FIXED"),
		.DELAY_ADJUSTMENT_MODE_RELATIVE("FIXED"),
		.PLLOUT_SELECT("GENCLK"),
		.FDA_FEEDBACK(4'b1111),
		.FDA_RELATIVE(4'b1111),
		.DIVR(4'b0100),		// DIVR =  4
		.DIVQ(7'b0011111),		// DIVQ =  31
		.DIVF(3'b100),		// DIVF =  4
		.FILTER_RANGE(3'b010)	// FILTER_RANGE = 2
	) plli (
		.REFERENCECLK     (i_clk        ),
		.PLLOUTCORE     (clk_40mhz    ),
		.LOCK           (pll_locked  ),
		.BYPASS         (1'b0         ),
		.RESETB         (1'b1         )
	);
       	//SB_GB global_buffer(clk_40mhz, s_clk);
	assign	s_clk = clk_40mhz;
`endif

  SB_PLL40_CORE #(
    .FEEDBACK_PATH("SIMPLE"),
    .DIVR(4'b0010),
    .DIVF(7'h16),
    .DIVQ(3'b110),
    .FILTER_RANGE(3'b010) 
  ) plli (
    .REFERENCECLK    (io_CLK_100       ), //i
    .PLLOUTCORE      (plli_PLLOUTCORE  ), //o
    .LOCK            (plli_LOCK        ), //o
    .BYPASS          (_zz_1            ), //i
    .RESETB          (_zz_2            )  //i
  );
  assign _zz_1 = 1'b0;
  assign _zz_2 = 1'b1;
*/

case class SB_PLL40_CORE() extends BlackBox {
  val REFERENCECLK: Bool = in Bool
  val PLLOUTCORE, LOCK = out Bool
  val BYPASS = in Bits()
  val RESETB = in Bits()
  addGeneric("FEEDBACK_PATH", "SIMPLE")
  addGeneric("DIVR", B(2,4 bits))
  addGeneric("DIVF", B(22,7 bits))
  addGeneric("DIVQ", B(6,3 bits))
  addGeneric("FILTER_RANGE", B(2,3 bits))
  //addGeneric("BYPASS", B(0,1 bits))
  //addGeneric("RESETB", "RESET")
  //addGeneric("EXTFEEDBACK","()")
}
class toplevel_pll() extends Component {
  val io = new Bundle() {
    val CLK_100 = in Bool
  }
  val plli: SB_PLL40_CORE = new SB_PLL40_CORE()
  plli.REFERENCECLK <> io.CLK_100
  plli.BYPASS <> B(0,1 bit)
  plli.RESETB <> B(1,1 bit)
}
//Generate the toplevel_pll Verilog
object toplevel_pllVerilog {
  def main(args: Array[String]) {
    SpinalVerilog(new toplevel_pll)
  }
}
