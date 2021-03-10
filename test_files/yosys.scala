package spinal.lib.eda.yosys
import scala.collection.mutable._
import java.io.File
import java.nio.file.Paths

import org.apache.commons.io.FileUtils
import spinal.core._
import scala.sys.process._

case class YosysComand(command: String, opt: String*){
  def toList: List[String] = {
    val ret = List(command) ++ opt
    println(ret)
    ret
  }
  override def toString(): String = {
    var ret = new StringBuilder(s"""-p "${command} """)
    ret.append(opt.mkString(""," ","\""))
    ret.toString
  }
}

object Mode extends Enumeration{
  val bmc: String = ""
  val cover: String = "-c"
  val prove: String = "-i"
  val live: String = "s"
}

object Solver extends Enumeration{
  val z3: String = "z3"
}

case class FormalCommand( smt2: String,
                          top: String,
                          solver: String = Solver.z3,
                          step: Int = 20,
                          skip: Int = 0,
                          stepSize: Int = 1,
                          mode: String = Mode.bmc,
                          dumpVCD: String = "",
                          dumpVerilogTB: String = "",
                          append: Int = 0,
                          opt: String = ""){

  def dumpTrace(path: String) = this.copy(dumpVCD = path)
  def dumpVerilogTestBench(path: String) = this.copy(dumpVerilogTB = path)
  def bmc = this.copy(mode = Mode.bmc)
  def cover = this.copy(mode = Mode.cover)
  def prove = this.copy(mode = Mode.prove)

  override def toString(): String = {
    val ret = new StringBuilder("yosys-smtbmc --presat ")
    ret.append(smt2)
    ret.append(s"-m ${top} ")
    ret.append(s"-s ${solver} ")
    ret.append(s"-t ${skip}:${stepSize}:${step} ")
    ret.append(s"${mode} ")
    if(dumpVCD.nonEmpty) ret.append(s"--dump-vcd ${dumpVCD}")
    if(dumpVerilogTB.nonEmpty) ret.append("--dump-vlogtb ${dumpVerilogTB}")
    ret.append(s"--append ${append} ")
    ret.append(s"-S ${opt} ")

    ret.toString()
  }
}

class Yosys{
  val commands = ListBuffer[YosysComand]()
  val isWindows = System.getProperty("os.name").toLowerCase().contains("win")

  def doCmd(cmd : String, path : String): String ={
    println(cmd)
    val str =  new StringBuilder()
    val log = new ProcessLogger {
      override def err(s: => String): Unit = {
        str ++= s
        stderr.println(s)
      }

      override def out(s: => String): Unit = {
        str ++= s
        stdout.println(s)
      }

      override def buffer[T](f: => T) = f
    }
    if(isWindows)
      Process("cmd /C " + cmd, new java.io.File(path)) !(log)
    else
      Process(cmd, new java.io.File(path)) !(log)

    return str.toString()
  }

  def addCommand(command: YosysComand): Unit = commands += command

  def addCommand(command: String, opt: String*): Unit = commands += YosysComand(command,opt: _*)

  def run(path: String = "."): Unit = {
    val yosysCmd : String = commands.mkString("yosys "," ","")
    //doCmd(yosysCmd,path)
    println(yosysCmd)
    yosysCmd.!!
  }

  // def toList(): List[YosysComand] = commands.toList.
  override def toString(): String = commands.mkString("yosys "," ","")
}

object Yosys{
    // def load(file: String, path: String) = {
    //     val f = new Yosys()
    //     f.addCommand("read_verilog","-sv",file)
    // }

  def model(file: String, path: String, name: String, mode: String, multiclock: Boolean=false) : Yosys ={
    val modelGen = new Yosys
    modelGen.addCommand("read_verilog","-sv",file)
    modelGen.addCommand("prep","-top",name)
    if(name == "base") modelGen.addCommand("memory_nordff") else modelGen.addCommand("memory_map")
    if(multiclock){
      modelGen.addCommand("clk2fflogic")
    } else {
      modelGen.addCommand("async2sync")
      modelGen.addCommand("chformal","-assume","-early")
    }
    if(mode == Mode.bmc || mode == Mode.prove) modelGen.addCommand("chformal","-live","-fair","-cover","-remove")
    if(mode == Mode.cover) modelGen.addCommand("chformal","-live","-fair","-remove")
    if(mode == Mode.live){
      modelGen.addCommand("chformal","-assert2assume")
      modelGen.addCommand("chformal","-cover","-remove")
    }
    modelGen.addCommand("opt_clean")
    modelGen.addCommand("setundef","-anyseq")
    modelGen.addCommand("opt","-keepdc","-fast")
    modelGen.addCommand("check")
    modelGen.addCommand("hierarchy","-simcheck","-top",name)

    modelGen.addCommand("write_smt2","-wires",file+".smt2")
    modelGen
  }

}

object testo{
    def main(args: Array[String]): Unit = {
        val command = Yosys.model("testCounter.sv",".","testCounter",Mode.bmc)
        println(command.toString)
        Process(command.toString).!!
        //"""yosys -p "read_verilog -sv testCounter.sv" -p "memory_map" -p "async2sync " -p "chformal -assume -early" -p "chformal -live -fair -cover -remove" -p "chformal -assert2assume" -p "chformal -cover -remove" -p "opt_clean" -p "setundef -anyseq" -p "opt -keepdc -fast" -p "check" -p "hierarchy -simcheck -top testCounter" -p "write_smt2 -wires testCounter.sv.smt2"""".!!
    }
}
