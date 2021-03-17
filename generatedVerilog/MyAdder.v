// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : MyAdder
// Git hash  : 93623a911ca2a3bca99c265ef91c1725ae014ed1



module MyAdder (
  input      [31:0]   io_a,
  input      [31:0]   io_b,
  output     [31:0]   io_result
);

  assign io_result = (io_a + io_b);

endmodule
