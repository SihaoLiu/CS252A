module FA1(
  input   io_x,
  input   io_y,
  input   io_cin,
  output  io_s,
  output  io_cout,
  output  io_p
);
  wire  p; // @[FA1.scala 20:23]
  wire  g; // @[FA1.scala 21:23]
  wire  _T_1; // @[FA1.scala 27:21]
  assign p = io_x ^ io_y; // @[FA1.scala 20:23]
  assign g = io_x & io_y; // @[FA1.scala 21:23]
  assign _T_1 = p & io_cin; // @[FA1.scala 27:21]
  assign io_s = p ^ io_cin; // @[FA1.scala 24:8]
  assign io_cout = g | _T_1; // @[FA1.scala 27:11]
  assign io_p = io_x ^ io_y; // @[FA1.scala 31:8]
endmodule
module CRA(
  input  [31:0] io_x,
  input  [31:0] io_y,
  input         io_cin,
  output [31:0] io_s,
  output        io_cout,
  output [31:0] io_p
);
  wire  FA1_io_x; // @[CRA.scala 22:20]
  wire  FA1_io_y; // @[CRA.scala 22:20]
  wire  FA1_io_cin; // @[CRA.scala 22:20]
  wire  FA1_io_s; // @[CRA.scala 22:20]
  wire  FA1_io_cout; // @[CRA.scala 22:20]
  wire  FA1_io_p; // @[CRA.scala 22:20]
  wire  FA1_1_io_x; // @[CRA.scala 22:20]
  wire  FA1_1_io_y; // @[CRA.scala 22:20]
  wire  FA1_1_io_cin; // @[CRA.scala 22:20]
  wire  FA1_1_io_s; // @[CRA.scala 22:20]
  wire  FA1_1_io_cout; // @[CRA.scala 22:20]
  wire  FA1_1_io_p; // @[CRA.scala 22:20]
  wire  FA1_2_io_x; // @[CRA.scala 22:20]
  wire  FA1_2_io_y; // @[CRA.scala 22:20]
  wire  FA1_2_io_cin; // @[CRA.scala 22:20]
  wire  FA1_2_io_s; // @[CRA.scala 22:20]
  wire  FA1_2_io_cout; // @[CRA.scala 22:20]
  wire  FA1_2_io_p; // @[CRA.scala 22:20]
  wire  FA1_3_io_x; // @[CRA.scala 22:20]
  wire  FA1_3_io_y; // @[CRA.scala 22:20]
  wire  FA1_3_io_cin; // @[CRA.scala 22:20]
  wire  FA1_3_io_s; // @[CRA.scala 22:20]
  wire  FA1_3_io_cout; // @[CRA.scala 22:20]
  wire  FA1_3_io_p; // @[CRA.scala 22:20]
  wire  FA1_4_io_x; // @[CRA.scala 22:20]
  wire  FA1_4_io_y; // @[CRA.scala 22:20]
  wire  FA1_4_io_cin; // @[CRA.scala 22:20]
  wire  FA1_4_io_s; // @[CRA.scala 22:20]
  wire  FA1_4_io_cout; // @[CRA.scala 22:20]
  wire  FA1_4_io_p; // @[CRA.scala 22:20]
  wire  FA1_5_io_x; // @[CRA.scala 22:20]
  wire  FA1_5_io_y; // @[CRA.scala 22:20]
  wire  FA1_5_io_cin; // @[CRA.scala 22:20]
  wire  FA1_5_io_s; // @[CRA.scala 22:20]
  wire  FA1_5_io_cout; // @[CRA.scala 22:20]
  wire  FA1_5_io_p; // @[CRA.scala 22:20]
  wire  FA1_6_io_x; // @[CRA.scala 22:20]
  wire  FA1_6_io_y; // @[CRA.scala 22:20]
  wire  FA1_6_io_cin; // @[CRA.scala 22:20]
  wire  FA1_6_io_s; // @[CRA.scala 22:20]
  wire  FA1_6_io_cout; // @[CRA.scala 22:20]
  wire  FA1_6_io_p; // @[CRA.scala 22:20]
  wire  FA1_7_io_x; // @[CRA.scala 22:20]
  wire  FA1_7_io_y; // @[CRA.scala 22:20]
  wire  FA1_7_io_cin; // @[CRA.scala 22:20]
  wire  FA1_7_io_s; // @[CRA.scala 22:20]
  wire  FA1_7_io_cout; // @[CRA.scala 22:20]
  wire  FA1_7_io_p; // @[CRA.scala 22:20]
  wire  FA1_8_io_x; // @[CRA.scala 22:20]
  wire  FA1_8_io_y; // @[CRA.scala 22:20]
  wire  FA1_8_io_cin; // @[CRA.scala 22:20]
  wire  FA1_8_io_s; // @[CRA.scala 22:20]
  wire  FA1_8_io_cout; // @[CRA.scala 22:20]
  wire  FA1_8_io_p; // @[CRA.scala 22:20]
  wire  FA1_9_io_x; // @[CRA.scala 22:20]
  wire  FA1_9_io_y; // @[CRA.scala 22:20]
  wire  FA1_9_io_cin; // @[CRA.scala 22:20]
  wire  FA1_9_io_s; // @[CRA.scala 22:20]
  wire  FA1_9_io_cout; // @[CRA.scala 22:20]
  wire  FA1_9_io_p; // @[CRA.scala 22:20]
  wire  FA1_10_io_x; // @[CRA.scala 22:20]
  wire  FA1_10_io_y; // @[CRA.scala 22:20]
  wire  FA1_10_io_cin; // @[CRA.scala 22:20]
  wire  FA1_10_io_s; // @[CRA.scala 22:20]
  wire  FA1_10_io_cout; // @[CRA.scala 22:20]
  wire  FA1_10_io_p; // @[CRA.scala 22:20]
  wire  FA1_11_io_x; // @[CRA.scala 22:20]
  wire  FA1_11_io_y; // @[CRA.scala 22:20]
  wire  FA1_11_io_cin; // @[CRA.scala 22:20]
  wire  FA1_11_io_s; // @[CRA.scala 22:20]
  wire  FA1_11_io_cout; // @[CRA.scala 22:20]
  wire  FA1_11_io_p; // @[CRA.scala 22:20]
  wire  FA1_12_io_x; // @[CRA.scala 22:20]
  wire  FA1_12_io_y; // @[CRA.scala 22:20]
  wire  FA1_12_io_cin; // @[CRA.scala 22:20]
  wire  FA1_12_io_s; // @[CRA.scala 22:20]
  wire  FA1_12_io_cout; // @[CRA.scala 22:20]
  wire  FA1_12_io_p; // @[CRA.scala 22:20]
  wire  FA1_13_io_x; // @[CRA.scala 22:20]
  wire  FA1_13_io_y; // @[CRA.scala 22:20]
  wire  FA1_13_io_cin; // @[CRA.scala 22:20]
  wire  FA1_13_io_s; // @[CRA.scala 22:20]
  wire  FA1_13_io_cout; // @[CRA.scala 22:20]
  wire  FA1_13_io_p; // @[CRA.scala 22:20]
  wire  FA1_14_io_x; // @[CRA.scala 22:20]
  wire  FA1_14_io_y; // @[CRA.scala 22:20]
  wire  FA1_14_io_cin; // @[CRA.scala 22:20]
  wire  FA1_14_io_s; // @[CRA.scala 22:20]
  wire  FA1_14_io_cout; // @[CRA.scala 22:20]
  wire  FA1_14_io_p; // @[CRA.scala 22:20]
  wire  FA1_15_io_x; // @[CRA.scala 22:20]
  wire  FA1_15_io_y; // @[CRA.scala 22:20]
  wire  FA1_15_io_cin; // @[CRA.scala 22:20]
  wire  FA1_15_io_s; // @[CRA.scala 22:20]
  wire  FA1_15_io_cout; // @[CRA.scala 22:20]
  wire  FA1_15_io_p; // @[CRA.scala 22:20]
  wire  FA1_16_io_x; // @[CRA.scala 22:20]
  wire  FA1_16_io_y; // @[CRA.scala 22:20]
  wire  FA1_16_io_cin; // @[CRA.scala 22:20]
  wire  FA1_16_io_s; // @[CRA.scala 22:20]
  wire  FA1_16_io_cout; // @[CRA.scala 22:20]
  wire  FA1_16_io_p; // @[CRA.scala 22:20]
  wire  FA1_17_io_x; // @[CRA.scala 22:20]
  wire  FA1_17_io_y; // @[CRA.scala 22:20]
  wire  FA1_17_io_cin; // @[CRA.scala 22:20]
  wire  FA1_17_io_s; // @[CRA.scala 22:20]
  wire  FA1_17_io_cout; // @[CRA.scala 22:20]
  wire  FA1_17_io_p; // @[CRA.scala 22:20]
  wire  FA1_18_io_x; // @[CRA.scala 22:20]
  wire  FA1_18_io_y; // @[CRA.scala 22:20]
  wire  FA1_18_io_cin; // @[CRA.scala 22:20]
  wire  FA1_18_io_s; // @[CRA.scala 22:20]
  wire  FA1_18_io_cout; // @[CRA.scala 22:20]
  wire  FA1_18_io_p; // @[CRA.scala 22:20]
  wire  FA1_19_io_x; // @[CRA.scala 22:20]
  wire  FA1_19_io_y; // @[CRA.scala 22:20]
  wire  FA1_19_io_cin; // @[CRA.scala 22:20]
  wire  FA1_19_io_s; // @[CRA.scala 22:20]
  wire  FA1_19_io_cout; // @[CRA.scala 22:20]
  wire  FA1_19_io_p; // @[CRA.scala 22:20]
  wire  FA1_20_io_x; // @[CRA.scala 22:20]
  wire  FA1_20_io_y; // @[CRA.scala 22:20]
  wire  FA1_20_io_cin; // @[CRA.scala 22:20]
  wire  FA1_20_io_s; // @[CRA.scala 22:20]
  wire  FA1_20_io_cout; // @[CRA.scala 22:20]
  wire  FA1_20_io_p; // @[CRA.scala 22:20]
  wire  FA1_21_io_x; // @[CRA.scala 22:20]
  wire  FA1_21_io_y; // @[CRA.scala 22:20]
  wire  FA1_21_io_cin; // @[CRA.scala 22:20]
  wire  FA1_21_io_s; // @[CRA.scala 22:20]
  wire  FA1_21_io_cout; // @[CRA.scala 22:20]
  wire  FA1_21_io_p; // @[CRA.scala 22:20]
  wire  FA1_22_io_x; // @[CRA.scala 22:20]
  wire  FA1_22_io_y; // @[CRA.scala 22:20]
  wire  FA1_22_io_cin; // @[CRA.scala 22:20]
  wire  FA1_22_io_s; // @[CRA.scala 22:20]
  wire  FA1_22_io_cout; // @[CRA.scala 22:20]
  wire  FA1_22_io_p; // @[CRA.scala 22:20]
  wire  FA1_23_io_x; // @[CRA.scala 22:20]
  wire  FA1_23_io_y; // @[CRA.scala 22:20]
  wire  FA1_23_io_cin; // @[CRA.scala 22:20]
  wire  FA1_23_io_s; // @[CRA.scala 22:20]
  wire  FA1_23_io_cout; // @[CRA.scala 22:20]
  wire  FA1_23_io_p; // @[CRA.scala 22:20]
  wire  FA1_24_io_x; // @[CRA.scala 22:20]
  wire  FA1_24_io_y; // @[CRA.scala 22:20]
  wire  FA1_24_io_cin; // @[CRA.scala 22:20]
  wire  FA1_24_io_s; // @[CRA.scala 22:20]
  wire  FA1_24_io_cout; // @[CRA.scala 22:20]
  wire  FA1_24_io_p; // @[CRA.scala 22:20]
  wire  FA1_25_io_x; // @[CRA.scala 22:20]
  wire  FA1_25_io_y; // @[CRA.scala 22:20]
  wire  FA1_25_io_cin; // @[CRA.scala 22:20]
  wire  FA1_25_io_s; // @[CRA.scala 22:20]
  wire  FA1_25_io_cout; // @[CRA.scala 22:20]
  wire  FA1_25_io_p; // @[CRA.scala 22:20]
  wire  FA1_26_io_x; // @[CRA.scala 22:20]
  wire  FA1_26_io_y; // @[CRA.scala 22:20]
  wire  FA1_26_io_cin; // @[CRA.scala 22:20]
  wire  FA1_26_io_s; // @[CRA.scala 22:20]
  wire  FA1_26_io_cout; // @[CRA.scala 22:20]
  wire  FA1_26_io_p; // @[CRA.scala 22:20]
  wire  FA1_27_io_x; // @[CRA.scala 22:20]
  wire  FA1_27_io_y; // @[CRA.scala 22:20]
  wire  FA1_27_io_cin; // @[CRA.scala 22:20]
  wire  FA1_27_io_s; // @[CRA.scala 22:20]
  wire  FA1_27_io_cout; // @[CRA.scala 22:20]
  wire  FA1_27_io_p; // @[CRA.scala 22:20]
  wire  FA1_28_io_x; // @[CRA.scala 22:20]
  wire  FA1_28_io_y; // @[CRA.scala 22:20]
  wire  FA1_28_io_cin; // @[CRA.scala 22:20]
  wire  FA1_28_io_s; // @[CRA.scala 22:20]
  wire  FA1_28_io_cout; // @[CRA.scala 22:20]
  wire  FA1_28_io_p; // @[CRA.scala 22:20]
  wire  FA1_29_io_x; // @[CRA.scala 22:20]
  wire  FA1_29_io_y; // @[CRA.scala 22:20]
  wire  FA1_29_io_cin; // @[CRA.scala 22:20]
  wire  FA1_29_io_s; // @[CRA.scala 22:20]
  wire  FA1_29_io_cout; // @[CRA.scala 22:20]
  wire  FA1_29_io_p; // @[CRA.scala 22:20]
  wire  FA1_30_io_x; // @[CRA.scala 22:20]
  wire  FA1_30_io_y; // @[CRA.scala 22:20]
  wire  FA1_30_io_cin; // @[CRA.scala 22:20]
  wire  FA1_30_io_s; // @[CRA.scala 22:20]
  wire  FA1_30_io_cout; // @[CRA.scala 22:20]
  wire  FA1_30_io_p; // @[CRA.scala 22:20]
  wire  FA1_31_io_x; // @[CRA.scala 22:20]
  wire  FA1_31_io_y; // @[CRA.scala 22:20]
  wire  FA1_31_io_cin; // @[CRA.scala 22:20]
  wire  FA1_31_io_s; // @[CRA.scala 22:20]
  wire  FA1_31_io_cout; // @[CRA.scala 22:20]
  wire  FA1_31_io_p; // @[CRA.scala 22:20]
  wire  _T_64_1; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_0; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_3; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_2; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_5; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_4; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_7; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_6; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire [7:0] _T_71; // @[CRA.scala 38:44]
  wire  _T_64_9; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_8; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_11; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_10; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_13; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_12; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_15; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_14; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire [15:0] _T_79; // @[CRA.scala 38:44]
  wire  _T_64_17; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_16; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_19; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_18; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_21; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_20; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_23; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_22; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire [7:0] _T_86; // @[CRA.scala 38:44]
  wire  _T_64_25; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_24; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_27; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_26; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_29; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_28; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_31; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire  _T_64_30; // @[CRA.scala 38:18 CRA.scala 38:18]
  wire [15:0] _T_94; // @[CRA.scala 38:44]
  wire  _T_128_1; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_0; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_3; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_2; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_5; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_4; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_7; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_6; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire [7:0] _T_135; // @[CRA.scala 42:44]
  wire  _T_128_9; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_8; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_11; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_10; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_13; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_12; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_15; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_14; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire [15:0] _T_143; // @[CRA.scala 42:44]
  wire  _T_128_17; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_16; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_19; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_18; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_21; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_20; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_23; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_22; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire [7:0] _T_150; // @[CRA.scala 42:44]
  wire  _T_128_25; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_24; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_27; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_26; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_29; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_28; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_31; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire  _T_128_30; // @[CRA.scala 42:18 CRA.scala 42:18]
  wire [15:0] _T_158; // @[CRA.scala 42:44]
  FA1 FA1 ( // @[CRA.scala 22:20]
    .io_x(FA1_io_x),
    .io_y(FA1_io_y),
    .io_cin(FA1_io_cin),
    .io_s(FA1_io_s),
    .io_cout(FA1_io_cout),
    .io_p(FA1_io_p)
  );
  FA1 FA1_1 ( // @[CRA.scala 22:20]
    .io_x(FA1_1_io_x),
    .io_y(FA1_1_io_y),
    .io_cin(FA1_1_io_cin),
    .io_s(FA1_1_io_s),
    .io_cout(FA1_1_io_cout),
    .io_p(FA1_1_io_p)
  );
  FA1 FA1_2 ( // @[CRA.scala 22:20]
    .io_x(FA1_2_io_x),
    .io_y(FA1_2_io_y),
    .io_cin(FA1_2_io_cin),
    .io_s(FA1_2_io_s),
    .io_cout(FA1_2_io_cout),
    .io_p(FA1_2_io_p)
  );
  FA1 FA1_3 ( // @[CRA.scala 22:20]
    .io_x(FA1_3_io_x),
    .io_y(FA1_3_io_y),
    .io_cin(FA1_3_io_cin),
    .io_s(FA1_3_io_s),
    .io_cout(FA1_3_io_cout),
    .io_p(FA1_3_io_p)
  );
  FA1 FA1_4 ( // @[CRA.scala 22:20]
    .io_x(FA1_4_io_x),
    .io_y(FA1_4_io_y),
    .io_cin(FA1_4_io_cin),
    .io_s(FA1_4_io_s),
    .io_cout(FA1_4_io_cout),
    .io_p(FA1_4_io_p)
  );
  FA1 FA1_5 ( // @[CRA.scala 22:20]
    .io_x(FA1_5_io_x),
    .io_y(FA1_5_io_y),
    .io_cin(FA1_5_io_cin),
    .io_s(FA1_5_io_s),
    .io_cout(FA1_5_io_cout),
    .io_p(FA1_5_io_p)
  );
  FA1 FA1_6 ( // @[CRA.scala 22:20]
    .io_x(FA1_6_io_x),
    .io_y(FA1_6_io_y),
    .io_cin(FA1_6_io_cin),
    .io_s(FA1_6_io_s),
    .io_cout(FA1_6_io_cout),
    .io_p(FA1_6_io_p)
  );
  FA1 FA1_7 ( // @[CRA.scala 22:20]
    .io_x(FA1_7_io_x),
    .io_y(FA1_7_io_y),
    .io_cin(FA1_7_io_cin),
    .io_s(FA1_7_io_s),
    .io_cout(FA1_7_io_cout),
    .io_p(FA1_7_io_p)
  );
  FA1 FA1_8 ( // @[CRA.scala 22:20]
    .io_x(FA1_8_io_x),
    .io_y(FA1_8_io_y),
    .io_cin(FA1_8_io_cin),
    .io_s(FA1_8_io_s),
    .io_cout(FA1_8_io_cout),
    .io_p(FA1_8_io_p)
  );
  FA1 FA1_9 ( // @[CRA.scala 22:20]
    .io_x(FA1_9_io_x),
    .io_y(FA1_9_io_y),
    .io_cin(FA1_9_io_cin),
    .io_s(FA1_9_io_s),
    .io_cout(FA1_9_io_cout),
    .io_p(FA1_9_io_p)
  );
  FA1 FA1_10 ( // @[CRA.scala 22:20]
    .io_x(FA1_10_io_x),
    .io_y(FA1_10_io_y),
    .io_cin(FA1_10_io_cin),
    .io_s(FA1_10_io_s),
    .io_cout(FA1_10_io_cout),
    .io_p(FA1_10_io_p)
  );
  FA1 FA1_11 ( // @[CRA.scala 22:20]
    .io_x(FA1_11_io_x),
    .io_y(FA1_11_io_y),
    .io_cin(FA1_11_io_cin),
    .io_s(FA1_11_io_s),
    .io_cout(FA1_11_io_cout),
    .io_p(FA1_11_io_p)
  );
  FA1 FA1_12 ( // @[CRA.scala 22:20]
    .io_x(FA1_12_io_x),
    .io_y(FA1_12_io_y),
    .io_cin(FA1_12_io_cin),
    .io_s(FA1_12_io_s),
    .io_cout(FA1_12_io_cout),
    .io_p(FA1_12_io_p)
  );
  FA1 FA1_13 ( // @[CRA.scala 22:20]
    .io_x(FA1_13_io_x),
    .io_y(FA1_13_io_y),
    .io_cin(FA1_13_io_cin),
    .io_s(FA1_13_io_s),
    .io_cout(FA1_13_io_cout),
    .io_p(FA1_13_io_p)
  );
  FA1 FA1_14 ( // @[CRA.scala 22:20]
    .io_x(FA1_14_io_x),
    .io_y(FA1_14_io_y),
    .io_cin(FA1_14_io_cin),
    .io_s(FA1_14_io_s),
    .io_cout(FA1_14_io_cout),
    .io_p(FA1_14_io_p)
  );
  FA1 FA1_15 ( // @[CRA.scala 22:20]
    .io_x(FA1_15_io_x),
    .io_y(FA1_15_io_y),
    .io_cin(FA1_15_io_cin),
    .io_s(FA1_15_io_s),
    .io_cout(FA1_15_io_cout),
    .io_p(FA1_15_io_p)
  );
  FA1 FA1_16 ( // @[CRA.scala 22:20]
    .io_x(FA1_16_io_x),
    .io_y(FA1_16_io_y),
    .io_cin(FA1_16_io_cin),
    .io_s(FA1_16_io_s),
    .io_cout(FA1_16_io_cout),
    .io_p(FA1_16_io_p)
  );
  FA1 FA1_17 ( // @[CRA.scala 22:20]
    .io_x(FA1_17_io_x),
    .io_y(FA1_17_io_y),
    .io_cin(FA1_17_io_cin),
    .io_s(FA1_17_io_s),
    .io_cout(FA1_17_io_cout),
    .io_p(FA1_17_io_p)
  );
  FA1 FA1_18 ( // @[CRA.scala 22:20]
    .io_x(FA1_18_io_x),
    .io_y(FA1_18_io_y),
    .io_cin(FA1_18_io_cin),
    .io_s(FA1_18_io_s),
    .io_cout(FA1_18_io_cout),
    .io_p(FA1_18_io_p)
  );
  FA1 FA1_19 ( // @[CRA.scala 22:20]
    .io_x(FA1_19_io_x),
    .io_y(FA1_19_io_y),
    .io_cin(FA1_19_io_cin),
    .io_s(FA1_19_io_s),
    .io_cout(FA1_19_io_cout),
    .io_p(FA1_19_io_p)
  );
  FA1 FA1_20 ( // @[CRA.scala 22:20]
    .io_x(FA1_20_io_x),
    .io_y(FA1_20_io_y),
    .io_cin(FA1_20_io_cin),
    .io_s(FA1_20_io_s),
    .io_cout(FA1_20_io_cout),
    .io_p(FA1_20_io_p)
  );
  FA1 FA1_21 ( // @[CRA.scala 22:20]
    .io_x(FA1_21_io_x),
    .io_y(FA1_21_io_y),
    .io_cin(FA1_21_io_cin),
    .io_s(FA1_21_io_s),
    .io_cout(FA1_21_io_cout),
    .io_p(FA1_21_io_p)
  );
  FA1 FA1_22 ( // @[CRA.scala 22:20]
    .io_x(FA1_22_io_x),
    .io_y(FA1_22_io_y),
    .io_cin(FA1_22_io_cin),
    .io_s(FA1_22_io_s),
    .io_cout(FA1_22_io_cout),
    .io_p(FA1_22_io_p)
  );
  FA1 FA1_23 ( // @[CRA.scala 22:20]
    .io_x(FA1_23_io_x),
    .io_y(FA1_23_io_y),
    .io_cin(FA1_23_io_cin),
    .io_s(FA1_23_io_s),
    .io_cout(FA1_23_io_cout),
    .io_p(FA1_23_io_p)
  );
  FA1 FA1_24 ( // @[CRA.scala 22:20]
    .io_x(FA1_24_io_x),
    .io_y(FA1_24_io_y),
    .io_cin(FA1_24_io_cin),
    .io_s(FA1_24_io_s),
    .io_cout(FA1_24_io_cout),
    .io_p(FA1_24_io_p)
  );
  FA1 FA1_25 ( // @[CRA.scala 22:20]
    .io_x(FA1_25_io_x),
    .io_y(FA1_25_io_y),
    .io_cin(FA1_25_io_cin),
    .io_s(FA1_25_io_s),
    .io_cout(FA1_25_io_cout),
    .io_p(FA1_25_io_p)
  );
  FA1 FA1_26 ( // @[CRA.scala 22:20]
    .io_x(FA1_26_io_x),
    .io_y(FA1_26_io_y),
    .io_cin(FA1_26_io_cin),
    .io_s(FA1_26_io_s),
    .io_cout(FA1_26_io_cout),
    .io_p(FA1_26_io_p)
  );
  FA1 FA1_27 ( // @[CRA.scala 22:20]
    .io_x(FA1_27_io_x),
    .io_y(FA1_27_io_y),
    .io_cin(FA1_27_io_cin),
    .io_s(FA1_27_io_s),
    .io_cout(FA1_27_io_cout),
    .io_p(FA1_27_io_p)
  );
  FA1 FA1_28 ( // @[CRA.scala 22:20]
    .io_x(FA1_28_io_x),
    .io_y(FA1_28_io_y),
    .io_cin(FA1_28_io_cin),
    .io_s(FA1_28_io_s),
    .io_cout(FA1_28_io_cout),
    .io_p(FA1_28_io_p)
  );
  FA1 FA1_29 ( // @[CRA.scala 22:20]
    .io_x(FA1_29_io_x),
    .io_y(FA1_29_io_y),
    .io_cin(FA1_29_io_cin),
    .io_s(FA1_29_io_s),
    .io_cout(FA1_29_io_cout),
    .io_p(FA1_29_io_p)
  );
  FA1 FA1_30 ( // @[CRA.scala 22:20]
    .io_x(FA1_30_io_x),
    .io_y(FA1_30_io_y),
    .io_cin(FA1_30_io_cin),
    .io_s(FA1_30_io_s),
    .io_cout(FA1_30_io_cout),
    .io_p(FA1_30_io_p)
  );
  FA1 FA1_31 ( // @[CRA.scala 22:20]
    .io_x(FA1_31_io_x),
    .io_y(FA1_31_io_y),
    .io_cin(FA1_31_io_cin),
    .io_s(FA1_31_io_s),
    .io_cout(FA1_31_io_cout),
    .io_p(FA1_31_io_p)
  );
  assign _T_64_1 = FA1_1_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_0 = FA1_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_3 = FA1_3_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_2 = FA1_2_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_5 = FA1_5_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_4 = FA1_4_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_7 = FA1_7_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_6 = FA1_6_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_71 = {_T_64_7,_T_64_6,_T_64_5,_T_64_4,_T_64_3,_T_64_2,_T_64_1,_T_64_0}; // @[CRA.scala 38:44]
  assign _T_64_9 = FA1_9_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_8 = FA1_8_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_11 = FA1_11_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_10 = FA1_10_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_13 = FA1_13_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_12 = FA1_12_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_15 = FA1_15_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_14 = FA1_14_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_79 = {_T_64_15,_T_64_14,_T_64_13,_T_64_12,_T_64_11,_T_64_10,_T_64_9,_T_64_8,_T_71}; // @[CRA.scala 38:44]
  assign _T_64_17 = FA1_17_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_16 = FA1_16_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_19 = FA1_19_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_18 = FA1_18_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_21 = FA1_21_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_20 = FA1_20_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_23 = FA1_23_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_22 = FA1_22_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_86 = {_T_64_23,_T_64_22,_T_64_21,_T_64_20,_T_64_19,_T_64_18,_T_64_17,_T_64_16}; // @[CRA.scala 38:44]
  assign _T_64_25 = FA1_25_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_24 = FA1_24_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_27 = FA1_27_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_26 = FA1_26_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_29 = FA1_29_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_28 = FA1_28_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_31 = FA1_31_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_64_30 = FA1_30_io_s; // @[CRA.scala 38:18 CRA.scala 38:18]
  assign _T_94 = {_T_64_31,_T_64_30,_T_64_29,_T_64_28,_T_64_27,_T_64_26,_T_64_25,_T_64_24,_T_86}; // @[CRA.scala 38:44]
  assign _T_128_1 = FA1_1_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_0 = FA1_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_3 = FA1_3_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_2 = FA1_2_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_5 = FA1_5_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_4 = FA1_4_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_7 = FA1_7_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_6 = FA1_6_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_135 = {_T_128_7,_T_128_6,_T_128_5,_T_128_4,_T_128_3,_T_128_2,_T_128_1,_T_128_0}; // @[CRA.scala 42:44]
  assign _T_128_9 = FA1_9_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_8 = FA1_8_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_11 = FA1_11_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_10 = FA1_10_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_13 = FA1_13_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_12 = FA1_12_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_15 = FA1_15_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_14 = FA1_14_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_143 = {_T_128_15,_T_128_14,_T_128_13,_T_128_12,_T_128_11,_T_128_10,_T_128_9,_T_128_8,_T_135}; // @[CRA.scala 42:44]
  assign _T_128_17 = FA1_17_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_16 = FA1_16_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_19 = FA1_19_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_18 = FA1_18_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_21 = FA1_21_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_20 = FA1_20_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_23 = FA1_23_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_22 = FA1_22_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_150 = {_T_128_23,_T_128_22,_T_128_21,_T_128_20,_T_128_19,_T_128_18,_T_128_17,_T_128_16}; // @[CRA.scala 42:44]
  assign _T_128_25 = FA1_25_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_24 = FA1_24_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_27 = FA1_27_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_26 = FA1_26_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_29 = FA1_29_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_28 = FA1_28_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_31 = FA1_31_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_128_30 = FA1_30_io_p; // @[CRA.scala 42:18 CRA.scala 42:18]
  assign _T_158 = {_T_128_31,_T_128_30,_T_128_29,_T_128_28,_T_128_27,_T_128_26,_T_128_25,_T_128_24,_T_150}; // @[CRA.scala 42:44]
  assign io_s = {_T_94,_T_79}; // @[CRA.scala 38:8]
  assign io_cout = FA1_31_io_cout; // @[CRA.scala 35:11]
  assign io_p = {_T_158,_T_143}; // @[CRA.scala 42:8]
  assign FA1_io_x = io_x[0]; // @[CRA.scala 23:10]
  assign FA1_io_y = io_y[0]; // @[CRA.scala 24:10]
  assign FA1_io_cin = io_cin; // @[CRA.scala 34:21]
  assign FA1_1_io_x = io_x[1]; // @[CRA.scala 23:10]
  assign FA1_1_io_y = io_y[1]; // @[CRA.scala 24:10]
  assign FA1_1_io_cin = FA1_io_cout; // @[CRA.scala 30:27]
  assign FA1_2_io_x = io_x[2]; // @[CRA.scala 23:10]
  assign FA1_2_io_y = io_y[2]; // @[CRA.scala 24:10]
  assign FA1_2_io_cin = FA1_1_io_cout; // @[CRA.scala 30:27]
  assign FA1_3_io_x = io_x[3]; // @[CRA.scala 23:10]
  assign FA1_3_io_y = io_y[3]; // @[CRA.scala 24:10]
  assign FA1_3_io_cin = FA1_2_io_cout; // @[CRA.scala 30:27]
  assign FA1_4_io_x = io_x[4]; // @[CRA.scala 23:10]
  assign FA1_4_io_y = io_y[4]; // @[CRA.scala 24:10]
  assign FA1_4_io_cin = FA1_3_io_cout; // @[CRA.scala 30:27]
  assign FA1_5_io_x = io_x[5]; // @[CRA.scala 23:10]
  assign FA1_5_io_y = io_y[5]; // @[CRA.scala 24:10]
  assign FA1_5_io_cin = FA1_4_io_cout; // @[CRA.scala 30:27]
  assign FA1_6_io_x = io_x[6]; // @[CRA.scala 23:10]
  assign FA1_6_io_y = io_y[6]; // @[CRA.scala 24:10]
  assign FA1_6_io_cin = FA1_5_io_cout; // @[CRA.scala 30:27]
  assign FA1_7_io_x = io_x[7]; // @[CRA.scala 23:10]
  assign FA1_7_io_y = io_y[7]; // @[CRA.scala 24:10]
  assign FA1_7_io_cin = FA1_6_io_cout; // @[CRA.scala 30:27]
  assign FA1_8_io_x = io_x[8]; // @[CRA.scala 23:10]
  assign FA1_8_io_y = io_y[8]; // @[CRA.scala 24:10]
  assign FA1_8_io_cin = FA1_7_io_cout; // @[CRA.scala 30:27]
  assign FA1_9_io_x = io_x[9]; // @[CRA.scala 23:10]
  assign FA1_9_io_y = io_y[9]; // @[CRA.scala 24:10]
  assign FA1_9_io_cin = FA1_8_io_cout; // @[CRA.scala 30:27]
  assign FA1_10_io_x = io_x[10]; // @[CRA.scala 23:10]
  assign FA1_10_io_y = io_y[10]; // @[CRA.scala 24:10]
  assign FA1_10_io_cin = FA1_9_io_cout; // @[CRA.scala 30:27]
  assign FA1_11_io_x = io_x[11]; // @[CRA.scala 23:10]
  assign FA1_11_io_y = io_y[11]; // @[CRA.scala 24:10]
  assign FA1_11_io_cin = FA1_10_io_cout; // @[CRA.scala 30:27]
  assign FA1_12_io_x = io_x[12]; // @[CRA.scala 23:10]
  assign FA1_12_io_y = io_y[12]; // @[CRA.scala 24:10]
  assign FA1_12_io_cin = FA1_11_io_cout; // @[CRA.scala 30:27]
  assign FA1_13_io_x = io_x[13]; // @[CRA.scala 23:10]
  assign FA1_13_io_y = io_y[13]; // @[CRA.scala 24:10]
  assign FA1_13_io_cin = FA1_12_io_cout; // @[CRA.scala 30:27]
  assign FA1_14_io_x = io_x[14]; // @[CRA.scala 23:10]
  assign FA1_14_io_y = io_y[14]; // @[CRA.scala 24:10]
  assign FA1_14_io_cin = FA1_13_io_cout; // @[CRA.scala 30:27]
  assign FA1_15_io_x = io_x[15]; // @[CRA.scala 23:10]
  assign FA1_15_io_y = io_y[15]; // @[CRA.scala 24:10]
  assign FA1_15_io_cin = FA1_14_io_cout; // @[CRA.scala 30:27]
  assign FA1_16_io_x = io_x[16]; // @[CRA.scala 23:10]
  assign FA1_16_io_y = io_y[16]; // @[CRA.scala 24:10]
  assign FA1_16_io_cin = FA1_15_io_cout; // @[CRA.scala 30:27]
  assign FA1_17_io_x = io_x[17]; // @[CRA.scala 23:10]
  assign FA1_17_io_y = io_y[17]; // @[CRA.scala 24:10]
  assign FA1_17_io_cin = FA1_16_io_cout; // @[CRA.scala 30:27]
  assign FA1_18_io_x = io_x[18]; // @[CRA.scala 23:10]
  assign FA1_18_io_y = io_y[18]; // @[CRA.scala 24:10]
  assign FA1_18_io_cin = FA1_17_io_cout; // @[CRA.scala 30:27]
  assign FA1_19_io_x = io_x[19]; // @[CRA.scala 23:10]
  assign FA1_19_io_y = io_y[19]; // @[CRA.scala 24:10]
  assign FA1_19_io_cin = FA1_18_io_cout; // @[CRA.scala 30:27]
  assign FA1_20_io_x = io_x[20]; // @[CRA.scala 23:10]
  assign FA1_20_io_y = io_y[20]; // @[CRA.scala 24:10]
  assign FA1_20_io_cin = FA1_19_io_cout; // @[CRA.scala 30:27]
  assign FA1_21_io_x = io_x[21]; // @[CRA.scala 23:10]
  assign FA1_21_io_y = io_y[21]; // @[CRA.scala 24:10]
  assign FA1_21_io_cin = FA1_20_io_cout; // @[CRA.scala 30:27]
  assign FA1_22_io_x = io_x[22]; // @[CRA.scala 23:10]
  assign FA1_22_io_y = io_y[22]; // @[CRA.scala 24:10]
  assign FA1_22_io_cin = FA1_21_io_cout; // @[CRA.scala 30:27]
  assign FA1_23_io_x = io_x[23]; // @[CRA.scala 23:10]
  assign FA1_23_io_y = io_y[23]; // @[CRA.scala 24:10]
  assign FA1_23_io_cin = FA1_22_io_cout; // @[CRA.scala 30:27]
  assign FA1_24_io_x = io_x[24]; // @[CRA.scala 23:10]
  assign FA1_24_io_y = io_y[24]; // @[CRA.scala 24:10]
  assign FA1_24_io_cin = FA1_23_io_cout; // @[CRA.scala 30:27]
  assign FA1_25_io_x = io_x[25]; // @[CRA.scala 23:10]
  assign FA1_25_io_y = io_y[25]; // @[CRA.scala 24:10]
  assign FA1_25_io_cin = FA1_24_io_cout; // @[CRA.scala 30:27]
  assign FA1_26_io_x = io_x[26]; // @[CRA.scala 23:10]
  assign FA1_26_io_y = io_y[26]; // @[CRA.scala 24:10]
  assign FA1_26_io_cin = FA1_25_io_cout; // @[CRA.scala 30:27]
  assign FA1_27_io_x = io_x[27]; // @[CRA.scala 23:10]
  assign FA1_27_io_y = io_y[27]; // @[CRA.scala 24:10]
  assign FA1_27_io_cin = FA1_26_io_cout; // @[CRA.scala 30:27]
  assign FA1_28_io_x = io_x[28]; // @[CRA.scala 23:10]
  assign FA1_28_io_y = io_y[28]; // @[CRA.scala 24:10]
  assign FA1_28_io_cin = FA1_27_io_cout; // @[CRA.scala 30:27]
  assign FA1_29_io_x = io_x[29]; // @[CRA.scala 23:10]
  assign FA1_29_io_y = io_y[29]; // @[CRA.scala 24:10]
  assign FA1_29_io_cin = FA1_28_io_cout; // @[CRA.scala 30:27]
  assign FA1_30_io_x = io_x[30]; // @[CRA.scala 23:10]
  assign FA1_30_io_y = io_y[30]; // @[CRA.scala 24:10]
  assign FA1_30_io_cin = FA1_29_io_cout; // @[CRA.scala 30:27]
  assign FA1_31_io_x = io_x[31]; // @[CRA.scala 23:10]
  assign FA1_31_io_y = io_y[31]; // @[CRA.scala 24:10]
  assign FA1_31_io_cin = FA1_30_io_cout; // @[CRA.scala 30:27]
endmodule
module CSK(
  input         clock,
  input         reset,
  input  [63:0] io_x,
  input  [63:0] io_y,
  input         io_cin,
  output [63:0] io_s,
  output        io_cout
);
  wire [31:0] CRA_io_x; // @[CSK.scala 21:21]
  wire [31:0] CRA_io_y; // @[CSK.scala 21:21]
  wire  CRA_io_cin; // @[CSK.scala 21:21]
  wire [31:0] CRA_io_s; // @[CSK.scala 21:21]
  wire  CRA_io_cout; // @[CSK.scala 21:21]
  wire [31:0] CRA_io_p; // @[CSK.scala 21:21]
  wire [31:0] CRA_1_io_x; // @[CSK.scala 21:21]
  wire [31:0] CRA_1_io_y; // @[CSK.scala 21:21]
  wire  CRA_1_io_cin; // @[CSK.scala 21:21]
  wire [31:0] CRA_1_io_s; // @[CSK.scala 21:21]
  wire  CRA_1_io_cout; // @[CSK.scala 21:21]
  wire [31:0] CRA_1_io_p; // @[CSK.scala 21:21]
  wire  _T_4; // @[CSK.scala 36:28]
  wire  _T_5; // @[CSK.scala 43:37]
  CRA CRA ( // @[CSK.scala 21:21]
    .io_x(CRA_io_x),
    .io_y(CRA_io_y),
    .io_cin(CRA_io_cin),
    .io_s(CRA_io_s),
    .io_cout(CRA_io_cout),
    .io_p(CRA_io_p)
  );
  CRA CRA_1 ( // @[CSK.scala 21:21]
    .io_x(CRA_1_io_x),
    .io_y(CRA_1_io_y),
    .io_cin(CRA_1_io_cin),
    .io_s(CRA_1_io_s),
    .io_cout(CRA_1_io_cout),
    .io_p(CRA_1_io_p)
  );
  assign _T_4 = CRA_io_p == 32'hffffffff; // @[CSK.scala 36:28]
  assign _T_5 = _T_4 & io_cin; // @[CSK.scala 43:37]
  assign io_s = {CRA_1_io_s,CRA_io_s}; // @[CSK.scala 52:8]
  assign io_cout = CRA_1_io_cout; // @[CSK.scala 39:15]
  assign CRA_io_x = io_x[31:0]; // @[CSK.scala 22:11]
  assign CRA_io_y = io_y[31:0]; // @[CSK.scala 23:11]
  assign CRA_io_cin = io_cin; // @[CSK.scala 26:15]
  assign CRA_1_io_x = io_x[63:32]; // @[CSK.scala 22:11]
  assign CRA_1_io_y = io_y[63:32]; // @[CSK.scala 23:11]
  assign CRA_1_io_cin = CRA_io_cout | _T_5; // @[CSK.scala 43:15]
endmodule
