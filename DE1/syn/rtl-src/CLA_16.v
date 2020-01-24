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
  input  [15:0] io_g,
  input  [15:0] io_a,
  input         io_cin,
  output [15:0] io_c,
  output        io_G,
  output        io_A
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
  wire  _T_156; // @[CLG.scala 18:18]
  wire  _T_157; // @[CLG.scala 19:18]
  wire  _T_195; // @[CLG.scala 26:21]
  wire  _T_196; // @[CLG.scala 26:11]
  wire  _T_197; // @[CLG.scala 26:31]
  wire  _T_198; // @[CLG.scala 18:18]
  wire  _T_199; // @[CLG.scala 19:18]
  wire  _T_242; // @[CLG.scala 26:21]
  wire  _T_243; // @[CLG.scala 26:11]
  wire  _T_244; // @[CLG.scala 26:31]
  wire  _T_245; // @[CLG.scala 18:18]
  wire  _T_246; // @[CLG.scala 19:18]
  wire  _T_294; // @[CLG.scala 26:21]
  wire  _T_295; // @[CLG.scala 26:11]
  wire  _T_296; // @[CLG.scala 26:31]
  wire  _T_297; // @[CLG.scala 18:18]
  wire  _T_298; // @[CLG.scala 19:18]
  wire  _T_351; // @[CLG.scala 26:21]
  wire  _T_352; // @[CLG.scala 26:11]
  wire  _T_353; // @[CLG.scala 26:31]
  wire  _T_354; // @[CLG.scala 18:18]
  wire  _T_355; // @[CLG.scala 19:18]
  wire  _T_413; // @[CLG.scala 26:21]
  wire  _T_414; // @[CLG.scala 26:11]
  wire  _T_415; // @[CLG.scala 26:31]
  wire  _T_416; // @[CLG.scala 18:18]
  wire  _T_417; // @[CLG.scala 19:18]
  wire  _T_480; // @[CLG.scala 26:21]
  wire  _T_481; // @[CLG.scala 26:11]
  wire  _T_482; // @[CLG.scala 26:31]
  wire  _T_483; // @[CLG.scala 18:18]
  wire  _T_484; // @[CLG.scala 19:18]
  wire  _T_552; // @[CLG.scala 26:21]
  wire  _T_553; // @[CLG.scala 26:11]
  wire  _T_554; // @[CLG.scala 26:31]
  wire  _T_555; // @[CLG.scala 18:18]
  wire  _T_556; // @[CLG.scala 19:18]
  wire  _T_629; // @[CLG.scala 26:21]
  wire  _T_630; // @[CLG.scala 26:11]
  wire  _T_631; // @[CLG.scala 26:31]
  wire  _T_632; // @[CLG.scala 41:22]
  wire  c_bit_0; // @[CLG.scala 41:12]
  wire  _T_633; // @[CLG.scala 41:22]
  wire  c_bit_1; // @[CLG.scala 41:12]
  wire  _T_634; // @[CLG.scala 41:22]
  wire  c_bit_2; // @[CLG.scala 41:12]
  wire  _T_635; // @[CLG.scala 41:22]
  wire  c_bit_3; // @[CLG.scala 41:12]
  wire  _T_636; // @[CLG.scala 41:22]
  wire  c_bit_4; // @[CLG.scala 41:12]
  wire  _T_637; // @[CLG.scala 41:22]
  wire  c_bit_5; // @[CLG.scala 41:12]
  wire  _T_638; // @[CLG.scala 41:22]
  wire  c_bit_6; // @[CLG.scala 41:12]
  wire  _T_639; // @[CLG.scala 41:22]
  wire  c_bit_7; // @[CLG.scala 41:12]
  wire  _T_640; // @[CLG.scala 41:22]
  wire  c_bit_8; // @[CLG.scala 41:12]
  wire  _T_641; // @[CLG.scala 41:22]
  wire  c_bit_9; // @[CLG.scala 41:12]
  wire  _T_642; // @[CLG.scala 41:22]
  wire  c_bit_10; // @[CLG.scala 41:12]
  wire  _T_643; // @[CLG.scala 41:22]
  wire  c_bit_11; // @[CLG.scala 41:12]
  wire  _T_644; // @[CLG.scala 41:22]
  wire  c_bit_12; // @[CLG.scala 41:12]
  wire  _T_645; // @[CLG.scala 41:22]
  wire  c_bit_13; // @[CLG.scala 41:12]
  wire  _T_646; // @[CLG.scala 41:22]
  wire  c_bit_14; // @[CLG.scala 41:12]
  wire  _T_647; // @[CLG.scala 41:22]
  wire  c_bit_15; // @[CLG.scala 41:12]
  wire [7:0] _T_655; // @[CLG.scala 43:32]
  wire [7:0] _T_662; // @[CLG.scala 43:32]
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
  assign _T_156 = io_g[8]; // @[CLG.scala 18:18]
  assign _T_157 = io_a[8]; // @[CLG.scala 19:18]
  assign _T_195 = _T_154 & _T_157; // @[CLG.scala 26:21]
  assign _T_196 = _T_156 | _T_195; // @[CLG.scala 26:11]
  assign _T_197 = _T_157 & _T_155; // @[CLG.scala 26:31]
  assign _T_198 = io_g[9]; // @[CLG.scala 18:18]
  assign _T_199 = io_a[9]; // @[CLG.scala 19:18]
  assign _T_242 = _T_196 & _T_199; // @[CLG.scala 26:21]
  assign _T_243 = _T_198 | _T_242; // @[CLG.scala 26:11]
  assign _T_244 = _T_199 & _T_197; // @[CLG.scala 26:31]
  assign _T_245 = io_g[10]; // @[CLG.scala 18:18]
  assign _T_246 = io_a[10]; // @[CLG.scala 19:18]
  assign _T_294 = _T_243 & _T_246; // @[CLG.scala 26:21]
  assign _T_295 = _T_245 | _T_294; // @[CLG.scala 26:11]
  assign _T_296 = _T_246 & _T_244; // @[CLG.scala 26:31]
  assign _T_297 = io_g[11]; // @[CLG.scala 18:18]
  assign _T_298 = io_a[11]; // @[CLG.scala 19:18]
  assign _T_351 = _T_295 & _T_298; // @[CLG.scala 26:21]
  assign _T_352 = _T_297 | _T_351; // @[CLG.scala 26:11]
  assign _T_353 = _T_298 & _T_296; // @[CLG.scala 26:31]
  assign _T_354 = io_g[12]; // @[CLG.scala 18:18]
  assign _T_355 = io_a[12]; // @[CLG.scala 19:18]
  assign _T_413 = _T_352 & _T_355; // @[CLG.scala 26:21]
  assign _T_414 = _T_354 | _T_413; // @[CLG.scala 26:11]
  assign _T_415 = _T_355 & _T_353; // @[CLG.scala 26:31]
  assign _T_416 = io_g[13]; // @[CLG.scala 18:18]
  assign _T_417 = io_a[13]; // @[CLG.scala 19:18]
  assign _T_480 = _T_414 & _T_417; // @[CLG.scala 26:21]
  assign _T_481 = _T_416 | _T_480; // @[CLG.scala 26:11]
  assign _T_482 = _T_417 & _T_415; // @[CLG.scala 26:31]
  assign _T_483 = io_g[14]; // @[CLG.scala 18:18]
  assign _T_484 = io_a[14]; // @[CLG.scala 19:18]
  assign _T_552 = _T_481 & _T_484; // @[CLG.scala 26:21]
  assign _T_553 = _T_483 | _T_552; // @[CLG.scala 26:11]
  assign _T_554 = _T_484 & _T_482; // @[CLG.scala 26:31]
  assign _T_555 = io_g[15]; // @[CLG.scala 18:18]
  assign _T_556 = io_a[15]; // @[CLG.scala 19:18]
  assign _T_629 = _T_553 & _T_556; // @[CLG.scala 26:21]
  assign _T_630 = _T_555 | _T_629; // @[CLG.scala 26:11]
  assign _T_631 = _T_556 & _T_554; // @[CLG.scala 26:31]
  assign _T_632 = _T_1 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_0 = _T | _T_632; // @[CLG.scala 41:12]
  assign _T_633 = _T_8 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_1 = _T_7 | _T_633; // @[CLG.scala 41:12]
  assign _T_634 = _T_20 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_2 = _T_19 | _T_634; // @[CLG.scala 41:12]
  assign _T_635 = _T_37 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_3 = _T_36 | _T_635; // @[CLG.scala 41:12]
  assign _T_636 = _T_59 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_4 = _T_58 | _T_636; // @[CLG.scala 41:12]
  assign _T_637 = _T_86 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_5 = _T_85 | _T_637; // @[CLG.scala 41:12]
  assign _T_638 = _T_118 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_6 = _T_117 | _T_638; // @[CLG.scala 41:12]
  assign _T_639 = _T_155 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_7 = _T_154 | _T_639; // @[CLG.scala 41:12]
  assign _T_640 = _T_197 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_8 = _T_196 | _T_640; // @[CLG.scala 41:12]
  assign _T_641 = _T_244 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_9 = _T_243 | _T_641; // @[CLG.scala 41:12]
  assign _T_642 = _T_296 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_10 = _T_295 | _T_642; // @[CLG.scala 41:12]
  assign _T_643 = _T_353 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_11 = _T_352 | _T_643; // @[CLG.scala 41:12]
  assign _T_644 = _T_415 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_12 = _T_414 | _T_644; // @[CLG.scala 41:12]
  assign _T_645 = _T_482 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_13 = _T_481 | _T_645; // @[CLG.scala 41:12]
  assign _T_646 = _T_554 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_14 = _T_553 | _T_646; // @[CLG.scala 41:12]
  assign _T_647 = _T_631 & io_cin; // @[CLG.scala 41:22]
  assign c_bit_15 = _T_630 | _T_647; // @[CLG.scala 41:12]
  assign _T_655 = {c_bit_7,c_bit_6,c_bit_5,c_bit_4,c_bit_3,c_bit_2,c_bit_1,c_bit_0}; // @[CLG.scala 43:32]
  assign _T_662 = {c_bit_15,c_bit_14,c_bit_13,c_bit_12,c_bit_11,c_bit_10,c_bit_9,c_bit_8}; // @[CLG.scala 43:32]
  assign io_c = {_T_662,_T_655}; // @[CLG.scala 43:8]
  assign io_G = _T_555 | _T_629; // @[CLG.scala 46:8]
  assign io_A = _T_556 & _T_554; // @[CLG.scala 47:8]
endmodule
module adder.CLA(
  input         clock,
  input         reset,
  input  [15:0] io_x,
  input  [15:0] io_y,
  input         io_cin,
  output [15:0] io_s,
  output        io_cout,
  output        io_G,
  output        io_A
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
  wire  GPA1_8_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_8_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_8_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_8_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_8_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_9_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_9_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_9_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_9_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_9_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_10_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_10_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_10_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_10_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_10_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_11_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_11_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_11_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_11_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_11_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_12_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_12_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_12_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_12_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_12_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_13_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_13_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_13_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_13_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_13_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_14_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_14_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_14_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_14_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_14_io_a; // @[adder.CLA.scala 25:21]
  wire  GPA1_15_io_x; // @[adder.CLA.scala 25:21]
  wire  GPA1_15_io_y; // @[adder.CLA.scala 25:21]
  wire  GPA1_15_io_g; // @[adder.CLA.scala 25:21]
  wire  GPA1_15_io_p; // @[adder.CLA.scala 25:21]
  wire  GPA1_15_io_a; // @[adder.CLA.scala 25:21]
  wire [15:0] CLG_io_g; // @[adder.CLA.scala 32:19]
  wire [15:0] CLG_io_a; // @[adder.CLA.scala 32:19]
  wire  CLG_io_cin; // @[adder.CLA.scala 32:19]
  wire [15:0] CLG_io_c; // @[adder.CLA.scala 32:19]
  wire  CLG_io_G; // @[adder.CLA.scala 32:19]
  wire  CLG_io_A; // @[adder.CLA.scala 32:19]
  wire  _T_32_1; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_0; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_3; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_2; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_5; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_4; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_7; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_6; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire [7:0] _T_39; // @[adder.CLA.scala 33:46]
  wire  _T_32_9; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_8; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_11; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_10; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_13; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_12; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_15; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire  _T_32_14; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  wire [7:0] _T_46; // @[adder.CLA.scala 33:46]
  wire  _T_48_1; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_0; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_3; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_2; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_5; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_4; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_7; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_6; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire [7:0] _T_55; // @[adder.CLA.scala 34:46]
  wire  _T_48_9; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_8; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_11; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_10; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_13; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_12; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_15; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire  _T_48_14; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  wire [7:0] _T_62; // @[adder.CLA.scala 34:46]
  wire  s_bit_0; // @[adder.CLA.scala 41:14]
  wire  _T_64; // @[adder.CLA.scala 43:12]
  wire  s_bit_1; // @[adder.CLA.scala 43:22]
  wire  _T_65; // @[adder.CLA.scala 43:12]
  wire  s_bit_2; // @[adder.CLA.scala 43:22]
  wire  _T_66; // @[adder.CLA.scala 43:12]
  wire  s_bit_3; // @[adder.CLA.scala 43:22]
  wire  _T_67; // @[adder.CLA.scala 43:12]
  wire  s_bit_4; // @[adder.CLA.scala 43:22]
  wire  _T_68; // @[adder.CLA.scala 43:12]
  wire  s_bit_5; // @[adder.CLA.scala 43:22]
  wire  _T_69; // @[adder.CLA.scala 43:12]
  wire  s_bit_6; // @[adder.CLA.scala 43:22]
  wire  _T_70; // @[adder.CLA.scala 43:12]
  wire  s_bit_7; // @[adder.CLA.scala 43:22]
  wire  _T_71; // @[adder.CLA.scala 43:12]
  wire  s_bit_8; // @[adder.CLA.scala 43:22]
  wire  _T_72; // @[adder.CLA.scala 43:12]
  wire  s_bit_9; // @[adder.CLA.scala 43:22]
  wire  _T_73; // @[adder.CLA.scala 43:12]
  wire  s_bit_10; // @[adder.CLA.scala 43:22]
  wire  _T_74; // @[adder.CLA.scala 43:12]
  wire  s_bit_11; // @[adder.CLA.scala 43:22]
  wire  _T_75; // @[adder.CLA.scala 43:12]
  wire  s_bit_12; // @[adder.CLA.scala 43:22]
  wire  _T_76; // @[adder.CLA.scala 43:12]
  wire  s_bit_13; // @[adder.CLA.scala 43:22]
  wire  _T_77; // @[adder.CLA.scala 43:12]
  wire  s_bit_14; // @[adder.CLA.scala 43:22]
  wire  _T_78; // @[adder.CLA.scala 43:12]
  wire  s_bit_15; // @[adder.CLA.scala 43:22]
  wire [7:0] _T_86; // @[adder.CLA.scala 46:32]
  wire [7:0] _T_93; // @[adder.CLA.scala 46:32]
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
  GPA1 GPA1_8 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_8_io_x),
    .io_y(GPA1_8_io_y),
    .io_g(GPA1_8_io_g),
    .io_p(GPA1_8_io_p),
    .io_a(GPA1_8_io_a)
  );
  GPA1 GPA1_9 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_9_io_x),
    .io_y(GPA1_9_io_y),
    .io_g(GPA1_9_io_g),
    .io_p(GPA1_9_io_p),
    .io_a(GPA1_9_io_a)
  );
  GPA1 GPA1_10 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_10_io_x),
    .io_y(GPA1_10_io_y),
    .io_g(GPA1_10_io_g),
    .io_p(GPA1_10_io_p),
    .io_a(GPA1_10_io_a)
  );
  GPA1 GPA1_11 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_11_io_x),
    .io_y(GPA1_11_io_y),
    .io_g(GPA1_11_io_g),
    .io_p(GPA1_11_io_p),
    .io_a(GPA1_11_io_a)
  );
  GPA1 GPA1_12 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_12_io_x),
    .io_y(GPA1_12_io_y),
    .io_g(GPA1_12_io_g),
    .io_p(GPA1_12_io_p),
    .io_a(GPA1_12_io_a)
  );
  GPA1 GPA1_13 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_13_io_x),
    .io_y(GPA1_13_io_y),
    .io_g(GPA1_13_io_g),
    .io_p(GPA1_13_io_p),
    .io_a(GPA1_13_io_a)
  );
  GPA1 GPA1_14 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_14_io_x),
    .io_y(GPA1_14_io_y),
    .io_g(GPA1_14_io_g),
    .io_p(GPA1_14_io_p),
    .io_a(GPA1_14_io_a)
  );
  GPA1 GPA1_15 ( // @[adder.CLA.scala 25:21]
    .io_x(GPA1_15_io_x),
    .io_y(GPA1_15_io_y),
    .io_g(GPA1_15_io_g),
    .io_p(GPA1_15_io_p),
    .io_a(GPA1_15_io_a)
  );
  CLG CLG ( // @[adder.CLA.scala 32:19]
    .io_g(CLG_io_g),
    .io_a(CLG_io_a),
    .io_cin(CLG_io_cin),
    .io_c(CLG_io_c),
    .io_G(CLG_io_G),
    .io_A(CLG_io_A)
  );
  assign _T_32_1 = GPA1_1_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_0 = GPA1_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_3 = GPA1_3_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_2 = GPA1_2_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_5 = GPA1_5_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_4 = GPA1_4_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_7 = GPA1_7_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_6 = GPA1_6_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_39 = {_T_32_7,_T_32_6,_T_32_5,_T_32_4,_T_32_3,_T_32_2,_T_32_1,_T_32_0}; // @[adder.CLA.scala 33:46]
  assign _T_32_9 = GPA1_9_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_8 = GPA1_8_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_11 = GPA1_11_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_10 = GPA1_10_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_13 = GPA1_13_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_12 = GPA1_12_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_15 = GPA1_15_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_32_14 = GPA1_14_io_g; // @[adder.CLA.scala 33:19 adder.CLA.scala 33:19]
  assign _T_46 = {_T_32_15,_T_32_14,_T_32_13,_T_32_12,_T_32_11,_T_32_10,_T_32_9,_T_32_8}; // @[adder.CLA.scala 33:46]
  assign _T_48_1 = GPA1_1_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_0 = GPA1_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_3 = GPA1_3_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_2 = GPA1_2_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_5 = GPA1_5_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_4 = GPA1_4_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_7 = GPA1_7_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_6 = GPA1_6_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_55 = {_T_48_7,_T_48_6,_T_48_5,_T_48_4,_T_48_3,_T_48_2,_T_48_1,_T_48_0}; // @[adder.CLA.scala 34:46]
  assign _T_48_9 = GPA1_9_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_8 = GPA1_8_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_11 = GPA1_11_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_10 = GPA1_10_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_13 = GPA1_13_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_12 = GPA1_12_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_15 = GPA1_15_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_48_14 = GPA1_14_io_a; // @[adder.CLA.scala 34:19 adder.CLA.scala 34:19]
  assign _T_62 = {_T_48_15,_T_48_14,_T_48_13,_T_48_12,_T_48_11,_T_48_10,_T_48_9,_T_48_8}; // @[adder.CLA.scala 34:46]
  assign s_bit_0 = io_cin ^ GPA1_io_p; // @[adder.CLA.scala 41:14]
  assign _T_64 = CLG_io_c[0]; // @[adder.CLA.scala 43:12]
  assign s_bit_1 = _T_64 ^ GPA1_1_io_p; // @[adder.CLA.scala 43:22]
  assign _T_65 = CLG_io_c[1]; // @[adder.CLA.scala 43:12]
  assign s_bit_2 = _T_65 ^ GPA1_2_io_p; // @[adder.CLA.scala 43:22]
  assign _T_66 = CLG_io_c[2]; // @[adder.CLA.scala 43:12]
  assign s_bit_3 = _T_66 ^ GPA1_3_io_p; // @[adder.CLA.scala 43:22]
  assign _T_67 = CLG_io_c[3]; // @[adder.CLA.scala 43:12]
  assign s_bit_4 = _T_67 ^ GPA1_4_io_p; // @[adder.CLA.scala 43:22]
  assign _T_68 = CLG_io_c[4]; // @[adder.CLA.scala 43:12]
  assign s_bit_5 = _T_68 ^ GPA1_5_io_p; // @[adder.CLA.scala 43:22]
  assign _T_69 = CLG_io_c[5]; // @[adder.CLA.scala 43:12]
  assign s_bit_6 = _T_69 ^ GPA1_6_io_p; // @[adder.CLA.scala 43:22]
  assign _T_70 = CLG_io_c[6]; // @[adder.CLA.scala 43:12]
  assign s_bit_7 = _T_70 ^ GPA1_7_io_p; // @[adder.CLA.scala 43:22]
  assign _T_71 = CLG_io_c[7]; // @[adder.CLA.scala 43:12]
  assign s_bit_8 = _T_71 ^ GPA1_8_io_p; // @[adder.CLA.scala 43:22]
  assign _T_72 = CLG_io_c[8]; // @[adder.CLA.scala 43:12]
  assign s_bit_9 = _T_72 ^ GPA1_9_io_p; // @[adder.CLA.scala 43:22]
  assign _T_73 = CLG_io_c[9]; // @[adder.CLA.scala 43:12]
  assign s_bit_10 = _T_73 ^ GPA1_10_io_p; // @[adder.CLA.scala 43:22]
  assign _T_74 = CLG_io_c[10]; // @[adder.CLA.scala 43:12]
  assign s_bit_11 = _T_74 ^ GPA1_11_io_p; // @[adder.CLA.scala 43:22]
  assign _T_75 = CLG_io_c[11]; // @[adder.CLA.scala 43:12]
  assign s_bit_12 = _T_75 ^ GPA1_12_io_p; // @[adder.CLA.scala 43:22]
  assign _T_76 = CLG_io_c[12]; // @[adder.CLA.scala 43:12]
  assign s_bit_13 = _T_76 ^ GPA1_13_io_p; // @[adder.CLA.scala 43:22]
  assign _T_77 = CLG_io_c[13]; // @[adder.CLA.scala 43:12]
  assign s_bit_14 = _T_77 ^ GPA1_14_io_p; // @[adder.CLA.scala 43:22]
  assign _T_78 = CLG_io_c[14]; // @[adder.CLA.scala 43:12]
  assign s_bit_15 = _T_78 ^ GPA1_15_io_p; // @[adder.CLA.scala 43:22]
  assign _T_86 = {s_bit_7,s_bit_6,s_bit_5,s_bit_4,s_bit_3,s_bit_2,s_bit_1,s_bit_0}; // @[adder.CLA.scala 46:32]
  assign _T_93 = {s_bit_15,s_bit_14,s_bit_13,s_bit_12,s_bit_11,s_bit_10,s_bit_9,s_bit_8}; // @[adder.CLA.scala 46:32]
  assign io_s = {_T_93,_T_86}; // @[adder.CLA.scala 46:8]
  assign io_cout = CLG_io_c[15]; // @[adder.CLA.scala 49:11]
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
  assign GPA1_8_io_x = io_x[8]; // @[adder.CLA.scala 26:11]
  assign GPA1_8_io_y = io_y[8]; // @[adder.CLA.scala 27:11]
  assign GPA1_9_io_x = io_x[9]; // @[adder.CLA.scala 26:11]
  assign GPA1_9_io_y = io_y[9]; // @[adder.CLA.scala 27:11]
  assign GPA1_10_io_x = io_x[10]; // @[adder.CLA.scala 26:11]
  assign GPA1_10_io_y = io_y[10]; // @[adder.CLA.scala 27:11]
  assign GPA1_11_io_x = io_x[11]; // @[adder.CLA.scala 26:11]
  assign GPA1_11_io_y = io_y[11]; // @[adder.CLA.scala 27:11]
  assign GPA1_12_io_x = io_x[12]; // @[adder.CLA.scala 26:11]
  assign GPA1_12_io_y = io_y[12]; // @[adder.CLA.scala 27:11]
  assign GPA1_13_io_x = io_x[13]; // @[adder.CLA.scala 26:11]
  assign GPA1_13_io_y = io_y[13]; // @[adder.CLA.scala 27:11]
  assign GPA1_14_io_x = io_x[14]; // @[adder.CLA.scala 26:11]
  assign GPA1_14_io_y = io_y[14]; // @[adder.CLA.scala 27:11]
  assign GPA1_15_io_x = io_x[15]; // @[adder.CLA.scala 26:11]
  assign GPA1_15_io_y = io_y[15]; // @[adder.CLA.scala 27:11]
  assign CLG_io_g = {_T_46,_T_39}; // @[adder.CLA.scala 33:9]
  assign CLG_io_a = {_T_62,_T_55}; // @[adder.CLA.scala 34:9]
  assign CLG_io_cin = io_cin; // @[adder.CLA.scala 35:11]
endmodule
