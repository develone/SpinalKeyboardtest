package testcode

import spinal.core._

case class clktest() extends BlackBox {
  val i_clk: Bool = in Bool
  val o_ledr: Bool = out Bool
}



class toplevel_clktest() extends Component {
  val io = new Bundle() {
  val CLK_100 = in Bool
  val uartRX = in Bool
  val uartTX = out Bool
  
  val out_ledr = out Bool
  
  }
  val plli: SB_PLL40_CORE = new SB_PLL40_CORE()
  plli.REFERENCECLK <> io.CLK_100
  plli.BYPASS <> B(0,1 bit)
  plli.RESETB <> B(1,1 bit)
  
  val main = new main()
  main.iClk <> plli.PLLOUTCORE
  main.iRX <> io.uartRX
  main.oTX <> io.uartTX
  
  val clktest = new clktest()
  clktest.i_clk <> plli.PLLOUTCORE
  clktest.o_ledr <> io.out_ledr
}
//Generate the toplevel_clktest Verilog
object toplevel_clktestVerilog {
  def main(args: Array[String]) {
    SpinalVerilog(new toplevel_clktest)
  }
}
