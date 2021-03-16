// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : TopLevel
// Git hash  : 70ccc53ccf1e06766e9b4aba6c2df3030f348071



module TopLevel (
  /* verilator lint_off UNUSED */
  input               RXD,
  /* verilator lint_off UNUSED */
  input               CLK_50
);
  /* verilator lint_off UNDRIVEN */
  wire                _zz_2;
  /* verilator lint_off UNDRIVEN */
  wire                _zz_3;
  wire                pll100_c0;
  wire                pll100_locked;
  wire                rstCtrl_io_globalReset;
  wire                bufferCC_1_io_dataOut;
  wire                _zz_1;

  /*pll pll100 (
    .inclk0    (CLK_50         ), //i
    .c0        (pll100_c0      ), //o
    .locked    (pll100_locked  )  //o
  );*/
  ResetController rstCtrl (
    .io_clock            (CLK_50                  ), //i
    .io_externalReset    (_zz_2                   ), //i
    .io_globalReset      (rstCtrl_io_globalReset  )  //o
  );
  BufferCC bufferCC_1 (
    .io_dataIn     (_zz_3                  ), //i
    .io_dataOut    (bufferCC_1_io_dataOut  ), //o
    .CLK_50        (CLK_50                 ), //i
    ._zz_1         (_zz_1                  )  //i
  );
  assign _zz_1 = (rstCtrl_io_globalReset || (! pll100_locked));
  assign _zz_3 = 1'b0;

endmodule

/* verilator lint_off DECLFILENAME */
module BufferCC (
/* verilator lint_off DECLFILENAME */
  input               io_dataIn,
  output              io_dataOut,
  input               CLK_50,
  input               _zz_1
);
  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @ (posedge CLK_50 or posedge _zz_1) begin
    if (_zz_1) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module ResetController (
  input               io_clock,
  input               io_externalReset,
  output              io_globalReset
);
  wire       [0:0]    _zz_14;
  wire       [15:0]   _zz_15;
  wire       [0:0]    _zz_16;
  wire       [27:0]   _zz_17;
  reg                 _zz_1;
  reg        [15:0]   _zz_2;
  reg        [15:0]   _zz_3 = 16'h0;
  wire                _zz_4;
  wire                _zz_5;
  reg                 _zz_6 = 1'b1;
  reg                 _zz_7;
  reg                 _zz_8;
  reg        [27:0]   _zz_9;
  reg        [27:0]   _zz_10 = 28'h0;
  wire                _zz_11;
  wire                _zz_12;
  reg                 io_externalReset_regNext = 1'b0;
  reg                 _zz_13;

  assign _zz_14 = _zz_1;
  assign _zz_15 = {15'd0, _zz_14};
  assign _zz_16 = _zz_7;
  assign _zz_17 = {27'd0, _zz_16};
  always @ (*) begin
    _zz_1 = 1'b0;
    if(_zz_6)begin
      _zz_1 = 1'b1;
    end
  end

  assign _zz_4 = (_zz_3 == 16'hc34f);
  assign _zz_5 = (_zz_4 && _zz_1);
  always @ (*) begin
    if(_zz_5)begin
      _zz_2 = 16'h0;
    end else begin
      _zz_2 = (_zz_3 + _zz_15);
    end
    if(1'b0)begin
      _zz_2 = 16'h0;
    end
  end

  always @ (*) begin
    _zz_7 = 1'b0;
    if(io_externalReset)begin
      _zz_7 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_8 = 1'b0;
    if((io_externalReset && (! io_externalReset_regNext)))begin
      _zz_8 = 1'b1;
    end
  end

  assign _zz_11 = (_zz_10 == 28'h8f0d17f);
  assign _zz_12 = (_zz_11 && _zz_7);
  always @ (*) begin
    if(_zz_12)begin
      _zz_9 = 28'h0;
    end else begin
      _zz_9 = (_zz_10 + _zz_17);
    end
    if(_zz_8)begin
      _zz_9 = 28'h0;
    end
  end

  assign io_globalReset = _zz_13;
  always @ (posedge io_clock) begin
    _zz_3 <= _zz_2;
    if(_zz_4)begin
      _zz_6 <= 1'b0;
    end
    _zz_10 <= _zz_9;
    io_externalReset_regNext <= io_externalReset;
  end

  always @ (posedge io_clock) begin
    _zz_13 <= (_zz_6 || _zz_12);
  end


endmodule
