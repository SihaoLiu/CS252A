module GPA1(
  input   io_x,
  input   io_y,
  output  io_g,
  output  io_p,
  output  io_a
);
  wire  g; // @[GPA1.scala 17:16]
  wire  p; // @[GPA1.scala 18:16]
  assign g = io_x & io_y; // @[GPA1.scala 17:16]
  assign p = io_x ^ io_y; // @[GPA1.scala 18:16]
  assign io_g = io_x & io_y; // @[GPA1.scala 20:8]
  assign io_p = io_x ^ io_y; // @[GPA1.scala 21:8]
  assign io_a = g | p; // @[GPA1.scala 22:8]
endmodule
module CLG(
  input  [7:0] io_g,
  input  [7:0] io_a,
  input        io_cin,
  output [7:0] io_c,
  output       io_G,
  output       io_A
);
  wire  _T; // @[CLG.scala 18:18]
  wire  _T_1; // @[CLG.scala 19:18]
  wire  _T_2; // @[CLG.scala 18:18]
  wire  _T_3; // @[CLG.scala 19:18]
  wire  _T_6; // @[CLG.scala 26:21]
  wire  _T_7; // @[CLG.scala 26:11]
  wire  _T_8; // @[CLG.scala 26:31]
  wire  _T_9; // @[CLG.scala 18:18]
  wire  _T_10; // @[CLG.scala 19:18]
  wire  _T_18; // @[CLG.scala 26:21]
  wire  _T_19; // @[CLG.scala 26:11]
  wire  _T_20; // @[CLG.scala 26:31]
  wire  _T_21; // @[CLG.scala 18:18]
  wire  _T_22; // @[CLG.scala 19:18]
  wire  _T_35; // @[CLG.scala 26:21]
  wire  _T_36; // @[CLG.scala 26:11]
  wire  _T_37; // @[CLG.scala 26:31]
  wire  _T_38; // @[CLG.scala 18:18]
  wire  _T_39; // @[CLG.scala 19:18]
  wire  _T_57; // @[CLG.scala 26:21]
  wire  _T_58; // @[CLG.scala 26:11]
  wire  _T_59; // @[CLG.scala 26:31]
  wire  _T_60; // @[CLG.scala 18:18]
  wire  _T_61; // @[CLG.scala 19:18]
  wire  _T_84; // @[CLG.scala 26:21]
  wire  _T_85; // @[CLG.scala 26:11]
  wire  _T_86; // @[CLG.scala 26:31]
  wire  _T_87; // @[CLG.scala 18:18]
  wire  _T_88; // @[CLG.scala 19:18]
  wire  _T_116; // @[CLG.scala 26:21]
  wire  _T_117; // @[CLG.scala 26:11]
  wire  _T_118; // @[CLG.scala 26:31]
  wire  _T_119; // @[CLG.scala 18:18]
  wire  _T_120; // @[CLG.scala 19:18]
  wire  _T_153; // @[CLG.scala 26:21]
  wire  _T_154; // @[CLG.scala 26:11]
  wire  _T_155; // @[CLG.scala 26:31]
  wire  _T_156; // @[CLG.scala 41:22]
  wire  c_bit_0; // @[CLG.scala 41:12]
  wire  _T_157; // @[CLG.scala 41:22]
  wire  c_bit_1; // @[CLG.scala 41:12]
  wire  _T_158; // @[CLG.scala 41:22]
  wire  c_bit_2; // @[CLG.scala 41:12]
  wire  _T_159; // @[CLG.scala 41:22]
  wire  c_bit_3; // @[CLG.scala 41:12]
  wire  _T_160; // @[CLG.scala 41:22]
  wire  c_bit_4; // @[CLG.scala 41:12]
  wire  _T_161; // @[CLG.scala 41:22]
  wire  c_bit_5; // @[CLG.scala 41:12]
  wire  _T_162; // @[CLG.scala 41:22]
  wire  c_bit_6; // @[CLG.scala 41:12]
  wire  _T_163; // @[CLG.scala 41:22]
  wire  c_bit_7; // @[CLG.scala 41:12]
  wire [3:0] _T_167; // @[CLG.scala 43:32]
  wire [3:0] _T_170; // @[CLG.scala 43:32]
  assign _T = io_g[0]; // @[CLG.scala 18:18]
  assign _T_1 = io_a[0]; // @[CLG.scala 19:18]
  assign _T_2 = io_g[1]; // @[CLG.scala 18:18]
  assign _T_3 = io_a[1]; // @[CLG.scala 19:18]
  assign _T_6 = _T & _T_3; // @[CLG.scala 26:21]
  assign _T_7 = _T_2 | _T_6; // @[CLG.scala 26:11]
  assign _T_8 = _T_3 & _T_1; // @[CLG.scala 26:31]
  assign _T_9 = io_g[2]; // @[CLG.scala 18:18]
  assign _T_10 = io_a[2]; // @[CLG.scala 19:18]
  assign _T_18 = _T_7 & _T_10; // @[CLG.scala 26:21]
  assign _T_19 = _T_9 | _T_18; // @[CLG.scala 26:11]
  assign _T_20 = _T_10 & _T_8; // @[CLG.scala 26:31]
  assign _T_21 = io_g[3]; // @[CLG.scala 18:18]
  assign _T_22 = io_a[3]; // @[CLG.scala 19:18]
  assign _T_35 = _T_19 & _T_22; // @[CLG.scala 26:21]
  assign _T_36 = _T_21 | _T_35; // @[CLG.scala 26:11]
  assign _T_37 = _T_22 & _T_20; // @[CLG.scala 26:31]
  assign _T_38 = io_g[4]; // @[CLG.scala 18:18]
  assign _T_39 = io_a[4]; // @[CLG.scala 19:18]
  assign _T_57 = _T_36 & _T_39; // @[CLG.scala 26:21]
  assign _T_58 = _T_38 | _T_57; // @[CLG.scala 26:11]
  assign _T_59 = _T_39 & _T_37; // @[CLG.scala 26:31]
  assign _T_60 = io_g[5]; // @[CLG.scala 18:18]
  assign _T_61 = io_a[5]; // @[CLG.scala 19:18]
  assign _T_84 = _T_58 & _T_61; // @[CLG.scala 26:21]
  assign _T_85 = _T_60 | _T_84; // @[CLG.scala 26:11]
  assign _T_86 = _T_61 & _T_59; // @[CLG.scala 26:31]
  assign _T_87 = io_g[6]; // @[CLG.scala 18:18]
  assign _T_88 = io_a[6]; // @[CLG.scala 19:18]
  assign _T_116 = _T_85 & _T_88; // @[CLG.scala 26:21]
  assign _T_117 = _T_87 | _T_116; // @[CLG.scala 26:11]
  assign _T_118 = _T_88 & _T_86; // @[CLG.scala 26:31]
  assign _T_119 = io_g[7]; // @[CLG.scala 18:18]
  assign _T_120 = io_a[7]; // @[CLG.scala 19:18]
  assign _T_153 = _T_117 & _T_120; // @[CLG.scala 26:21]
  assign _T_154 = _T_119 | _T_153; // @[CLG.scala 26:11]
  assign _T_155 = _T_120 & _T_118; // @[CLG.scala 26:31]
  assign _T_156 = _T_1 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_0 = _T | _T_156; // @[CLG.scala 41:12]
  assign _T_157 = _T_8 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_1 = _T_7 | _T_157; // @[CLG.scala 41:12]
  assign _T_158 = _T_20 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_2 = _T_19 | _T_158; // @[CLG.scala 41:12]
  assign _T_159 = _T_37 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_3 = _T_36 | _T_159; // @[CLG.scala 41:12]
  assign _T_160 = _T_59 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_4 = _T_58 | _T_160; // @[CLG.scala 41:12]
  assign _T_161 = _T_86 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_5 = _T_85 | _T_161; // @[CLG.scala 41:12]
  assign _T_162 = _T_118 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_6 = _T_117 | _T_162; // @[CLG.scala 41:12]
  assign _T_163 = _T_155 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_7 = _T_154 | _T_163; // @[CLG.scala 41:12]
  assign _T_167 = {c_bit_3,c_bit_2,c_bit_1,c_bit_0}; // @[CLG.scala 43:32]
  assign _T_170 = {c_bit_7,c_bit_6,c_bit_5,c_bit_4}; // @[CLG.scala 43:32]
  assign io_c = {_T_170,_T_167}; // @[CLG.scala 43:8]
  assign io_G = _T_119 | _T_153; // @[CLG.scala 46:8]
  assign io_A = _T_120 & _T_118; // @[CLG.scala 47:8]
endmodule
module adder.CLA(
  input        clock,
  input        reset,
  input  [7:0] io_x,
  input  [7:0] io_y,
  input        io_cin,
  output [7:0] io_s,
  output       io_cout,
  output       io_G,
  output       io_A
);
  wire  GPA1_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_1_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_1_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_1_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_1_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_1_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_2_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_2_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_2_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_2_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_2_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_3_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_3_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_3_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_3_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_3_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_4_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_4_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_4_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_4_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_4_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_5_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_5_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_5_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_5_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_5_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_6_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_6_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_6_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_6_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_6_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_7_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_7_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_7_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_7_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_7_io_a; // @[adder.CLA.scala 25:21]
  wire [7:0] CLG_io_g; // @[adder.CLA.scala 32:19]
  wire [7:0] CLG_io_a; // @[adder.CLA.scala 32:19]
  wire  CLG_io_cin; // @[adder.CLA.scala 32:19]
  wire [7:0] CLG_io_c; // @[adder.CLA.scala 32:19]
  wire  CLG_io_G; // @[adder.CLA.scala 32:19]
  wire  CLG_io_A; // @[adder.CLA.scala 32:19]
  wire  _T_16_1; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_16_0; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_16_3; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_16_2; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire [3:0] _T_19; // @[adder.CLA.scala 33:46]
  wire  _T_16_5; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_16_4; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_16_7; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_16_6; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire [3:0] _T_22; // @[adder.CLA.scala 33:46]
  wire  _T_24_1; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_24_0; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_24_3; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_24_2; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire [3:0] _T_27; // @[adder.CLA.scala 34:46]
  wire  _T_24_5; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_24_4; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_24_7; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_24_6; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire [3:0] _T_30; // @[adder.CLA.scala 34:46]
  wire  s_bit_0; // @[adder.CLA.scala 41:14]
  wire  _T_32; // @[adder.CLA.scala 43:12]
  wire  s_bit_1; // @[adder.CLA.scala 43:22]
  wire  _T_33; // @[adder.CLA.scala 43:12]
  wire  s_bit_2; // @[adder.CLA.scala 43:22]
  wire  _T_34; // @[adder.CLA.scala 43:12]
  wire  s_bit_3; // @[adder.CLA.scala 43:22]
  wire  _T_35; // @[adder.CLA.scala 43:12]
  wire  s_bit_4; // @[adder.CLA.scala 43:22]
  wire  _T_36; // @[adder.CLA.scala 43:12]
  wire  s_bit_5; // @[adder.CLA.scala 43:22]
  wire  _T_37; // @[adder.CLA.scala 43:12]
  wire  s_bit_6; // @[adder.CLA.scala 43:22]
  wire  _T_38; // @[adder.CLA.scala 43:12]
  wire  s_bit_7; // @[adder.CLA.scala 43:22]
  wire [3:0] _T_42; // @[adder.CLA.scala 46:32]
  wire [3:0] _T_45; // @[adder.CLA.scala 46:32]
  GPA1 GPA1 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_io_x),
    .io_y(GPA1_io_y),
    .io_g(GPA1_io_g),
    .io_p(GPA1_io_p),
    .io_a(GPA1_io_a)
  );
  GPA1 GPA1_1 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_1_io_x),
    .io_y(GPA1_1_io_y),
    .io_g(GPA1_1_io_g),
    .io_p(GPA1_1_io_p),
    .io_a(GPA1_1_io_a)
  );
  GPA1 GPA1_2 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_2_io_x),
    .io_y(GPA1_2_io_y),
    .io_g(GPA1_2_io_g),
    .io_p(GPA1_2_io_p),
    .io_a(GPA1_2_io_a)
  );
  GPA1 GPA1_3 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_3_io_x),
    .io_y(GPA1_3_io_y),
    .io_g(GPA1_3_io_g),
    .io_p(GPA1_3_io_p),
    .io_a(GPA1_3_io_a)
  );
  GPA1 GPA1_4 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_4_io_x),
    .io_y(GPA1_4_io_y),
    .io_g(GPA1_4_io_g),
    .io_p(GPA1_4_io_p),
    .io_a(GPA1_4_io_a)
  );
  GPA1 GPA1_5 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_5_io_x),
    .io_y(GPA1_5_io_y),
    .io_g(GPA1_5_io_g),
    .io_p(GPA1_5_io_p),
    .io_a(GPA1_5_io_a)
  );
  GPA1 GPA1_6 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_6_io_x),
    .io_y(GPA1_6_io_y),
    .io_g(GPA1_6_io_g),
    .io_p(GPA1_6_io_p),
    .io_a(GPA1_6_io_a)
  );
  GPA1 GPA1_7 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_7_io_x),
    .io_y(GPA1_7_io_y),
    .io_g(GPA1_7_io_g),
    .io_p(GPA1_7_io_p),
    .io_a(GPA1_7_io_a)
  );
  CLG CLG ( // @[adder.CLA.scala 32:19]
    .io_g(CLG_io_g),
    .io_a(CLG_io_a),
    .io_cin(CLG_io_cin),
    .io_c(CLG_io_c),
    .io_G(CLG_io_G),
    .io_A(CLG_io_A)
  );
  assign _T_16_1 = GPA1_1_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_16_0 = GPA1_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_16_3 = GPA1_3_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_16_2 = GPA1_2_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_19 = {_T_16_3,_T_16_2,_T_16_1,_T_16_0}; // @[adder.CLA.scala 33:46]
  assign _T_16_5 = GPA1_5_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_16_4 = GPA1_4_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_16_7 = GPA1_7_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_16_6 = GPA1_6_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_22 = {_T_16_7,_T_16_6,_T_16_5,_T_16_4}; // @[adder.CLA.scala 33:46]
  assign _T_24_1 = GPA1_1_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_24_0 = GPA1_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_24_3 = GPA1_3_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_24_2 = GPA1_2_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_27 = {_T_24_3,_T_24_2,_T_24_1,_T_24_0}; // @[adder.CLA.scala 34:46]
  assign _T_24_5 = GPA1_5_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_24_4 = GPA1_4_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_24_7 = GPA1_7_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_24_6 = GPA1_6_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_30 = {_T_24_7,_T_24_6,_T_24_5,_T_24_4}; // @[adder.CLA.scala 34:46]
  assign s_bit_0 = io_cin ^ GPA1_io_p; // @[adder.CLA.scala 41:14]
  assign _T_32 = CLG_io_c[0]; // @[adder.CLA.scala 43:12]
  assign s_bit_1 = _T_32 ^ GPA1_1_io_p; // @[adder.CLA.scala 43:22]
  assign _T_33 = CLG_io_c[1]; // @[adder.CLA.scala 43:12]
  assign s_bit_2 = _T_33 ^ GPA1_2_io_p; // @[adder.CLA.scala 43:22]
  assign _T_34 = CLG_io_c[2]; // @[adder.CLA.scala 43:12]
  assign s_bit_3 = _T_34 ^ GPA1_3_io_p; // @[adder.CLA.scala 43:22]
  assign _T_35 = CLG_io_c[3]; // @[adder.CLA.scala 43:12]
  assign s_bit_4 = _T_35 ^ GPA1_4_io_p; // @[adder.CLA.scala 43:22]
  assign _T_36 = CLG_io_c[4]; // @[adder.CLA.scala 43:12]
  assign s_bit_5 = _T_36 ^ GPA1_5_io_p; // @[adder.CLA.scala 43:22]
  assign _T_37 = CLG_io_c[5]; // @[adder.CLA.scala 43:12]
  assign s_bit_6 = _T_37 ^ GPA1_6_io_p; // @[adder.CLA.scala 43:22]
  assign _T_38 = CLG_io_c[6]; // @[adder.CLA.scala 43:12]
  assign s_bit_7 = _T_38 ^ GPA1_7_io_p; // @[adder.CLA.scala 43:22]
  assign _T_42 = {s_bit_3,s_bit_2,s_bit_1,s_bit_0}; // @[adder.CLA.scala 46:32]
  assign _T_45 = {s_bit_7,s_bit_6,s_bit_5,s_bit_4}; // @[adder.CLA.scala 46:32]
  assign io_s = {_T_45,_T_42}; // @[adder.CLA.scala 46:8]
  assign io_cout = CLG_io_c[7]; // @[adder.CLA.scala 49:11]
  assign io_G = CLG_io_G; // @[adder.CLA.scala 52:8]
  assign io_A = CLG_io_A; // @[adder.CLA.scala 53:8]
  assign GPA1_io_x = io_x[0]; // @[adder.CLA.scala 26:11]
  assign GPA1_io_y = io_y[0]; // @[adder.CLA.scala 27:11]
  assign GPA1_1_io_x = io_x[1]; // @[adder.CLA.scala 26:11]
  assign GPA1_1_io_y = io_y[1]; // @[adder.CLA.scala 27:11]
  assign GPA1_2_io_x = io_x[2]; // @[adder.CLA.scala 26:11]
  assign GPA1_2_io_y = io_y[2]; // @[adder.CLA.scala 27:11]
  assign GPA1_3_io_x = io_x[3]; // @[adder.CLA.scala 26:11]
  assign GPA1_3_io_y = io_y[3]; // @[adder.CLA.scala 27:11]
  assign GPA1_4_io_x = io_x[4]; // @[adder.CLA.scala 26:11]
  assign GPA1_4_io_y = io_y[4]; // @[adder.CLA.scala 27:11]
  assign GPA1_5_io_x = io_x[5]; // @[adder.CLA.scala 26:11]
  assign GPA1_5_io_y = io_y[5]; // @[adder.CLA.scala 27:11]
  assign GPA1_6_io_x = io_x[6]; // @[adder.CLA.scala 26:11]
  assign GPA1_6_io_y = io_y[6]; // @[adder.CLA.scala 27:11]
  assign GPA1_7_io_x = io_x[7]; // @[adder.CLA.scala 26:11]
  assign GPA1_7_io_y = io_y[7]; // @[adder.CLA.scala 27:11]
  assign CLG_io_g = {_T_22,_T_19}; // @[adder.CLA.scala 33:9]
  assign CLG_io_a = {_T_30,_T_27}; // @[adder.CLA.scala 34:9]
  assign CLG_io_cin = io_cin; // @[adder.CLA.scala 35:11]
endmodule
