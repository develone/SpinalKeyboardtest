package catboard

import spinal.core._

case class pll() extends BlackBox {
  val REFERENCECLK: Bool = in Bool
  val PLLOUTCORE, LOCK = out Bool
  val BYPASS = in Bits()
  val RESETB = in Bits()
}
