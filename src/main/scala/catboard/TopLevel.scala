package catboard

import spinal.core._
import spinal.lib.ResetCtrl

class TopLevel() extends Component {
  val io = new Bundle() {
    noIoPrefix()
    val RXD, CLK_100 = in Bool
     
    //val TXD = out Bool
     
  }

  val SB_PLL40_CORE = new SB_PLL40_CORE(FEEDBACK_PATH = "SIMPLE")
  SB_PLL40_CORE.REFERENCECLK <> io.CLK_100
  SB_PLL40_CORE.BYPASS <> B(0,1 bit)
  SB_PLL40_CORE.RESETB <> B(1,1 bit)
  
  val rstCtrl: ResetController = ResetController()
  //rstCtrl.io.clock <> io.CLK_50
  rstCtrl.io.clock <> SB_PLL40_CORE.PLLOUTCORE 

  val globalClockDomain = new ClockDomain(
    clock = SB_PLL40_CORE.PLLOUTCORE,
    reset = False.allowOverride,
    frequency = FixedFrequency(40 MHz)
  )
  ResetCtrl.asyncAssertSyncDeassertDrive(
    input = rstCtrl.io.globalReset || !SB_PLL40_CORE.LOCK,
    clockDomain = globalClockDomain,
    outputPolarity = HIGH
  )

  //val core: kbd104 = kbd104()
  //core.clk_clk <> pll100.c0**************************
  //core.reset_reset_n <> ~globalClockDomain.reset**************************
  //core.io_row <> io.LED_A
  //core.io_col <> io.LED_K
  //core.flash <> io.flash

  //io.LED_R6 <> globalClockDomain.reset

  //val clk50Area: ClockingArea = new ClockingArea(globalClockDomain) {**************************
    //val keyMatrix: KeyMatrix = KeyMatrix(500 us, 1 ms)
    //io.ROW <> keyMatrix.ROW
    //io.COL <> keyMatrix.COL
    //keyMatrix.enabled := True
    //core.uart.rxd := FlowToUart(keyMatrix.scanIdx)

//    val ps2: PS2 = PS2()
//    ps2.PS2_CLK <> io.PS2_CLK
//    ps2.PS2_DAT <> io.PS2_DAT
//    ps2.scanIdx <> keyMatrix.scanIdx

    //val hid: HID = HID()
    //hid.TXD <> io.TXD
    //hid.scanIdx <> keyMatrix.scanIdx
    //List(74, 85, 90, 91, 92, 94, 96)
      //.foreach(i => hid.keyStatus(i) <> keyMatrix.keyStatus(i))
  //}**************************
  //    println(s"latency ${LatencyAnalysis(a,c)}")
}
