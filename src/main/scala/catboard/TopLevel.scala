package catboard

import spinal.core._
import spinal.lib.ResetCtrl

class TopLevel() extends Component {
  val io = new Bundle() {
    noIoPrefix()
    val RXD, CLK_100 = in Bool
     
    //val TXD = out Bool
     
  }

  val uut:pll =  pll()
  uut.REFERENCECLK <> io.CLK_100
  uut.BYPASS <> B(0,1 bit)
  uut.RESETB <> B(1,1 bit)
  
  val rstCtrl: ResetController = ResetController()
  //rstCtrl.io.clock <> io.CLK_50
  rstCtrl.io.clock <> uut.PLLOUTCORE 

  val globalClockDomain = new ClockDomain(
    clock = uut.PLLOUTCORE,
    reset = False.allowOverride,
    frequency = FixedFrequency(40 MHz)
  )
  ResetCtrl.asyncAssertSyncDeassertDrive(
    input = rstCtrl.io.globalReset || !uut.LOCK,
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
