package catboard

import spinal.core._

case class SB_PLL40_CORE(FEEDBACK_PATH:String) extends BlackBox {
  val REFERENCECLK: Bool = in Bool
  val PLLOUTCORE, LOCK = out Bool
  val BYPASS = in Bits()
  val RESETB = in Bits()
}
