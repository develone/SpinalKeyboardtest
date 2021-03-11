// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : MasterTopLevel
// Git hash  : 951f27b8d82b5a73c53fd2dba08016776973a258



module MasterTopLevel (
  input               io_m_axi_aw_valid,
  output              io_m_axi_aw_ready,
  input      [31:0]   io_m_axi_aw_payload_addr,
  input               io_m_axi_w_valid,
  output              io_m_axi_w_ready,
  input      [31:0]   io_m_axi_w_payload_data,
  input      [3:0]    io_m_axi_w_payload_strb,
  input               io_m_axi_w_payload_last,
  output              io_m_axi_b_valid,
  input               io_m_axi_b_ready,
  output     [1:0]    io_m_axi_b_payload_resp,
  input               io_m_axi_ar_valid,
  output              io_m_axi_ar_ready,
  input      [31:0]   io_m_axi_ar_payload_addr,
  output              io_m_axi_r_valid,
  input               io_m_axi_r_ready,
  output     [31:0]   io_m_axi_r_payload_data,
  output     [1:0]    io_m_axi_r_payload_resp,
  output              io_m_axi_r_payload_last,
  output              io_zqaxi_aw_valid,
  input               io_zqaxi_aw_ready,
  output     [31:0]   io_zqaxi_aw_payload_addr,
  output     [3:0]    io_zqaxi_aw_payload_id,
  output     [3:0]    io_zqaxi_aw_payload_region,
  output     [7:0]    io_zqaxi_aw_payload_len,
  output     [2:0]    io_zqaxi_aw_payload_size,
  output     [1:0]    io_zqaxi_aw_payload_burst,
  output     [0:0]    io_zqaxi_aw_payload_lock,
  output     [3:0]    io_zqaxi_aw_payload_cache,
  output     [3:0]    io_zqaxi_aw_payload_qos,
  output     [2:0]    io_zqaxi_aw_payload_prot,
  output              io_zqaxi_w_valid,
  input               io_zqaxi_w_ready,
  output     [31:0]   io_zqaxi_w_payload_data,
  output     [3:0]    io_zqaxi_w_payload_strb,
  output              io_zqaxi_w_payload_last,
  input               io_zqaxi_b_valid,
  output              io_zqaxi_b_ready,
  input      [3:0]    io_zqaxi_b_payload_id,
  input      [1:0]    io_zqaxi_b_payload_resp,
  output              io_zqaxi_ar_valid,
  input               io_zqaxi_ar_ready,
  output     [31:0]   io_zqaxi_ar_payload_addr,
  output     [3:0]    io_zqaxi_ar_payload_id,
  output     [3:0]    io_zqaxi_ar_payload_region,
  output     [7:0]    io_zqaxi_ar_payload_len,
  output     [2:0]    io_zqaxi_ar_payload_size,
  output     [1:0]    io_zqaxi_ar_payload_burst,
  output     [0:0]    io_zqaxi_ar_payload_lock,
  output     [3:0]    io_zqaxi_ar_payload_cache,
  output     [3:0]    io_zqaxi_ar_payload_qos,
  output     [2:0]    io_zqaxi_ar_payload_prot,
  input               io_zqaxi_r_valid,
  output              io_zqaxi_r_ready,
  input      [31:0]   io_zqaxi_r_payload_data,
  input      [3:0]    io_zqaxi_r_payload_id,
  input      [1:0]    io_zqaxi_r_payload_resp,
  input               io_zqaxi_r_payload_last,
  input               clk,
  input               reset
);
  wire                _zz_23;
  wire                _zz_24;
  wire                _zz_25;
  wire                _zz_26;
  wire       [11:0]   _zz_27;
  wire       [2:0]    _zz_28;
  wire       [1:0]    _zz_29;
  wire       [11:0]   _zz_30;
  wire       [2:0]    _zz_31;
  wire       [1:0]    _zz_32;
  wire                _zz_33;
  wire                ram_io_axi_arw_ready;
  wire                ram_io_axi_w_ready;
  wire                ram_io_axi_b_valid;
  wire       [3:0]    ram_io_axi_b_payload_id;
  wire       [1:0]    ram_io_axi_b_payload_resp;
  wire                ram_io_axi_r_valid;
  wire       [31:0]   ram_io_axi_r_payload_data;
  wire       [3:0]    ram_io_axi_r_payload_id;
  wire       [1:0]    ram_io_axi_r_payload_resp;
  wire                ram_io_axi_r_payload_last;
  wire                io_m_axi_readOnly_decoder_io_input_ar_ready;
  wire                io_m_axi_readOnly_decoder_io_input_r_valid;
  wire       [31:0]   io_m_axi_readOnly_decoder_io_input_r_payload_data;
  wire       [1:0]    io_m_axi_readOnly_decoder_io_input_r_payload_resp;
  wire                io_m_axi_readOnly_decoder_io_input_r_payload_last;
  wire                io_m_axi_readOnly_decoder_io_outputs_0_ar_valid;
  wire       [31:0]   io_m_axi_readOnly_decoder_io_outputs_0_ar_payload_addr;
  wire                io_m_axi_readOnly_decoder_io_outputs_0_r_ready;
  wire                io_m_axi_readOnly_decoder_io_outputs_1_ar_valid;
  wire       [31:0]   io_m_axi_readOnly_decoder_io_outputs_1_ar_payload_addr;
  wire                io_m_axi_readOnly_decoder_io_outputs_1_r_ready;
  wire                io_m_axi_writeOnly_decoder_io_input_aw_ready;
  wire                io_m_axi_writeOnly_decoder_io_input_w_ready;
  wire                io_m_axi_writeOnly_decoder_io_input_b_valid;
  wire       [1:0]    io_m_axi_writeOnly_decoder_io_input_b_payload_resp;
  wire                io_m_axi_writeOnly_decoder_io_outputs_0_aw_valid;
  wire       [31:0]   io_m_axi_writeOnly_decoder_io_outputs_0_aw_payload_addr;
  wire                io_m_axi_writeOnly_decoder_io_outputs_0_w_valid;
  wire       [31:0]   io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_data;
  wire       [3:0]    io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_strb;
  wire                io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_last;
  wire                io_m_axi_writeOnly_decoder_io_outputs_0_b_ready;
  wire                io_m_axi_writeOnly_decoder_io_outputs_1_aw_valid;
  wire       [31:0]   io_m_axi_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  wire                io_m_axi_writeOnly_decoder_io_outputs_1_w_valid;
  wire       [31:0]   io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_data;
  wire       [3:0]    io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_strb;
  wire                io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_last;
  wire                io_m_axi_writeOnly_decoder_io_outputs_1_b_ready;
  wire                ram_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                ram_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   ram_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [3:0]    ram_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    ram_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                ram_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                ram_io_axi_arbiter_io_writeInputs_0_aw_ready;
  wire                ram_io_axi_arbiter_io_writeInputs_0_w_ready;
  wire                ram_io_axi_arbiter_io_writeInputs_0_b_valid;
  wire       [3:0]    ram_io_axi_arbiter_io_writeInputs_0_b_payload_id;
  wire       [1:0]    ram_io_axi_arbiter_io_writeInputs_0_b_payload_resp;
  wire                ram_io_axi_arbiter_io_output_arw_valid;
  wire       [11:0]   ram_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    ram_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    ram_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    ram_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    ram_io_axi_arbiter_io_output_arw_payload_burst;
  wire                ram_io_axi_arbiter_io_output_arw_payload_write;
  wire                ram_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   ram_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    ram_io_axi_arbiter_io_output_w_payload_strb;
  wire                ram_io_axi_arbiter_io_output_w_payload_last;
  wire                ram_io_axi_arbiter_io_output_b_ready;
  wire                ram_io_axi_arbiter_io_output_r_ready;
  wire                _zz_34;
  wire                _zz_35;
  wire                io_zqaxi_readOnly_ar_valid;
  wire                io_zqaxi_readOnly_ar_ready;
  wire       [31:0]   io_zqaxi_readOnly_ar_payload_addr;
  wire       [3:0]    io_zqaxi_readOnly_ar_payload_id;
  wire       [3:0]    io_zqaxi_readOnly_ar_payload_region;
  wire       [7:0]    io_zqaxi_readOnly_ar_payload_len;
  wire       [2:0]    io_zqaxi_readOnly_ar_payload_size;
  wire       [1:0]    io_zqaxi_readOnly_ar_payload_burst;
  wire       [0:0]    io_zqaxi_readOnly_ar_payload_lock;
  wire       [3:0]    io_zqaxi_readOnly_ar_payload_cache;
  wire       [3:0]    io_zqaxi_readOnly_ar_payload_qos;
  wire       [2:0]    io_zqaxi_readOnly_ar_payload_prot;
  wire                io_zqaxi_readOnly_r_valid;
  wire                io_zqaxi_readOnly_r_ready;
  wire       [31:0]   io_zqaxi_readOnly_r_payload_data;
  wire       [3:0]    io_zqaxi_readOnly_r_payload_id;
  wire       [1:0]    io_zqaxi_readOnly_r_payload_resp;
  wire                io_zqaxi_readOnly_r_payload_last;
  wire                io_zqaxi_writeOnly_aw_valid;
  wire                io_zqaxi_writeOnly_aw_ready;
  wire       [31:0]   io_zqaxi_writeOnly_aw_payload_addr;
  wire       [3:0]    io_zqaxi_writeOnly_aw_payload_id;
  wire       [3:0]    io_zqaxi_writeOnly_aw_payload_region;
  wire       [7:0]    io_zqaxi_writeOnly_aw_payload_len;
  wire       [2:0]    io_zqaxi_writeOnly_aw_payload_size;
  wire       [1:0]    io_zqaxi_writeOnly_aw_payload_burst;
  wire       [0:0]    io_zqaxi_writeOnly_aw_payload_lock;
  wire       [3:0]    io_zqaxi_writeOnly_aw_payload_cache;
  wire       [3:0]    io_zqaxi_writeOnly_aw_payload_qos;
  wire       [2:0]    io_zqaxi_writeOnly_aw_payload_prot;
  wire                io_zqaxi_writeOnly_w_valid;
  wire                io_zqaxi_writeOnly_w_ready;
  wire       [31:0]   io_zqaxi_writeOnly_w_payload_data;
  wire       [3:0]    io_zqaxi_writeOnly_w_payload_strb;
  wire                io_zqaxi_writeOnly_w_payload_last;
  wire                io_zqaxi_writeOnly_b_valid;
  wire                io_zqaxi_writeOnly_b_ready;
  wire       [3:0]    io_zqaxi_writeOnly_b_payload_id;
  wire       [1:0]    io_zqaxi_writeOnly_b_payload_resp;
  wire                io_m_axi_readOnly_ar_valid;
  wire                io_m_axi_readOnly_ar_ready;
  wire       [31:0]   io_m_axi_readOnly_ar_payload_addr;
  wire                io_m_axi_readOnly_r_valid;
  wire                io_m_axi_readOnly_r_ready;
  wire       [31:0]   io_m_axi_readOnly_r_payload_data;
  wire       [1:0]    io_m_axi_readOnly_r_payload_resp;
  wire                io_m_axi_readOnly_r_payload_last;
  wire                io_m_axi_writeOnly_aw_valid;
  wire                io_m_axi_writeOnly_aw_ready;
  wire       [31:0]   io_m_axi_writeOnly_aw_payload_addr;
  wire                io_m_axi_writeOnly_w_valid;
  wire                io_m_axi_writeOnly_w_ready;
  wire       [31:0]   io_m_axi_writeOnly_w_payload_data;
  wire       [3:0]    io_m_axi_writeOnly_w_payload_strb;
  wire                io_m_axi_writeOnly_w_payload_last;
  wire                io_m_axi_writeOnly_b_valid;
  wire                io_m_axi_writeOnly_b_ready;
  wire       [1:0]    io_m_axi_writeOnly_b_payload_resp;
  wire                _zz_1;
  wire                _zz_2;
  reg                 _zz_3;
  wire                _zz_4;
  wire                _zz_5;
  reg                 _zz_6;
  wire                _zz_7;
  wire                _zz_8;
  reg                 _zz_9;
  wire                _zz_10;
  wire                _zz_11;
  reg                 _zz_12;
  wire       [3:0]    _zz_13;
  wire       [7:0]    _zz_14;
  wire       [3:0]    _zz_15;
  wire       [7:0]    _zz_16;
  wire                ram_io_axi_arbiter_io_output_arw_halfPipe_valid;
  wire                ram_io_axi_arbiter_io_output_arw_halfPipe_ready;
  wire       [11:0]   ram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr;
  wire       [3:0]    ram_io_axi_arbiter_io_output_arw_halfPipe_payload_id;
  wire       [7:0]    ram_io_axi_arbiter_io_output_arw_halfPipe_payload_len;
  wire       [2:0]    ram_io_axi_arbiter_io_output_arw_halfPipe_payload_size;
  wire       [1:0]    ram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst;
  wire                ram_io_axi_arbiter_io_output_arw_halfPipe_payload_write;
  reg                 ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  reg                 ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready;
  reg        [11:0]   ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  reg        [3:0]    ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  reg        [7:0]    ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  reg        [2:0]    ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  reg        [1:0]    ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  reg                 ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  wire                ram_io_axi_arbiter_io_output_w_s2mPipe_valid;
  wire                ram_io_axi_arbiter_io_output_w_s2mPipe_ready;
  wire       [31:0]   ram_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
  wire       [3:0]    ram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
  wire                ram_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
  reg                 ram_io_axi_arbiter_io_output_w_s2mPipe_rValid;
  reg        [31:0]   ram_io_axi_arbiter_io_output_w_s2mPipe_rData_data;
  reg        [3:0]    ram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb;
  reg                 ram_io_axi_arbiter_io_output_w_s2mPipe_rData_last;
  wire                ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid;
  wire                ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready;
  wire       [31:0]   ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data;
  wire       [3:0]    ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb;
  wire                ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last;
  reg                 ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid;
  reg        [31:0]   ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data;
  reg        [3:0]    ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb;
  reg                 ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last;
  wire       [3:0]    _zz_17;
  wire       [3:0]    _zz_18;
  wire       [7:0]    _zz_19;
  wire       [3:0]    _zz_20;
  wire       [3:0]    _zz_21;
  wire       [7:0]    _zz_22;

  assign _zz_34 = (! ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid);
  assign _zz_35 = (_zz_33 && (! ram_io_axi_arbiter_io_output_w_s2mPipe_ready));
  Axi4SharedOnChipRam ram (
    .io_axi_arw_valid            (ram_io_axi_arbiter_io_output_arw_halfPipe_valid                    ), //i
    .io_axi_arw_ready            (ram_io_axi_arw_ready                                               ), //o
    .io_axi_arw_payload_addr     (ram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr[11:0]       ), //i
    .io_axi_arw_payload_id       (ram_io_axi_arbiter_io_output_arw_halfPipe_payload_id[3:0]          ), //i
    .io_axi_arw_payload_len      (ram_io_axi_arbiter_io_output_arw_halfPipe_payload_len[7:0]         ), //i
    .io_axi_arw_payload_size     (ram_io_axi_arbiter_io_output_arw_halfPipe_payload_size[2:0]        ), //i
    .io_axi_arw_payload_burst    (ram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst[1:0]       ), //i
    .io_axi_arw_payload_write    (ram_io_axi_arbiter_io_output_arw_halfPipe_payload_write            ), //i
    .io_axi_w_valid              (ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid               ), //i
    .io_axi_w_ready              (ram_io_axi_w_ready                                                 ), //o
    .io_axi_w_payload_data       (ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data[31:0]  ), //i
    .io_axi_w_payload_strb       (ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb[3:0]   ), //i
    .io_axi_w_payload_last       (ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last        ), //i
    .io_axi_b_valid              (ram_io_axi_b_valid                                                 ), //o
    .io_axi_b_ready              (ram_io_axi_arbiter_io_output_b_ready                               ), //i
    .io_axi_b_payload_id         (ram_io_axi_b_payload_id[3:0]                                       ), //o
    .io_axi_b_payload_resp       (ram_io_axi_b_payload_resp[1:0]                                     ), //o
    .io_axi_r_valid              (ram_io_axi_r_valid                                                 ), //o
    .io_axi_r_ready              (ram_io_axi_arbiter_io_output_r_ready                               ), //i
    .io_axi_r_payload_data       (ram_io_axi_r_payload_data[31:0]                                    ), //o
    .io_axi_r_payload_id         (ram_io_axi_r_payload_id[3:0]                                       ), //o
    .io_axi_r_payload_resp       (ram_io_axi_r_payload_resp[1:0]                                     ), //o
    .io_axi_r_payload_last       (ram_io_axi_r_payload_last                                          ), //o
    .clk                         (clk                                                                ), //i
    .reset                       (reset                                                              )  //i
  );
  Axi4ReadOnlyDecoder io_m_axi_readOnly_decoder (
    .io_input_ar_valid               (io_m_axi_readOnly_ar_valid                                    ), //i
    .io_input_ar_ready               (io_m_axi_readOnly_decoder_io_input_ar_ready                   ), //o
    .io_input_ar_payload_addr        (io_m_axi_readOnly_ar_payload_addr[31:0]                       ), //i
    .io_input_r_valid                (io_m_axi_readOnly_decoder_io_input_r_valid                    ), //o
    .io_input_r_ready                (io_m_axi_readOnly_r_ready                                     ), //i
    .io_input_r_payload_data         (io_m_axi_readOnly_decoder_io_input_r_payload_data[31:0]       ), //o
    .io_input_r_payload_resp         (io_m_axi_readOnly_decoder_io_input_r_payload_resp[1:0]        ), //o
    .io_input_r_payload_last         (io_m_axi_readOnly_decoder_io_input_r_payload_last             ), //o
    .io_outputs_0_ar_valid           (io_m_axi_readOnly_decoder_io_outputs_0_ar_valid               ), //o
    .io_outputs_0_ar_ready           (_zz_23                                                        ), //i
    .io_outputs_0_ar_payload_addr    (io_m_axi_readOnly_decoder_io_outputs_0_ar_payload_addr[31:0]  ), //o
    .io_outputs_0_r_valid            (ram_io_axi_arbiter_io_readInputs_0_r_valid                    ), //i
    .io_outputs_0_r_ready            (io_m_axi_readOnly_decoder_io_outputs_0_r_ready                ), //o
    .io_outputs_0_r_payload_data     (ram_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]       ), //i
    .io_outputs_0_r_payload_resp     (ram_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]        ), //i
    .io_outputs_0_r_payload_last     (ram_io_axi_arbiter_io_readInputs_0_r_payload_last             ), //i
    .io_outputs_1_ar_valid           (io_m_axi_readOnly_decoder_io_outputs_1_ar_valid               ), //o
    .io_outputs_1_ar_ready           (_zz_24                                                        ), //i
    .io_outputs_1_ar_payload_addr    (io_m_axi_readOnly_decoder_io_outputs_1_ar_payload_addr[31:0]  ), //o
    .io_outputs_1_r_valid            (io_zqaxi_readOnly_r_valid                                     ), //i
    .io_outputs_1_r_ready            (io_m_axi_readOnly_decoder_io_outputs_1_r_ready                ), //o
    .io_outputs_1_r_payload_data     (io_zqaxi_readOnly_r_payload_data[31:0]                        ), //i
    .io_outputs_1_r_payload_resp     (io_zqaxi_readOnly_r_payload_resp[1:0]                         ), //i
    .io_outputs_1_r_payload_last     (io_zqaxi_readOnly_r_payload_last                              ), //i
    .clk                             (clk                                                           ), //i
    .reset                           (reset                                                         )  //i
  );
  Axi4WriteOnlyDecoder io_m_axi_writeOnly_decoder (
    .io_input_aw_valid               (io_m_axi_writeOnly_aw_valid                                    ), //i
    .io_input_aw_ready               (io_m_axi_writeOnly_decoder_io_input_aw_ready                   ), //o
    .io_input_aw_payload_addr        (io_m_axi_writeOnly_aw_payload_addr[31:0]                       ), //i
    .io_input_w_valid                (io_m_axi_writeOnly_w_valid                                     ), //i
    .io_input_w_ready                (io_m_axi_writeOnly_decoder_io_input_w_ready                    ), //o
    .io_input_w_payload_data         (io_m_axi_writeOnly_w_payload_data[31:0]                        ), //i
    .io_input_w_payload_strb         (io_m_axi_writeOnly_w_payload_strb[3:0]                         ), //i
    .io_input_w_payload_last         (io_m_axi_writeOnly_w_payload_last                              ), //i
    .io_input_b_valid                (io_m_axi_writeOnly_decoder_io_input_b_valid                    ), //o
    .io_input_b_ready                (io_m_axi_writeOnly_b_ready                                     ), //i
    .io_input_b_payload_resp         (io_m_axi_writeOnly_decoder_io_input_b_payload_resp[1:0]        ), //o
    .io_outputs_0_aw_valid           (io_m_axi_writeOnly_decoder_io_outputs_0_aw_valid               ), //o
    .io_outputs_0_aw_ready           (_zz_25                                                         ), //i
    .io_outputs_0_aw_payload_addr    (io_m_axi_writeOnly_decoder_io_outputs_0_aw_payload_addr[31:0]  ), //o
    .io_outputs_0_w_valid            (io_m_axi_writeOnly_decoder_io_outputs_0_w_valid                ), //o
    .io_outputs_0_w_ready            (ram_io_axi_arbiter_io_writeInputs_0_w_ready                    ), //i
    .io_outputs_0_w_payload_data     (io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_data[31:0]   ), //o
    .io_outputs_0_w_payload_strb     (io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_strb[3:0]    ), //o
    .io_outputs_0_w_payload_last     (io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_last         ), //o
    .io_outputs_0_b_valid            (ram_io_axi_arbiter_io_writeInputs_0_b_valid                    ), //i
    .io_outputs_0_b_ready            (io_m_axi_writeOnly_decoder_io_outputs_0_b_ready                ), //o
    .io_outputs_0_b_payload_resp     (ram_io_axi_arbiter_io_writeInputs_0_b_payload_resp[1:0]        ), //i
    .io_outputs_1_aw_valid           (io_m_axi_writeOnly_decoder_io_outputs_1_aw_valid               ), //o
    .io_outputs_1_aw_ready           (_zz_26                                                         ), //i
    .io_outputs_1_aw_payload_addr    (io_m_axi_writeOnly_decoder_io_outputs_1_aw_payload_addr[31:0]  ), //o
    .io_outputs_1_w_valid            (io_m_axi_writeOnly_decoder_io_outputs_1_w_valid                ), //o
    .io_outputs_1_w_ready            (io_zqaxi_writeOnly_w_ready                                     ), //i
    .io_outputs_1_w_payload_data     (io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_data[31:0]   ), //o
    .io_outputs_1_w_payload_strb     (io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_strb[3:0]    ), //o
    .io_outputs_1_w_payload_last     (io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_last         ), //o
    .io_outputs_1_b_valid            (io_zqaxi_writeOnly_b_valid                                     ), //i
    .io_outputs_1_b_ready            (io_m_axi_writeOnly_decoder_io_outputs_1_b_ready                ), //o
    .io_outputs_1_b_payload_resp     (io_zqaxi_writeOnly_b_payload_resp[1:0]                         ), //i
    .clk                             (clk                                                            ), //i
    .reset                           (reset                                                          )  //i
  );
  Axi4SharedArbiter ram_io_axi_arbiter (
    .io_readInputs_0_ar_valid             (_zz_1                                                         ), //i
    .io_readInputs_0_ar_ready             (ram_io_axi_arbiter_io_readInputs_0_ar_ready                   ), //o
    .io_readInputs_0_ar_payload_addr      (_zz_27[11:0]                                                  ), //i
    .io_readInputs_0_ar_payload_id        (_zz_13[3:0]                                                   ), //i
    .io_readInputs_0_ar_payload_len       (_zz_14[7:0]                                                   ), //i
    .io_readInputs_0_ar_payload_size      (_zz_28[2:0]                                                   ), //i
    .io_readInputs_0_ar_payload_burst     (_zz_29[1:0]                                                   ), //i
    .io_readInputs_0_r_valid              (ram_io_axi_arbiter_io_readInputs_0_r_valid                    ), //o
    .io_readInputs_0_r_ready              (io_m_axi_readOnly_decoder_io_outputs_0_r_ready                ), //i
    .io_readInputs_0_r_payload_data       (ram_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]       ), //o
    .io_readInputs_0_r_payload_id         (ram_io_axi_arbiter_io_readInputs_0_r_payload_id[3:0]          ), //o
    .io_readInputs_0_r_payload_resp       (ram_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]        ), //o
    .io_readInputs_0_r_payload_last       (ram_io_axi_arbiter_io_readInputs_0_r_payload_last             ), //o
    .io_writeInputs_0_aw_valid            (_zz_7                                                         ), //i
    .io_writeInputs_0_aw_ready            (ram_io_axi_arbiter_io_writeInputs_0_aw_ready                  ), //o
    .io_writeInputs_0_aw_payload_addr     (_zz_30[11:0]                                                  ), //i
    .io_writeInputs_0_aw_payload_id       (_zz_15[3:0]                                                   ), //i
    .io_writeInputs_0_aw_payload_len      (_zz_16[7:0]                                                   ), //i
    .io_writeInputs_0_aw_payload_size     (_zz_31[2:0]                                                   ), //i
    .io_writeInputs_0_aw_payload_burst    (_zz_32[1:0]                                                   ), //i
    .io_writeInputs_0_w_valid             (io_m_axi_writeOnly_decoder_io_outputs_0_w_valid               ), //i
    .io_writeInputs_0_w_ready             (ram_io_axi_arbiter_io_writeInputs_0_w_ready                   ), //o
    .io_writeInputs_0_w_payload_data      (io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_data[31:0]  ), //i
    .io_writeInputs_0_w_payload_strb      (io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_strb[3:0]   ), //i
    .io_writeInputs_0_w_payload_last      (io_m_axi_writeOnly_decoder_io_outputs_0_w_payload_last        ), //i
    .io_writeInputs_0_b_valid             (ram_io_axi_arbiter_io_writeInputs_0_b_valid                   ), //o
    .io_writeInputs_0_b_ready             (io_m_axi_writeOnly_decoder_io_outputs_0_b_ready               ), //i
    .io_writeInputs_0_b_payload_id        (ram_io_axi_arbiter_io_writeInputs_0_b_payload_id[3:0]         ), //o
    .io_writeInputs_0_b_payload_resp      (ram_io_axi_arbiter_io_writeInputs_0_b_payload_resp[1:0]       ), //o
    .io_output_arw_valid                  (ram_io_axi_arbiter_io_output_arw_valid                        ), //o
    .io_output_arw_ready                  (ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready          ), //i
    .io_output_arw_payload_addr           (ram_io_axi_arbiter_io_output_arw_payload_addr[11:0]           ), //o
    .io_output_arw_payload_id             (ram_io_axi_arbiter_io_output_arw_payload_id[3:0]              ), //o
    .io_output_arw_payload_len            (ram_io_axi_arbiter_io_output_arw_payload_len[7:0]             ), //o
    .io_output_arw_payload_size           (ram_io_axi_arbiter_io_output_arw_payload_size[2:0]            ), //o
    .io_output_arw_payload_burst          (ram_io_axi_arbiter_io_output_arw_payload_burst[1:0]           ), //o
    .io_output_arw_payload_write          (ram_io_axi_arbiter_io_output_arw_payload_write                ), //o
    .io_output_w_valid                    (ram_io_axi_arbiter_io_output_w_valid                          ), //o
    .io_output_w_ready                    (_zz_33                                                        ), //i
    .io_output_w_payload_data             (ram_io_axi_arbiter_io_output_w_payload_data[31:0]             ), //o
    .io_output_w_payload_strb             (ram_io_axi_arbiter_io_output_w_payload_strb[3:0]              ), //o
    .io_output_w_payload_last             (ram_io_axi_arbiter_io_output_w_payload_last                   ), //o
    .io_output_b_valid                    (ram_io_axi_b_valid                                            ), //i
    .io_output_b_ready                    (ram_io_axi_arbiter_io_output_b_ready                          ), //o
    .io_output_b_payload_id               (ram_io_axi_b_payload_id[3:0]                                  ), //i
    .io_output_b_payload_resp             (ram_io_axi_b_payload_resp[1:0]                                ), //i
    .io_output_r_valid                    (ram_io_axi_r_valid                                            ), //i
    .io_output_r_ready                    (ram_io_axi_arbiter_io_output_r_ready                          ), //o
    .io_output_r_payload_data             (ram_io_axi_r_payload_data[31:0]                               ), //i
    .io_output_r_payload_id               (ram_io_axi_r_payload_id[3:0]                                  ), //i
    .io_output_r_payload_resp             (ram_io_axi_r_payload_resp[1:0]                                ), //i
    .io_output_r_payload_last             (ram_io_axi_r_payload_last                                     ), //i
    .clk                                  (clk                                                           ), //i
    .reset                                (reset                                                         )  //i
  );
  assign io_zqaxi_ar_valid = io_zqaxi_readOnly_ar_valid;
  assign io_zqaxi_readOnly_ar_ready = io_zqaxi_ar_ready;
  assign io_zqaxi_ar_payload_addr = io_zqaxi_readOnly_ar_payload_addr;
  assign io_zqaxi_ar_payload_id = io_zqaxi_readOnly_ar_payload_id;
  assign io_zqaxi_ar_payload_region = io_zqaxi_readOnly_ar_payload_region;
  assign io_zqaxi_ar_payload_len = io_zqaxi_readOnly_ar_payload_len;
  assign io_zqaxi_ar_payload_size = io_zqaxi_readOnly_ar_payload_size;
  assign io_zqaxi_ar_payload_burst = io_zqaxi_readOnly_ar_payload_burst;
  assign io_zqaxi_ar_payload_lock = io_zqaxi_readOnly_ar_payload_lock;
  assign io_zqaxi_ar_payload_cache = io_zqaxi_readOnly_ar_payload_cache;
  assign io_zqaxi_ar_payload_qos = io_zqaxi_readOnly_ar_payload_qos;
  assign io_zqaxi_ar_payload_prot = io_zqaxi_readOnly_ar_payload_prot;
  assign io_zqaxi_readOnly_r_valid = io_zqaxi_r_valid;
  assign io_zqaxi_r_ready = io_zqaxi_readOnly_r_ready;
  assign io_zqaxi_readOnly_r_payload_data = io_zqaxi_r_payload_data;
  assign io_zqaxi_readOnly_r_payload_last = io_zqaxi_r_payload_last;
  assign io_zqaxi_readOnly_r_payload_id = io_zqaxi_r_payload_id;
  assign io_zqaxi_readOnly_r_payload_resp = io_zqaxi_r_payload_resp;
  assign io_zqaxi_aw_valid = io_zqaxi_writeOnly_aw_valid;
  assign io_zqaxi_writeOnly_aw_ready = io_zqaxi_aw_ready;
  assign io_zqaxi_aw_payload_addr = io_zqaxi_writeOnly_aw_payload_addr;
  assign io_zqaxi_aw_payload_id = io_zqaxi_writeOnly_aw_payload_id;
  assign io_zqaxi_aw_payload_region = io_zqaxi_writeOnly_aw_payload_region;
  assign io_zqaxi_aw_payload_len = io_zqaxi_writeOnly_aw_payload_len;
  assign io_zqaxi_aw_payload_size = io_zqaxi_writeOnly_aw_payload_size;
  assign io_zqaxi_aw_payload_burst = io_zqaxi_writeOnly_aw_payload_burst;
  assign io_zqaxi_aw_payload_lock = io_zqaxi_writeOnly_aw_payload_lock;
  assign io_zqaxi_aw_payload_cache = io_zqaxi_writeOnly_aw_payload_cache;
  assign io_zqaxi_aw_payload_qos = io_zqaxi_writeOnly_aw_payload_qos;
  assign io_zqaxi_aw_payload_prot = io_zqaxi_writeOnly_aw_payload_prot;
  assign io_zqaxi_w_valid = io_zqaxi_writeOnly_w_valid;
  assign io_zqaxi_writeOnly_w_ready = io_zqaxi_w_ready;
  assign io_zqaxi_w_payload_data = io_zqaxi_writeOnly_w_payload_data;
  assign io_zqaxi_w_payload_strb = io_zqaxi_writeOnly_w_payload_strb;
  assign io_zqaxi_w_payload_last = io_zqaxi_writeOnly_w_payload_last;
  assign io_zqaxi_writeOnly_b_valid = io_zqaxi_b_valid;
  assign io_zqaxi_b_ready = io_zqaxi_writeOnly_b_ready;
  assign io_zqaxi_writeOnly_b_payload_id = io_zqaxi_b_payload_id;
  assign io_zqaxi_writeOnly_b_payload_resp = io_zqaxi_b_payload_resp;
  assign io_m_axi_readOnly_ar_valid = io_m_axi_ar_valid;
  assign io_m_axi_ar_ready = io_m_axi_readOnly_ar_ready;
  assign io_m_axi_readOnly_ar_payload_addr = io_m_axi_ar_payload_addr;
  assign io_m_axi_r_valid = io_m_axi_readOnly_r_valid;
  assign io_m_axi_readOnly_r_ready = io_m_axi_r_ready;
  assign io_m_axi_r_payload_data = io_m_axi_readOnly_r_payload_data;
  assign io_m_axi_r_payload_last = io_m_axi_readOnly_r_payload_last;
  assign io_m_axi_r_payload_resp = io_m_axi_readOnly_r_payload_resp;
  assign io_m_axi_writeOnly_aw_valid = io_m_axi_aw_valid;
  assign io_m_axi_aw_ready = io_m_axi_writeOnly_aw_ready;
  assign io_m_axi_writeOnly_aw_payload_addr = io_m_axi_aw_payload_addr;
  assign io_m_axi_writeOnly_w_valid = io_m_axi_w_valid;
  assign io_m_axi_w_ready = io_m_axi_writeOnly_w_ready;
  assign io_m_axi_writeOnly_w_payload_data = io_m_axi_w_payload_data;
  assign io_m_axi_writeOnly_w_payload_strb = io_m_axi_w_payload_strb;
  assign io_m_axi_writeOnly_w_payload_last = io_m_axi_w_payload_last;
  assign io_m_axi_b_valid = io_m_axi_writeOnly_b_valid;
  assign io_m_axi_writeOnly_b_ready = io_m_axi_b_ready;
  assign io_m_axi_b_payload_resp = io_m_axi_writeOnly_b_payload_resp;
  assign _zz_1 = _zz_3;
  assign _zz_23 = (_zz_2 && _zz_3);
  assign _zz_2 = ram_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign _zz_4 = _zz_6;
  assign _zz_24 = (_zz_5 && _zz_6);
  assign _zz_5 = io_zqaxi_readOnly_ar_ready;
  assign io_m_axi_readOnly_ar_ready = io_m_axi_readOnly_decoder_io_input_ar_ready;
  assign io_m_axi_readOnly_r_valid = io_m_axi_readOnly_decoder_io_input_r_valid;
  assign io_m_axi_readOnly_r_payload_data = io_m_axi_readOnly_decoder_io_input_r_payload_data;
  assign io_m_axi_readOnly_r_payload_last = io_m_axi_readOnly_decoder_io_input_r_payload_last;
  assign io_m_axi_readOnly_r_payload_resp = io_m_axi_readOnly_decoder_io_input_r_payload_resp;
  assign _zz_7 = _zz_9;
  assign _zz_25 = (_zz_8 && _zz_9);
  assign _zz_8 = ram_io_axi_arbiter_io_writeInputs_0_aw_ready;
  assign _zz_10 = _zz_12;
  assign _zz_26 = (_zz_11 && _zz_12);
  assign _zz_11 = io_zqaxi_writeOnly_aw_ready;
  assign io_m_axi_writeOnly_aw_ready = io_m_axi_writeOnly_decoder_io_input_aw_ready;
  assign io_m_axi_writeOnly_w_ready = io_m_axi_writeOnly_decoder_io_input_w_ready;
  assign io_m_axi_writeOnly_b_valid = io_m_axi_writeOnly_decoder_io_input_b_valid;
  assign io_m_axi_writeOnly_b_payload_resp = io_m_axi_writeOnly_decoder_io_input_b_payload_resp;
  assign _zz_27 = io_m_axi_readOnly_decoder_io_outputs_0_ar_payload_addr[11:0];
  assign _zz_13[3 : 0] = 4'b0000;
  assign _zz_14[7 : 0] = 8'h0;
  assign _zz_28 = 3'b010;
  assign _zz_29 = 2'b01;
  assign _zz_30 = io_m_axi_writeOnly_decoder_io_outputs_0_aw_payload_addr[11:0];
  assign _zz_15[3 : 0] = 4'b0000;
  assign _zz_16[7 : 0] = 8'h0;
  assign _zz_31 = 3'b010;
  assign _zz_32 = 2'b01;
  assign ram_io_axi_arbiter_io_output_arw_halfPipe_valid = ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid;
  assign ram_io_axi_arbiter_io_output_arw_halfPipe_payload_addr = ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr;
  assign ram_io_axi_arbiter_io_output_arw_halfPipe_payload_id = ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id;
  assign ram_io_axi_arbiter_io_output_arw_halfPipe_payload_len = ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len;
  assign ram_io_axi_arbiter_io_output_arw_halfPipe_payload_size = ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size;
  assign ram_io_axi_arbiter_io_output_arw_halfPipe_payload_burst = ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst;
  assign ram_io_axi_arbiter_io_output_arw_halfPipe_payload_write = ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write;
  assign ram_io_axi_arbiter_io_output_arw_halfPipe_ready = ram_io_axi_arw_ready;
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_valid = (ram_io_axi_arbiter_io_output_w_valid || ram_io_axi_arbiter_io_output_w_s2mPipe_rValid);
  assign _zz_33 = (! ram_io_axi_arbiter_io_output_w_s2mPipe_rValid);
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_payload_data = (ram_io_axi_arbiter_io_output_w_s2mPipe_rValid ? ram_io_axi_arbiter_io_output_w_s2mPipe_rData_data : ram_io_axi_arbiter_io_output_w_payload_data);
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb = (ram_io_axi_arbiter_io_output_w_s2mPipe_rValid ? ram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb : ram_io_axi_arbiter_io_output_w_payload_strb);
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_payload_last = (ram_io_axi_arbiter_io_output_w_s2mPipe_rValid ? ram_io_axi_arbiter_io_output_w_s2mPipe_rData_last : ram_io_axi_arbiter_io_output_w_payload_last);
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_ready = ((1'b1 && (! ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid)) || ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready);
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_valid = ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid;
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_data = ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data;
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_strb = ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb;
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_payload_last = ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last;
  assign ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_ready = ram_io_axi_w_ready;
  assign io_zqaxi_readOnly_ar_valid = _zz_4;
  assign io_zqaxi_readOnly_ar_payload_addr = io_m_axi_readOnly_decoder_io_outputs_1_ar_payload_addr;
  assign _zz_17[3 : 0] = 4'b0000;
  assign io_zqaxi_readOnly_ar_payload_id = _zz_17;
  assign _zz_18[3 : 0] = 4'b0000;
  assign io_zqaxi_readOnly_ar_payload_region = _zz_18;
  assign _zz_19[7 : 0] = 8'h0;
  assign io_zqaxi_readOnly_ar_payload_len = _zz_19;
  assign io_zqaxi_readOnly_ar_payload_size = 3'b010;
  assign io_zqaxi_readOnly_ar_payload_burst = 2'b01;
  assign io_zqaxi_readOnly_ar_payload_lock = 1'b0;
  assign io_zqaxi_readOnly_ar_payload_cache = 4'b0000;
  assign io_zqaxi_readOnly_ar_payload_qos = 4'b0000;
  assign io_zqaxi_readOnly_ar_payload_prot = 3'b010;
  assign io_zqaxi_readOnly_r_ready = io_m_axi_readOnly_decoder_io_outputs_1_r_ready;
  assign io_zqaxi_writeOnly_aw_valid = _zz_10;
  assign io_zqaxi_writeOnly_aw_payload_addr = io_m_axi_writeOnly_decoder_io_outputs_1_aw_payload_addr;
  assign _zz_20[3 : 0] = 4'b0000;
  assign io_zqaxi_writeOnly_aw_payload_id = _zz_20;
  assign _zz_21[3 : 0] = 4'b0000;
  assign io_zqaxi_writeOnly_aw_payload_region = _zz_21;
  assign _zz_22[7 : 0] = 8'h0;
  assign io_zqaxi_writeOnly_aw_payload_len = _zz_22;
  assign io_zqaxi_writeOnly_aw_payload_size = 3'b010;
  assign io_zqaxi_writeOnly_aw_payload_burst = 2'b01;
  assign io_zqaxi_writeOnly_aw_payload_lock = 1'b0;
  assign io_zqaxi_writeOnly_aw_payload_cache = 4'b0000;
  assign io_zqaxi_writeOnly_aw_payload_qos = 4'b0000;
  assign io_zqaxi_writeOnly_aw_payload_prot = 3'b010;
  assign io_zqaxi_writeOnly_w_valid = io_m_axi_writeOnly_decoder_io_outputs_1_w_valid;
  assign io_zqaxi_writeOnly_w_payload_data = io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_data;
  assign io_zqaxi_writeOnly_w_payload_strb = io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_strb;
  assign io_zqaxi_writeOnly_w_payload_last = io_m_axi_writeOnly_decoder_io_outputs_1_w_payload_last;
  assign io_zqaxi_writeOnly_b_ready = io_m_axi_writeOnly_decoder_io_outputs_1_b_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_3 <= 1'b0;
      _zz_6 <= 1'b0;
      _zz_9 <= 1'b0;
      _zz_12 <= 1'b0;
      ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= 1'b0;
      ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= 1'b1;
      ram_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid <= 1'b0;
    end else begin
      if(io_m_axi_readOnly_decoder_io_outputs_0_ar_valid)begin
        _zz_3 <= 1'b1;
      end
      if((_zz_1 && _zz_2))begin
        _zz_3 <= 1'b0;
      end
      if(io_m_axi_readOnly_decoder_io_outputs_1_ar_valid)begin
        _zz_6 <= 1'b1;
      end
      if((_zz_4 && _zz_5))begin
        _zz_6 <= 1'b0;
      end
      if(io_m_axi_writeOnly_decoder_io_outputs_0_aw_valid)begin
        _zz_9 <= 1'b1;
      end
      if((_zz_7 && _zz_8))begin
        _zz_9 <= 1'b0;
      end
      if(io_m_axi_writeOnly_decoder_io_outputs_1_aw_valid)begin
        _zz_12 <= 1'b1;
      end
      if((_zz_10 && _zz_11))begin
        _zz_12 <= 1'b0;
      end
      if(_zz_34)begin
        ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= ram_io_axi_arbiter_io_output_arw_valid;
        ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= (! ram_io_axi_arbiter_io_output_arw_valid);
      end else begin
        ram_io_axi_arbiter_io_output_arw_halfPipe_regs_valid <= (! ram_io_axi_arbiter_io_output_arw_halfPipe_ready);
        ram_io_axi_arbiter_io_output_arw_halfPipe_regs_ready <= ram_io_axi_arbiter_io_output_arw_halfPipe_ready;
      end
      if(ram_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
        ram_io_axi_arbiter_io_output_w_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_35)begin
        ram_io_axi_arbiter_io_output_w_s2mPipe_rValid <= ram_io_axi_arbiter_io_output_w_valid;
      end
      if(ram_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
        ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rValid <= ram_io_axi_arbiter_io_output_w_s2mPipe_valid;
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_34)begin
      ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_addr <= ram_io_axi_arbiter_io_output_arw_payload_addr;
      ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_id <= ram_io_axi_arbiter_io_output_arw_payload_id;
      ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_len <= ram_io_axi_arbiter_io_output_arw_payload_len;
      ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_size <= ram_io_axi_arbiter_io_output_arw_payload_size;
      ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_burst <= ram_io_axi_arbiter_io_output_arw_payload_burst;
      ram_io_axi_arbiter_io_output_arw_halfPipe_regs_payload_write <= ram_io_axi_arbiter_io_output_arw_payload_write;
    end
    if(_zz_35)begin
      ram_io_axi_arbiter_io_output_w_s2mPipe_rData_data <= ram_io_axi_arbiter_io_output_w_payload_data;
      ram_io_axi_arbiter_io_output_w_s2mPipe_rData_strb <= ram_io_axi_arbiter_io_output_w_payload_strb;
      ram_io_axi_arbiter_io_output_w_s2mPipe_rData_last <= ram_io_axi_arbiter_io_output_w_payload_last;
    end
    if(ram_io_axi_arbiter_io_output_w_s2mPipe_ready)begin
      ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_data <= ram_io_axi_arbiter_io_output_w_s2mPipe_payload_data;
      ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_strb <= ram_io_axi_arbiter_io_output_w_s2mPipe_payload_strb;
      ram_io_axi_arbiter_io_output_w_s2mPipe_m2sPipe_rData_last <= ram_io_axi_arbiter_io_output_w_s2mPipe_payload_last;
    end
  end


endmodule

module Axi4SharedArbiter (
  input               io_readInputs_0_ar_valid,
  output              io_readInputs_0_ar_ready,
  input      [11:0]   io_readInputs_0_ar_payload_addr,
  input      [3:0]    io_readInputs_0_ar_payload_id,
  input      [7:0]    io_readInputs_0_ar_payload_len,
  input      [2:0]    io_readInputs_0_ar_payload_size,
  input      [1:0]    io_readInputs_0_ar_payload_burst,
  output              io_readInputs_0_r_valid,
  input               io_readInputs_0_r_ready,
  output     [31:0]   io_readInputs_0_r_payload_data,
  output     [3:0]    io_readInputs_0_r_payload_id,
  output     [1:0]    io_readInputs_0_r_payload_resp,
  output              io_readInputs_0_r_payload_last,
  input               io_writeInputs_0_aw_valid,
  output              io_writeInputs_0_aw_ready,
  input      [11:0]   io_writeInputs_0_aw_payload_addr,
  input      [3:0]    io_writeInputs_0_aw_payload_id,
  input      [7:0]    io_writeInputs_0_aw_payload_len,
  input      [2:0]    io_writeInputs_0_aw_payload_size,
  input      [1:0]    io_writeInputs_0_aw_payload_burst,
  input               io_writeInputs_0_w_valid,
  output              io_writeInputs_0_w_ready,
  input      [31:0]   io_writeInputs_0_w_payload_data,
  input      [3:0]    io_writeInputs_0_w_payload_strb,
  input               io_writeInputs_0_w_payload_last,
  output              io_writeInputs_0_b_valid,
  input               io_writeInputs_0_b_ready,
  output     [3:0]    io_writeInputs_0_b_payload_id,
  output     [1:0]    io_writeInputs_0_b_payload_resp,
  output              io_output_arw_valid,
  input               io_output_arw_ready,
  output     [11:0]   io_output_arw_payload_addr,
  output     [3:0]    io_output_arw_payload_id,
  output     [7:0]    io_output_arw_payload_len,
  output     [2:0]    io_output_arw_payload_size,
  output     [1:0]    io_output_arw_payload_burst,
  output              io_output_arw_payload_write,
  output              io_output_w_valid,
  input               io_output_w_ready,
  output     [31:0]   io_output_w_payload_data,
  output     [3:0]    io_output_w_payload_strb,
  output              io_output_w_payload_last,
  input               io_output_b_valid,
  output              io_output_b_ready,
  input      [3:0]    io_output_b_payload_id,
  input      [1:0]    io_output_b_payload_resp,
  input               io_output_r_valid,
  output              io_output_r_ready,
  input      [31:0]   io_output_r_payload_data,
  input      [3:0]    io_output_r_payload_id,
  input      [1:0]    io_output_r_payload_resp,
  input               io_output_r_payload_last,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [11:0]   cmdArbiter_io_output_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdArbiter_io_output_fork_io_input_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_0_valid;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_valid;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy;
  wire                _zz_4;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [11:0]   inputsCmd_0_payload_addr;
  wire       [3:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [11:0]   inputsCmd_1_payload_addr;
  wire       [3:0]    inputsCmd_1_payload_id;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire                inputsCmd_1_payload_write;
  reg                 cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
  wire       [11:0]   cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id;
  wire       [7:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len;
  wire       [2:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size;
  wire       [1:0]    cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid;
  wire                cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                writeLogic_writeRspSels_0;
  wire                readRspSels_0;

  assign _zz_4 = (! cmdArbiter_io_output_fork_io_outputs_1_payload_write);
  StreamArbiter cmdArbiter (
    .io_inputs_0_valid            (inputsCmd_0_valid                         ), //i
    .io_inputs_0_ready            (cmdArbiter_io_inputs_0_ready              ), //o
    .io_inputs_0_payload_addr     (inputsCmd_0_payload_addr[11:0]            ), //i
    .io_inputs_0_payload_id       (inputsCmd_0_payload_id[3:0]               ), //i
    .io_inputs_0_payload_len      (inputsCmd_0_payload_len[7:0]              ), //i
    .io_inputs_0_payload_size     (inputsCmd_0_payload_size[2:0]             ), //i
    .io_inputs_0_payload_burst    (inputsCmd_0_payload_burst[1:0]            ), //i
    .io_inputs_0_payload_write    (inputsCmd_0_payload_write                 ), //i
    .io_inputs_1_valid            (inputsCmd_1_valid                         ), //i
    .io_inputs_1_ready            (cmdArbiter_io_inputs_1_ready              ), //o
    .io_inputs_1_payload_addr     (inputsCmd_1_payload_addr[11:0]            ), //i
    .io_inputs_1_payload_id       (inputsCmd_1_payload_id[3:0]               ), //i
    .io_inputs_1_payload_len      (inputsCmd_1_payload_len[7:0]              ), //i
    .io_inputs_1_payload_size     (inputsCmd_1_payload_size[2:0]             ), //i
    .io_inputs_1_payload_burst    (inputsCmd_1_payload_burst[1:0]            ), //i
    .io_inputs_1_payload_write    (inputsCmd_1_payload_write                 ), //i
    .io_output_valid              (cmdArbiter_io_output_valid                ), //o
    .io_output_ready              (cmdArbiter_io_output_fork_io_input_ready  ), //i
    .io_output_payload_addr       (cmdArbiter_io_output_payload_addr[11:0]   ), //o
    .io_output_payload_id         (cmdArbiter_io_output_payload_id[3:0]      ), //o
    .io_output_payload_len        (cmdArbiter_io_output_payload_len[7:0]     ), //o
    .io_output_payload_size       (cmdArbiter_io_output_payload_size[2:0]    ), //o
    .io_output_payload_burst      (cmdArbiter_io_output_payload_burst[1:0]   ), //o
    .io_output_payload_write      (cmdArbiter_io_output_payload_write        ), //o
    .io_chosen                    (cmdArbiter_io_chosen                      ), //o
    .io_chosenOH                  (cmdArbiter_io_chosenOH[1:0]               ), //o
    .clk                          (clk                                       ), //i
    .reset                        (reset                                     )  //i
  );
  StreamFork cmdArbiter_io_output_fork (
    .io_input_valid                (cmdArbiter_io_output_valid                                 ), //i
    .io_input_ready                (cmdArbiter_io_output_fork_io_input_ready                   ), //o
    .io_input_payload_addr         (cmdArbiter_io_output_payload_addr[11:0]                    ), //i
    .io_input_payload_id           (cmdArbiter_io_output_payload_id[3:0]                       ), //i
    .io_input_payload_len          (cmdArbiter_io_output_payload_len[7:0]                      ), //i
    .io_input_payload_size         (cmdArbiter_io_output_payload_size[2:0]                     ), //i
    .io_input_payload_burst        (cmdArbiter_io_output_payload_burst[1:0]                    ), //i
    .io_input_payload_write        (cmdArbiter_io_output_payload_write                         ), //i
    .io_outputs_0_valid            (cmdArbiter_io_output_fork_io_outputs_0_valid               ), //o
    .io_outputs_0_ready            (io_output_arw_ready                                        ), //i
    .io_outputs_0_payload_addr     (cmdArbiter_io_output_fork_io_outputs_0_payload_addr[11:0]  ), //o
    .io_outputs_0_payload_id       (cmdArbiter_io_output_fork_io_outputs_0_payload_id[3:0]     ), //o
    .io_outputs_0_payload_len      (cmdArbiter_io_output_fork_io_outputs_0_payload_len[7:0]    ), //o
    .io_outputs_0_payload_size     (cmdArbiter_io_output_fork_io_outputs_0_payload_size[2:0]   ), //o
    .io_outputs_0_payload_burst    (cmdArbiter_io_output_fork_io_outputs_0_payload_burst[1:0]  ), //o
    .io_outputs_0_payload_write    (cmdArbiter_io_output_fork_io_outputs_0_payload_write       ), //o
    .io_outputs_1_valid            (cmdArbiter_io_output_fork_io_outputs_1_valid               ), //o
    .io_outputs_1_ready            (_zz_1                                                      ), //i
    .io_outputs_1_payload_addr     (cmdArbiter_io_output_fork_io_outputs_1_payload_addr[11:0]  ), //o
    .io_outputs_1_payload_id       (cmdArbiter_io_output_fork_io_outputs_1_payload_id[3:0]     ), //o
    .io_outputs_1_payload_len      (cmdArbiter_io_output_fork_io_outputs_1_payload_len[7:0]    ), //o
    .io_outputs_1_payload_size     (cmdArbiter_io_output_fork_io_outputs_1_payload_size[2:0]   ), //o
    .io_outputs_1_payload_burst    (cmdArbiter_io_output_fork_io_outputs_1_payload_burst[1:0]  ), //o
    .io_outputs_1_payload_write    (cmdArbiter_io_output_fork_io_outputs_1_payload_write       ), //o
    .clk                           (clk                                                        ), //i
    .reset                         (reset                                                      )  //i
  );
  StreamFifoLowLatency cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo (
    .io_push_valid    (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid                   ), //i
    .io_push_ready    (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready      ), //o
    .io_pop_valid     (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid       ), //o
    .io_pop_ready     (_zz_2                                                                            ), //i
    .io_flush         (_zz_3                                                                            ), //i
    .io_occupancy     (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_occupancy[2:0]  ), //o
    .clk              (clk                                                                              ), //i
    .reset            (reset                                                                            )  //i
  );
  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_writeInputs_0_aw_valid;
  assign io_writeInputs_0_aw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_writeInputs_0_aw_payload_addr;
  assign inputsCmd_1_payload_id = io_writeInputs_0_aw_payload_id;
  assign inputsCmd_1_payload_len = io_writeInputs_0_aw_payload_len;
  assign inputsCmd_1_payload_size = io_writeInputs_0_aw_payload_size;
  assign inputsCmd_1_payload_burst = io_writeInputs_0_aw_payload_burst;
  assign inputsCmd_1_payload_write = 1'b1;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  assign io_output_arw_valid = cmdArbiter_io_output_fork_io_outputs_0_valid;
  assign io_output_arw_payload_addr = cmdArbiter_io_output_fork_io_outputs_0_payload_addr;
  assign io_output_arw_payload_len = cmdArbiter_io_output_fork_io_outputs_0_payload_len;
  assign io_output_arw_payload_size = cmdArbiter_io_output_fork_io_outputs_0_payload_size;
  assign io_output_arw_payload_burst = cmdArbiter_io_output_fork_io_outputs_0_payload_burst;
  assign io_output_arw_payload_write = cmdArbiter_io_output_fork_io_outputs_0_payload_write;
  assign io_output_arw_payload_id = (cmdArbiter_io_output_fork_io_outputs_0_payload_write ? cmdArbiter_io_output_fork_io_outputs_0_payload_id : cmdArbiter_io_output_fork_io_outputs_0_payload_id);
  always @ (*) begin
    cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = cmdArbiter_io_output_fork_io_outputs_1_valid;
    if(_zz_4)begin
      cmdArbiter_io_output_fork_io_outputs_1_thrown_valid = 1'b0;
    end
  end

  always @ (*) begin
    _zz_1 = cmdArbiter_io_output_fork_io_outputs_1_thrown_ready;
    if(_zz_4)begin
      _zz_1 = 1'b1;
    end
  end

  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_addr = cmdArbiter_io_output_fork_io_outputs_1_payload_addr;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_id = cmdArbiter_io_output_fork_io_outputs_1_payload_id;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_len = cmdArbiter_io_output_fork_io_outputs_1_payload_len;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_size = cmdArbiter_io_output_fork_io_outputs_1_payload_size;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_burst = cmdArbiter_io_output_fork_io_outputs_1_payload_burst;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_payload_write = cmdArbiter_io_output_fork_io_outputs_1_payload_write;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_valid = cmdArbiter_io_output_fork_io_outputs_1_thrown_valid;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready;
  assign cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_ready = cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_writeInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_writeInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_writeInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_writeInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_writeInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_writeInputs_0_w_ready = ((cmdArbiter_io_output_fork_io_outputs_1_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign _zz_2 = ((io_output_w_valid && io_output_w_ready) && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_writeInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_writeInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_writeInputs_0_b_payload_id = io_output_b_payload_id;
  assign io_output_b_ready = io_writeInputs_0_b_ready;
  assign readRspSels_0 = 1'b1;
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id;
  assign io_output_r_ready = io_readInputs_0_r_ready;
  assign _zz_3 = 1'b0;

endmodule

module Axi4WriteOnlyDecoder (
  input               io_input_aw_valid,
  output              io_input_aw_ready,
  input      [31:0]   io_input_aw_payload_addr,
  input               io_input_w_valid,
  output              io_input_w_ready,
  input      [31:0]   io_input_w_payload_data,
  input      [3:0]    io_input_w_payload_strb,
  input               io_input_w_payload_last,
  output              io_input_b_valid,
  input               io_input_b_ready,
  output reg [1:0]    io_input_b_payload_resp,
  output              io_outputs_0_aw_valid,
  input               io_outputs_0_aw_ready,
  output     [31:0]   io_outputs_0_aw_payload_addr,
  output              io_outputs_0_w_valid,
  input               io_outputs_0_w_ready,
  output     [31:0]   io_outputs_0_w_payload_data,
  output     [3:0]    io_outputs_0_w_payload_strb,
  output              io_outputs_0_w_payload_last,
  input               io_outputs_0_b_valid,
  output              io_outputs_0_b_ready,
  input      [1:0]    io_outputs_0_b_payload_resp,
  output              io_outputs_1_aw_valid,
  input               io_outputs_1_aw_ready,
  output     [31:0]   io_outputs_1_aw_payload_addr,
  output              io_outputs_1_w_valid,
  input               io_outputs_1_w_ready,
  output     [31:0]   io_outputs_1_w_payload_data,
  output     [3:0]    io_outputs_1_w_payload_strb,
  output              io_outputs_1_w_payload_last,
  input               io_outputs_1_b_valid,
  output              io_outputs_1_b_ready,
  input      [1:0]    io_outputs_1_b_payload_resp,
  input               clk,
  input               reset
);
  wire                _zz_4;
  wire                _zz_5;
  wire                errorSlave_io_axi_aw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                cmdAllowedStart;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire       [1:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [1:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_1;
  wire                _zz_2;
  wire                _zz_3;
  wire       [0:0]    writeRspIndex;

  Axi4WriteOnlyErrorSlave errorSlave (
    .io_axi_aw_valid           (_zz_4                                  ), //i
    .io_axi_aw_ready           (errorSlave_io_axi_aw_ready             ), //o
    .io_axi_aw_payload_addr    (io_input_aw_payload_addr[31:0]         ), //i
    .io_axi_w_valid            (_zz_5                                  ), //i
    .io_axi_w_ready            (errorSlave_io_axi_w_ready              ), //o
    .io_axi_w_payload_data     (io_input_w_payload_data[31:0]          ), //i
    .io_axi_w_payload_strb     (io_input_w_payload_strb[3:0]           ), //i
    .io_axi_w_payload_last     (io_input_w_payload_last                ), //i
    .io_axi_b_valid            (errorSlave_io_axi_b_valid              ), //o
    .io_axi_b_ready            (io_input_b_ready                       ), //i
    .io_axi_b_payload_resp     (errorSlave_io_axi_b_payload_resp[1:0]  ), //o
    .clk                       (clk                                    ), //i
    .reset                     (reset                                  )  //i
  );
  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_aw_valid && io_input_aw_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if((io_input_b_valid && io_input_b_ready))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  always @ (*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if(cmdAllowedStart)begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(((io_input_w_valid && io_input_w_ready) && io_input_w_payload_last))begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_willOverflowIfInc = ((pendingDataCounter_value == 3'b111) && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  always @ (*) begin
    if((pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt)))begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt))begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_aw_payload_addr & (~ 32'h00001fff)) == 32'h10000000) && io_input_aw_valid),(((io_input_aw_payload_addr & (~ 32'h00000fff)) == 32'h80000000) && io_input_aw_valid)};
  assign decodedCmdError = (decodedCmdSels == 2'b00);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_aw_valid && allowCmd) && _zz_1);
  assign io_input_aw_ready = ((((decodedCmdSels & {io_outputs_1_aw_ready,io_outputs_0_aw_ready}) != 2'b00) || (decodedCmdError && errorSlave_io_axi_aw_ready)) && allowCmd);
  assign _zz_4 = ((io_input_aw_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_aw_valid = ((io_input_aw_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_aw_payload_addr = io_input_aw_payload_addr;
  assign io_outputs_1_aw_valid = ((io_input_aw_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_aw_payload_addr = io_input_aw_payload_addr;
  assign io_input_w_ready = ((((pendingSels & {io_outputs_1_w_ready,io_outputs_0_w_ready}) != 2'b00) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign _zz_5 = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_2 = pendingSels[0];
  assign _zz_3 = pendingSels[1];
  assign io_outputs_0_w_valid = ((io_input_w_valid && _zz_2) && allowData);
  assign io_outputs_0_w_payload_data = io_input_w_payload_data;
  assign io_outputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_0_w_payload_last = io_input_w_payload_last;
  assign io_outputs_1_w_valid = ((io_input_w_valid && _zz_3) && allowData);
  assign io_outputs_1_w_payload_data = io_input_w_payload_data;
  assign io_outputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_outputs_1_w_payload_last = io_input_w_payload_last;
  assign writeRspIndex = _zz_3;
  assign io_input_b_valid = (({io_outputs_1_b_valid,io_outputs_0_b_valid} != 2'b00) || errorSlave_io_axi_b_valid);
  always @ (*) begin
    io_input_b_payload_resp = (_zz_2 ? io_outputs_0_b_payload_resp : io_outputs_1_b_payload_resp);
    if(pendingError)begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_outputs_0_b_ready = io_input_b_ready;
  assign io_outputs_1_b_ready = io_input_b_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 2'b00;
      pendingError <= 1'b0;
      _zz_1 <= 1'b1;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart)begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart)begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart)begin
        _zz_1 <= 1'b0;
      end
      if(io_input_aw_ready)begin
        _zz_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder (
  input               io_input_ar_valid,
  output              io_input_ar_ready,
  input      [31:0]   io_input_ar_payload_addr,
  output reg          io_input_r_valid,
  input               io_input_r_ready,
  output     [31:0]   io_input_r_payload_data,
  output reg [1:0]    io_input_r_payload_resp,
  output reg          io_input_r_payload_last,
  output              io_outputs_0_ar_valid,
  input               io_outputs_0_ar_ready,
  output     [31:0]   io_outputs_0_ar_payload_addr,
  input               io_outputs_0_r_valid,
  output              io_outputs_0_r_ready,
  input      [31:0]   io_outputs_0_r_payload_data,
  input      [1:0]    io_outputs_0_r_payload_resp,
  input               io_outputs_0_r_payload_last,
  output              io_outputs_1_ar_valid,
  input               io_outputs_1_ar_ready,
  output     [31:0]   io_outputs_1_ar_payload_addr,
  input               io_outputs_1_r_valid,
  output              io_outputs_1_r_ready,
  input      [31:0]   io_outputs_1_r_payload_data,
  input      [1:0]    io_outputs_1_r_payload_resp,
  input               io_outputs_1_r_payload_last,
  input               clk,
  input               reset
);
  wire                _zz_3;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire       [1:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [1:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_1;
  wire                _zz_2;
  wire       [0:0]    readRspIndex;

  Axi4ReadOnlyErrorSlave errorSlave (
    .io_axi_ar_valid           (_zz_3                                   ), //i
    .io_axi_ar_ready           (errorSlave_io_axi_ar_ready              ), //o
    .io_axi_ar_payload_addr    (io_input_ar_payload_addr[31:0]          ), //i
    .io_axi_r_valid            (errorSlave_io_axi_r_valid               ), //o
    .io_axi_r_ready            (io_input_r_ready                        ), //i
    .io_axi_r_payload_data     (errorSlave_io_axi_r_payload_data[31:0]  ), //o
    .io_axi_r_payload_resp     (errorSlave_io_axi_r_payload_resp[1:0]   ), //o
    .io_axi_r_payload_last     (errorSlave_io_axi_r_payload_last        ), //o
    .clk                       (clk                                     ), //i
    .reset                     (reset                                   )  //i
  );
  always @ (*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if((io_input_ar_valid && io_input_ar_ready))begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @ (*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(((io_input_r_valid && io_input_r_ready) && io_input_r_payload_last))begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_willOverflowIfInc = ((pendingCmdCounter_value == 3'b111) && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  always @ (*) begin
    if((pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt)))begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt))begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ 32'h00001fff)) == 32'h10000000) && io_input_ar_valid),(((io_input_ar_payload_addr & (~ 32'h00000fff)) == 32'h80000000) && io_input_ar_valid)};
  assign decodedCmdError = (decodedCmdSels == 2'b00);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = ((((decodedCmdSels & {io_outputs_1_ar_ready,io_outputs_0_ar_ready}) != 2'b00) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign _zz_3 = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign _zz_1 = pendingSels[0];
  assign _zz_2 = pendingSels[1];
  assign readRspIndex = _zz_2;
  always @ (*) begin
    io_input_r_valid = ({io_outputs_1_r_valid,io_outputs_0_r_valid} != 2'b00);
    if(errorSlave_io_axi_r_valid)begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = (_zz_1 ? io_outputs_0_r_payload_data : io_outputs_1_r_payload_data);
  always @ (*) begin
    io_input_r_payload_resp = (_zz_1 ? io_outputs_0_r_payload_resp : io_outputs_1_r_payload_resp);
    if(pendingError)begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @ (*) begin
    io_input_r_payload_last = (_zz_1 ? io_outputs_0_r_payload_last : io_outputs_1_r_payload_last);
    if(pendingError)begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 2'b00;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready)begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready)begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module Axi4SharedOnChipRam (
  input               io_axi_arw_valid,
  output reg          io_axi_arw_ready,
  input      [11:0]   io_axi_arw_payload_addr,
  input      [3:0]    io_axi_arw_payload_id,
  input      [7:0]    io_axi_arw_payload_len,
  input      [2:0]    io_axi_arw_payload_size,
  input      [1:0]    io_axi_arw_payload_burst,
  input               io_axi_arw_payload_write,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [3:0]    io_axi_b_payload_id,
  output     [1:0]    io_axi_b_payload_resp,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [3:0]    io_axi_r_payload_id,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               clk,
  input               reset
);
  reg        [31:0]   _zz_6;
  reg        [11:0]   _zz_7;
  wire                _zz_8;
  wire       [1:0]    _zz_9;
  wire       [11:0]   _zz_10;
  wire       [11:0]   _zz_11;
  wire       [11:0]   _zz_12;
  wire       [2:0]    _zz_13;
  wire       [2:0]    _zz_14;
  reg                 unburstify_result_valid;
  wire                unburstify_result_ready;
  reg                 unburstify_result_payload_last;
  reg        [11:0]   unburstify_result_payload_fragment_addr;
  reg        [3:0]    unburstify_result_payload_fragment_id;
  reg        [2:0]    unburstify_result_payload_fragment_size;
  reg        [1:0]    unburstify_result_payload_fragment_burst;
  reg                 unburstify_result_payload_fragment_write;
  wire                unburstify_doResult;
  reg                 unburstify_buffer_valid;
  reg        [7:0]    unburstify_buffer_len;
  reg        [7:0]    unburstify_buffer_beat;
  reg        [11:0]   unburstify_buffer_transaction_addr;
  reg        [3:0]    unburstify_buffer_transaction_id;
  reg        [2:0]    unburstify_buffer_transaction_size;
  reg        [1:0]    unburstify_buffer_transaction_burst;
  reg                 unburstify_buffer_transaction_write;
  wire                unburstify_buffer_last;
  wire       [1:0]    Axi4Incr_validSize;
  reg        [11:0]   Axi4Incr_result;
  wire       [2:0]    Axi4Incr_sizeValue;
  wire       [11:0]   Axi4Incr_alignMask;
  wire       [11:0]   Axi4Incr_base;
  wire       [11:0]   Axi4Incr_baseIncr;
  reg        [1:0]    _zz_1;
  wire       [2:0]    Axi4Incr_wrapCase;
  wire                _zz_2;
  wire                stage0_valid;
  wire                stage0_ready;
  wire                stage0_payload_last;
  wire       [11:0]   stage0_payload_fragment_addr;
  wire       [3:0]    stage0_payload_fragment_id;
  wire       [2:0]    stage0_payload_fragment_size;
  wire       [1:0]    stage0_payload_fragment_burst;
  wire                stage0_payload_fragment_write;
  wire       [9:0]    _zz_3;
  wire                _zz_4;
  wire       [31:0]   _zz_5;
  wire                stage1_valid;
  wire                stage1_ready;
  wire                stage1_payload_last;
  wire       [11:0]   stage1_payload_fragment_addr;
  wire       [3:0]    stage1_payload_fragment_id;
  wire       [2:0]    stage1_payload_fragment_size;
  wire       [1:0]    stage1_payload_fragment_burst;
  wire                stage1_payload_fragment_write;
  reg                 stage0_m2sPipe_rValid;
  reg                 stage0_m2sPipe_rData_last;
  reg        [11:0]   stage0_m2sPipe_rData_fragment_addr;
  reg        [3:0]    stage0_m2sPipe_rData_fragment_id;
  reg        [2:0]    stage0_m2sPipe_rData_fragment_size;
  reg        [1:0]    stage0_m2sPipe_rData_fragment_burst;
  reg                 stage0_m2sPipe_rData_fragment_write;
  reg [7:0] ram_symbol0 [0:1023];
  reg [7:0] ram_symbol1 [0:1023];
  reg [7:0] ram_symbol2 [0:1023];
  reg [7:0] ram_symbol3 [0:1023];
  reg [7:0] _zz_15;
  reg [7:0] _zz_16;
  reg [7:0] _zz_17;
  reg [7:0] _zz_18;

  assign _zz_8 = (io_axi_arw_payload_len == 8'h0);
  assign _zz_9 = {(2'b01 < Axi4Incr_validSize),(2'b00 < Axi4Incr_validSize)};
  assign _zz_10 = unburstify_buffer_transaction_addr[11 : 0];
  assign _zz_11 = _zz_10;
  assign _zz_12 = {9'd0, Axi4Incr_sizeValue};
  assign _zz_13 = {1'd0, Axi4Incr_validSize};
  assign _zz_14 = {1'd0, _zz_1};
  always @ (*) begin
    _zz_6 = {_zz_18, _zz_17, _zz_16, _zz_15};
  end
  always @ (posedge clk) begin
    if(_zz_4) begin
      _zz_15 <= ram_symbol0[_zz_3];
      _zz_16 <= ram_symbol1[_zz_3];
      _zz_17 <= ram_symbol2[_zz_3];
      _zz_18 <= ram_symbol3[_zz_3];
    end
  end

  always @ (posedge clk) begin
    if(io_axi_w_payload_strb[0] && _zz_4 && stage0_payload_fragment_write ) begin
      ram_symbol0[_zz_3] <= _zz_5[7 : 0];
    end
    if(io_axi_w_payload_strb[1] && _zz_4 && stage0_payload_fragment_write ) begin
      ram_symbol1[_zz_3] <= _zz_5[15 : 8];
    end
    if(io_axi_w_payload_strb[2] && _zz_4 && stage0_payload_fragment_write ) begin
      ram_symbol2[_zz_3] <= _zz_5[23 : 16];
    end
    if(io_axi_w_payload_strb[3] && _zz_4 && stage0_payload_fragment_write ) begin
      ram_symbol3[_zz_3] <= _zz_5[31 : 24];
    end
  end

  always @(*) begin
    case(Axi4Incr_wrapCase)
      3'b000 : begin
        _zz_7 = {Axi4Incr_base[11 : 1],Axi4Incr_baseIncr[0 : 0]};
      end
      3'b001 : begin
        _zz_7 = {Axi4Incr_base[11 : 2],Axi4Incr_baseIncr[1 : 0]};
      end
      3'b010 : begin
        _zz_7 = {Axi4Incr_base[11 : 3],Axi4Incr_baseIncr[2 : 0]};
      end
      3'b011 : begin
        _zz_7 = {Axi4Incr_base[11 : 4],Axi4Incr_baseIncr[3 : 0]};
      end
      3'b100 : begin
        _zz_7 = {Axi4Incr_base[11 : 5],Axi4Incr_baseIncr[4 : 0]};
      end
      default : begin
        _zz_7 = {Axi4Incr_base[11 : 6],Axi4Incr_baseIncr[5 : 0]};
      end
    endcase
  end

  assign unburstify_buffer_last = (unburstify_buffer_beat == 8'h01);
  assign Axi4Incr_validSize = unburstify_buffer_transaction_size[1 : 0];
  assign Axi4Incr_sizeValue = {(2'b10 == Axi4Incr_validSize),{(2'b01 == Axi4Incr_validSize),(2'b00 == Axi4Incr_validSize)}};
  assign Axi4Incr_alignMask = {10'd0, _zz_9};
  assign Axi4Incr_base = (_zz_11 & (~ Axi4Incr_alignMask));
  assign Axi4Incr_baseIncr = (Axi4Incr_base + _zz_12);
  always @ (*) begin
    if((((unburstify_buffer_len & 8'h08) == 8'h08))) begin
        _zz_1 = 2'b11;
    end else if((((unburstify_buffer_len & 8'h04) == 8'h04))) begin
        _zz_1 = 2'b10;
    end else if((((unburstify_buffer_len & 8'h02) == 8'h02))) begin
        _zz_1 = 2'b01;
    end else begin
        _zz_1 = 2'b00;
    end
  end

  assign Axi4Incr_wrapCase = (_zz_13 + _zz_14);
  always @ (*) begin
    case(unburstify_buffer_transaction_burst)
      2'b00 : begin
        Axi4Incr_result = unburstify_buffer_transaction_addr;
      end
      2'b10 : begin
        Axi4Incr_result = _zz_7;
      end
      default : begin
        Axi4Incr_result = Axi4Incr_baseIncr;
      end
    endcase
  end

  always @ (*) begin
    io_axi_arw_ready = 1'b0;
    if(! unburstify_buffer_valid) begin
      io_axi_arw_ready = unburstify_result_ready;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_valid = 1'b1;
    end else begin
      unburstify_result_valid = io_axi_arw_valid;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_last = unburstify_buffer_last;
    end else begin
      if(_zz_8)begin
        unburstify_result_payload_last = 1'b1;
      end else begin
        unburstify_result_payload_last = 1'b0;
      end
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_id = unburstify_buffer_transaction_id;
    end else begin
      unburstify_result_payload_fragment_id = io_axi_arw_payload_id;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_size = unburstify_buffer_transaction_size;
    end else begin
      unburstify_result_payload_fragment_size = io_axi_arw_payload_size;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_burst = unburstify_buffer_transaction_burst;
    end else begin
      unburstify_result_payload_fragment_burst = io_axi_arw_payload_burst;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_write = unburstify_buffer_transaction_write;
    end else begin
      unburstify_result_payload_fragment_write = io_axi_arw_payload_write;
    end
  end

  always @ (*) begin
    if(unburstify_buffer_valid)begin
      unburstify_result_payload_fragment_addr = Axi4Incr_result;
    end else begin
      unburstify_result_payload_fragment_addr = io_axi_arw_payload_addr;
    end
  end

  assign _zz_2 = (! (unburstify_result_payload_fragment_write && (! io_axi_w_valid)));
  assign stage0_valid = (unburstify_result_valid && _zz_2);
  assign unburstify_result_ready = (stage0_ready && _zz_2);
  assign stage0_payload_last = unburstify_result_payload_last;
  assign stage0_payload_fragment_addr = unburstify_result_payload_fragment_addr;
  assign stage0_payload_fragment_id = unburstify_result_payload_fragment_id;
  assign stage0_payload_fragment_size = unburstify_result_payload_fragment_size;
  assign stage0_payload_fragment_burst = unburstify_result_payload_fragment_burst;
  assign stage0_payload_fragment_write = unburstify_result_payload_fragment_write;
  assign _zz_3 = stage0_payload_fragment_addr[11 : 2];
  assign _zz_4 = (stage0_valid && stage0_ready);
  assign _zz_5 = io_axi_w_payload_data;
  assign io_axi_r_payload_data = _zz_6;
  assign io_axi_w_ready = ((unburstify_result_valid && unburstify_result_payload_fragment_write) && stage0_ready);
  assign stage0_ready = ((1'b1 && (! stage1_valid)) || stage1_ready);
  assign stage1_valid = stage0_m2sPipe_rValid;
  assign stage1_payload_last = stage0_m2sPipe_rData_last;
  assign stage1_payload_fragment_addr = stage0_m2sPipe_rData_fragment_addr;
  assign stage1_payload_fragment_id = stage0_m2sPipe_rData_fragment_id;
  assign stage1_payload_fragment_size = stage0_m2sPipe_rData_fragment_size;
  assign stage1_payload_fragment_burst = stage0_m2sPipe_rData_fragment_burst;
  assign stage1_payload_fragment_write = stage0_m2sPipe_rData_fragment_write;
  assign stage1_ready = ((io_axi_r_ready && (! stage1_payload_fragment_write)) || ((io_axi_b_ready || (! stage1_payload_last)) && stage1_payload_fragment_write));
  assign io_axi_r_valid = (stage1_valid && (! stage1_payload_fragment_write));
  assign io_axi_r_payload_id = stage1_payload_fragment_id;
  assign io_axi_r_payload_last = stage1_payload_last;
  assign io_axi_r_payload_resp = 2'b00;
  assign io_axi_b_valid = ((stage1_valid && stage1_payload_fragment_write) && stage1_payload_last);
  assign io_axi_b_payload_resp = 2'b00;
  assign io_axi_b_payload_id = stage1_payload_fragment_id;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      unburstify_buffer_valid <= 1'b0;
      stage0_m2sPipe_rValid <= 1'b0;
    end else begin
      if(unburstify_result_ready)begin
        if(unburstify_buffer_last)begin
          unburstify_buffer_valid <= 1'b0;
        end
      end
      if(! unburstify_buffer_valid) begin
        if(! _zz_8) begin
          if(unburstify_result_ready)begin
            unburstify_buffer_valid <= io_axi_arw_valid;
          end
        end
      end
      if(stage0_ready)begin
        stage0_m2sPipe_rValid <= stage0_valid;
      end
    end
  end

  always @ (posedge clk) begin
    if(unburstify_result_ready)begin
      unburstify_buffer_beat <= (unburstify_buffer_beat - 8'h01);
      unburstify_buffer_transaction_addr[11 : 0] <= Axi4Incr_result[11 : 0];
    end
    if(! unburstify_buffer_valid) begin
      if(! _zz_8) begin
        if(unburstify_result_ready)begin
          unburstify_buffer_transaction_addr <= io_axi_arw_payload_addr;
          unburstify_buffer_transaction_id <= io_axi_arw_payload_id;
          unburstify_buffer_transaction_size <= io_axi_arw_payload_size;
          unburstify_buffer_transaction_burst <= io_axi_arw_payload_burst;
          unburstify_buffer_transaction_write <= io_axi_arw_payload_write;
          unburstify_buffer_beat <= io_axi_arw_payload_len;
          unburstify_buffer_len <= io_axi_arw_payload_len;
        end
      end
    end
    if(stage0_ready)begin
      stage0_m2sPipe_rData_last <= stage0_payload_last;
      stage0_m2sPipe_rData_fragment_addr <= stage0_payload_fragment_addr;
      stage0_m2sPipe_rData_fragment_id <= stage0_payload_fragment_id;
      stage0_m2sPipe_rData_fragment_size <= stage0_payload_fragment_size;
      stage0_m2sPipe_rData_fragment_burst <= stage0_payload_fragment_burst;
      stage0_m2sPipe_rData_fragment_write <= stage0_payload_fragment_write;
    end
  end


endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  output reg          io_pop_valid,
  input               io_pop_ready,
  input               io_flush,
  output     [2:0]    io_occupancy,
  input               clk,
  input               reset
);
  wire       [0:0]    _zz_1;
  wire       [1:0]    _zz_2;
  wire       [0:0]    _zz_3;
  wire       [1:0]    _zz_4;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [1:0]    pushPtr_valueNext;
  reg        [1:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [1:0]    popPtr_valueNext;
  reg        [1:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [1:0]    ptrDif;

  assign _zz_1 = pushPtr_willIncrement;
  assign _zz_2 = {1'd0, _zz_1};
  assign _zz_3 = popPtr_willIncrement;
  assign _zz_4 = {1'd0, _zz_3};
  always @ (*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing)begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush)begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 2'b11);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @ (*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_2);
    if(pushPtr_willClear)begin
      pushPtr_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    popPtr_willIncrement = 1'b0;
    if(popping)begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    popPtr_willClear = 1'b0;
    if(io_flush)begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 2'b11);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @ (*) begin
    popPtr_valueNext = (popPtr_value + _zz_4);
    if(popPtr_willClear)begin
      popPtr_valueNext = 2'b00;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  always @ (*) begin
    if((! empty))begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      pushPtr_value <= 2'b00;
      popPtr_value <= 2'b00;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if((pushing != popping))begin
        risingOccupancy <= pushing;
      end
      if(io_flush)begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule

module StreamFork (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [11:0]   io_input_payload_addr,
  input      [3:0]    io_input_payload_id,
  input      [7:0]    io_input_payload_len,
  input      [2:0]    io_input_payload_size,
  input      [1:0]    io_input_payload_burst,
  input               io_input_payload_write,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [11:0]   io_outputs_0_payload_addr,
  output     [3:0]    io_outputs_0_payload_id,
  output     [7:0]    io_outputs_0_payload_len,
  output     [2:0]    io_outputs_0_payload_size,
  output     [1:0]    io_outputs_0_payload_burst,
  output              io_outputs_0_payload_write,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [11:0]   io_outputs_1_payload_addr,
  output     [3:0]    io_outputs_1_payload_id,
  output     [7:0]    io_outputs_1_payload_len,
  output     [2:0]    io_outputs_1_payload_size,
  output     [1:0]    io_outputs_1_payload_burst,
  output              io_outputs_1_payload_write,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  reg                 _zz_2;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload_addr = io_input_payload_addr;
  assign io_outputs_0_payload_id = io_input_payload_id;
  assign io_outputs_0_payload_len = io_input_payload_len;
  assign io_outputs_0_payload_size = io_input_payload_size;
  assign io_outputs_0_payload_burst = io_input_payload_burst;
  assign io_outputs_0_payload_write = io_input_payload_write;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload_addr = io_input_payload_addr;
  assign io_outputs_1_payload_id = io_input_payload_id;
  assign io_outputs_1_payload_len = io_input_payload_len;
  assign io_outputs_1_payload_size = io_input_payload_size;
  assign io_outputs_1_payload_burst = io_input_payload_burst;
  assign io_outputs_1_payload_write = io_input_payload_write;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
      end
    end
  end


endmodule

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [11:0]   io_inputs_0_payload_addr,
  input      [3:0]    io_inputs_0_payload_id,
  input      [7:0]    io_inputs_0_payload_len,
  input      [2:0]    io_inputs_0_payload_size,
  input      [1:0]    io_inputs_0_payload_burst,
  input               io_inputs_0_payload_write,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [11:0]   io_inputs_1_payload_addr,
  input      [3:0]    io_inputs_1_payload_id,
  input      [7:0]    io_inputs_1_payload_len,
  input      [2:0]    io_inputs_1_payload_size,
  input      [1:0]    io_inputs_1_payload_burst,
  input               io_inputs_1_payload_write,
  output              io_output_valid,
  input               io_output_ready,
  output     [11:0]   io_output_payload_addr,
  output     [3:0]    io_output_payload_id,
  output     [7:0]    io_output_payload_len,
  output     [2:0]    io_output_payload_size,
  output     [1:0]    io_output_payload_burst,
  output              io_output_payload_write,
  output     [0:0]    io_chosen,
  output     [1:0]    io_chosenOH,
  input               clk,
  input               reset
);
  wire       [3:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire       [3:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [0:0]    _zz_10;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_1;
  wire       [3:0]    _zz_2;
  wire       [3:0]    _zz_3;
  wire       [1:0]    _zz_4;
  wire                _zz_5;

  assign _zz_6 = (_zz_2 - _zz_8);
  assign _zz_7 = {maskLocked_0,maskLocked_1};
  assign _zz_8 = {2'd0, _zz_7};
  assign _zz_9 = _zz_4[0 : 0];
  assign _zz_10 = _zz_4[1 : 1];
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_1 = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_6));
  assign _zz_4 = (_zz_3[3 : 2] | _zz_3[1 : 0]);
  assign maskProposal_0 = _zz_9[0];
  assign maskProposal_1 = _zz_10[0];
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_addr = (maskRouted_0 ? io_inputs_0_payload_addr : io_inputs_1_payload_addr);
  assign io_output_payload_id = (maskRouted_0 ? io_inputs_0_payload_id : io_inputs_1_payload_id);
  assign io_output_payload_len = (maskRouted_0 ? io_inputs_0_payload_len : io_inputs_1_payload_len);
  assign io_output_payload_size = (maskRouted_0 ? io_inputs_0_payload_size : io_inputs_1_payload_size);
  assign io_output_payload_burst = (maskRouted_0 ? io_inputs_0_payload_burst : io_inputs_1_payload_burst);
  assign io_output_payload_write = (maskRouted_0 ? io_inputs_0_payload_write : io_inputs_1_payload_write);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_5 = io_chosenOH[1];
  assign io_chosen = _zz_5;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module Axi4WriteOnlyErrorSlave (
  input               io_axi_aw_valid,
  output              io_axi_aw_ready,
  input      [31:0]   io_axi_aw_payload_addr,
  input               io_axi_w_valid,
  output              io_axi_w_ready,
  input      [31:0]   io_axi_w_payload_data,
  input      [3:0]    io_axi_w_payload_strb,
  input               io_axi_w_payload_last,
  output              io_axi_b_valid,
  input               io_axi_b_ready,
  output     [1:0]    io_axi_b_payload_resp,
  input               clk,
  input               reset
);
  reg                 consumeData;
  reg                 sendRsp;

  assign io_axi_aw_ready = (! (consumeData || sendRsp));
  assign io_axi_w_ready = consumeData;
  assign io_axi_b_valid = sendRsp;
  assign io_axi_b_payload_resp = 2'b11;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      consumeData <= 1'b0;
      sendRsp <= 1'b0;
    end else begin
      if((io_axi_aw_valid && io_axi_aw_ready))begin
        consumeData <= 1'b1;
      end
      if(((io_axi_w_valid && io_axi_w_ready) && io_axi_w_payload_last))begin
        consumeData <= 1'b0;
        sendRsp <= 1'b1;
      end
      if((io_axi_b_valid && io_axi_b_ready))begin
        sendRsp <= 1'b0;
      end
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave (
  input               io_axi_ar_valid,
  output              io_axi_ar_ready,
  input      [31:0]   io_axi_ar_payload_addr,
  output              io_axi_r_valid,
  input               io_axi_r_ready,
  output     [31:0]   io_axi_r_payload_data,
  output     [1:0]    io_axi_r_payload_resp,
  output              io_axi_r_payload_last,
  input               clk,
  input               reset
);
  wire                _zz_1;
  reg                 sendRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;

  assign _zz_1 = (io_axi_ar_valid && io_axi_ar_ready);
  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_resp = 2'b11;
  assign io_axi_r_payload_last = remainingZero;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      sendRsp <= 1'b0;
    end else begin
      if(_zz_1)begin
        sendRsp <= 1'b1;
      end
      if(sendRsp)begin
        if(io_axi_r_ready)begin
          if(remainingZero)begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(_zz_1)begin
      remaining <= 8'h0;
    end
    if(sendRsp)begin
      if(io_axi_r_ready)begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule
