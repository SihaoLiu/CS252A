;buildInfoPackage: chisel3, version: 3.2.2, scalaVersion: 2.12.10, sbtVersion: 1.3.2
circuit CLA_mlevel : 
  module GPA1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module GPA1_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module CLG : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<2>, flip y : UInt<2>, flip cin : UInt<1>, s : UInt<2>, cout : UInt<1>, G : UInt<1>, A : UInt<1>}
    
    inst GPA1 of GPA1 @[CLA.scala 25:21]
    GPA1.clock <= clock
    GPA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CLA.scala 26:18]
    GPA1.io.x <= _T @[CLA.scala 26:11]
    node _T_1 = bits(io.y, 0, 0) @[CLA.scala 27:18]
    GPA1.io.y <= _T_1 @[CLA.scala 27:11]
    inst GPA1_1 of GPA1_1 @[CLA.scala 25:21]
    GPA1_1.clock <= clock
    GPA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CLA.scala 26:18]
    GPA1_1.io.x <= _T_2 @[CLA.scala 26:11]
    node _T_3 = bits(io.y, 1, 1) @[CLA.scala 27:18]
    GPA1_1.io.y <= _T_3 @[CLA.scala 27:11]
    inst CLG of CLG @[CLA.scala 32:19]
    CLG.clock <= clock
    CLG.reset <= reset
    wire _T_4 : UInt<1>[2] @[CLA.scala 33:19]
    _T_4[0] <= GPA1.io.g @[CLA.scala 33:19]
    _T_4[1] <= GPA1_1.io.g @[CLA.scala 33:19]
    node _T_5 = cat(_T_4[1], _T_4[0]) @[CLA.scala 33:46]
    CLG.io.g <= _T_5 @[CLA.scala 33:9]
    wire _T_6 : UInt<1>[2] @[CLA.scala 34:19]
    _T_6[0] <= GPA1.io.a @[CLA.scala 34:19]
    _T_6[1] <= GPA1_1.io.a @[CLA.scala 34:19]
    node _T_7 = cat(_T_6[1], _T_6[0]) @[CLA.scala 34:46]
    CLG.io.a <= _T_7 @[CLA.scala 34:9]
    CLG.io.cin <= io.cin @[CLA.scala 35:11]
    node s_bit_0 = xor(io.cin, GPA1.io.p) @[CLA.scala 41:14]
    node _T_8 = bits(CLG.io.c, 0, 0) @[CLA.scala 43:12]
    node s_bit_1 = xor(_T_8, GPA1_1.io.p) @[CLA.scala 43:22]
    wire _T_9 : UInt<1>[2] @[CLA.scala 46:18]
    _T_9[0] <= s_bit_0 @[CLA.scala 46:18]
    _T_9[1] <= s_bit_1 @[CLA.scala 46:18]
    node _T_10 = cat(_T_9[1], _T_9[0]) @[CLA.scala 46:32]
    io.s <= _T_10 @[CLA.scala 46:8]
    node _T_11 = bits(CLG.io.c, 1, 1) @[CLA.scala 49:19]
    io.cout <= _T_11 @[CLA.scala 49:11]
    io.G <= CLG.io.G @[CLA.scala 52:8]
    io.A <= CLG.io.A @[CLA.scala 53:8]
    
  module GPA1_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module GPA1_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module CLG_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<2>, flip y : UInt<2>, flip cin : UInt<1>, s : UInt<2>, cout : UInt<1>, G : UInt<1>, A : UInt<1>}
    
    inst GPA1 of GPA1_2 @[CLA.scala 25:21]
    GPA1.clock <= clock
    GPA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CLA.scala 26:18]
    GPA1.io.x <= _T @[CLA.scala 26:11]
    node _T_1 = bits(io.y, 0, 0) @[CLA.scala 27:18]
    GPA1.io.y <= _T_1 @[CLA.scala 27:11]
    inst GPA1_1 of GPA1_3 @[CLA.scala 25:21]
    GPA1_1.clock <= clock
    GPA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CLA.scala 26:18]
    GPA1_1.io.x <= _T_2 @[CLA.scala 26:11]
    node _T_3 = bits(io.y, 1, 1) @[CLA.scala 27:18]
    GPA1_1.io.y <= _T_3 @[CLA.scala 27:11]
    inst CLG of CLG_1 @[CLA.scala 32:19]
    CLG.clock <= clock
    CLG.reset <= reset
    wire _T_4 : UInt<1>[2] @[CLA.scala 33:19]
    _T_4[0] <= GPA1.io.g @[CLA.scala 33:19]
    _T_4[1] <= GPA1_1.io.g @[CLA.scala 33:19]
    node _T_5 = cat(_T_4[1], _T_4[0]) @[CLA.scala 33:46]
    CLG.io.g <= _T_5 @[CLA.scala 33:9]
    wire _T_6 : UInt<1>[2] @[CLA.scala 34:19]
    _T_6[0] <= GPA1.io.a @[CLA.scala 34:19]
    _T_6[1] <= GPA1_1.io.a @[CLA.scala 34:19]
    node _T_7 = cat(_T_6[1], _T_6[0]) @[CLA.scala 34:46]
    CLG.io.a <= _T_7 @[CLA.scala 34:9]
    CLG.io.cin <= io.cin @[CLA.scala 35:11]
    node s_bit_0 = xor(io.cin, GPA1.io.p) @[CLA.scala 41:14]
    node _T_8 = bits(CLG.io.c, 0, 0) @[CLA.scala 43:12]
    node s_bit_1 = xor(_T_8, GPA1_1.io.p) @[CLA.scala 43:22]
    wire _T_9 : UInt<1>[2] @[CLA.scala 46:18]
    _T_9[0] <= s_bit_0 @[CLA.scala 46:18]
    _T_9[1] <= s_bit_1 @[CLA.scala 46:18]
    node _T_10 = cat(_T_9[1], _T_9[0]) @[CLA.scala 46:32]
    io.s <= _T_10 @[CLA.scala 46:8]
    node _T_11 = bits(CLG.io.c, 1, 1) @[CLA.scala 49:19]
    io.cout <= _T_11 @[CLA.scala 49:11]
    io.G <= CLG.io.G @[CLA.scala 52:8]
    io.A <= CLG.io.A @[CLA.scala 53:8]
    
  module GPA1_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module GPA1_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module CLG_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<2>, flip y : UInt<2>, flip cin : UInt<1>, s : UInt<2>, cout : UInt<1>, G : UInt<1>, A : UInt<1>}
    
    inst GPA1 of GPA1_4 @[CLA.scala 25:21]
    GPA1.clock <= clock
    GPA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CLA.scala 26:18]
    GPA1.io.x <= _T @[CLA.scala 26:11]
    node _T_1 = bits(io.y, 0, 0) @[CLA.scala 27:18]
    GPA1.io.y <= _T_1 @[CLA.scala 27:11]
    inst GPA1_1 of GPA1_5 @[CLA.scala 25:21]
    GPA1_1.clock <= clock
    GPA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CLA.scala 26:18]
    GPA1_1.io.x <= _T_2 @[CLA.scala 26:11]
    node _T_3 = bits(io.y, 1, 1) @[CLA.scala 27:18]
    GPA1_1.io.y <= _T_3 @[CLA.scala 27:11]
    inst CLG of CLG_2 @[CLA.scala 32:19]
    CLG.clock <= clock
    CLG.reset <= reset
    wire _T_4 : UInt<1>[2] @[CLA.scala 33:19]
    _T_4[0] <= GPA1.io.g @[CLA.scala 33:19]
    _T_4[1] <= GPA1_1.io.g @[CLA.scala 33:19]
    node _T_5 = cat(_T_4[1], _T_4[0]) @[CLA.scala 33:46]
    CLG.io.g <= _T_5 @[CLA.scala 33:9]
    wire _T_6 : UInt<1>[2] @[CLA.scala 34:19]
    _T_6[0] <= GPA1.io.a @[CLA.scala 34:19]
    _T_6[1] <= GPA1_1.io.a @[CLA.scala 34:19]
    node _T_7 = cat(_T_6[1], _T_6[0]) @[CLA.scala 34:46]
    CLG.io.a <= _T_7 @[CLA.scala 34:9]
    CLG.io.cin <= io.cin @[CLA.scala 35:11]
    node s_bit_0 = xor(io.cin, GPA1.io.p) @[CLA.scala 41:14]
    node _T_8 = bits(CLG.io.c, 0, 0) @[CLA.scala 43:12]
    node s_bit_1 = xor(_T_8, GPA1_1.io.p) @[CLA.scala 43:22]
    wire _T_9 : UInt<1>[2] @[CLA.scala 46:18]
    _T_9[0] <= s_bit_0 @[CLA.scala 46:18]
    _T_9[1] <= s_bit_1 @[CLA.scala 46:18]
    node _T_10 = cat(_T_9[1], _T_9[0]) @[CLA.scala 46:32]
    io.s <= _T_10 @[CLA.scala 46:8]
    node _T_11 = bits(CLG.io.c, 1, 1) @[CLA.scala 49:19]
    io.cout <= _T_11 @[CLA.scala 49:11]
    io.G <= CLG.io.G @[CLA.scala 52:8]
    io.A <= CLG.io.A @[CLA.scala 53:8]
    
  module GPA1_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module GPA1_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module CLG_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<2>, flip y : UInt<2>, flip cin : UInt<1>, s : UInt<2>, cout : UInt<1>, G : UInt<1>, A : UInt<1>}
    
    inst GPA1 of GPA1_6 @[CLA.scala 25:21]
    GPA1.clock <= clock
    GPA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CLA.scala 26:18]
    GPA1.io.x <= _T @[CLA.scala 26:11]
    node _T_1 = bits(io.y, 0, 0) @[CLA.scala 27:18]
    GPA1.io.y <= _T_1 @[CLA.scala 27:11]
    inst GPA1_1 of GPA1_7 @[CLA.scala 25:21]
    GPA1_1.clock <= clock
    GPA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CLA.scala 26:18]
    GPA1_1.io.x <= _T_2 @[CLA.scala 26:11]
    node _T_3 = bits(io.y, 1, 1) @[CLA.scala 27:18]
    GPA1_1.io.y <= _T_3 @[CLA.scala 27:11]
    inst CLG of CLG_3 @[CLA.scala 32:19]
    CLG.clock <= clock
    CLG.reset <= reset
    wire _T_4 : UInt<1>[2] @[CLA.scala 33:19]
    _T_4[0] <= GPA1.io.g @[CLA.scala 33:19]
    _T_4[1] <= GPA1_1.io.g @[CLA.scala 33:19]
    node _T_5 = cat(_T_4[1], _T_4[0]) @[CLA.scala 33:46]
    CLG.io.g <= _T_5 @[CLA.scala 33:9]
    wire _T_6 : UInt<1>[2] @[CLA.scala 34:19]
    _T_6[0] <= GPA1.io.a @[CLA.scala 34:19]
    _T_6[1] <= GPA1_1.io.a @[CLA.scala 34:19]
    node _T_7 = cat(_T_6[1], _T_6[0]) @[CLA.scala 34:46]
    CLG.io.a <= _T_7 @[CLA.scala 34:9]
    CLG.io.cin <= io.cin @[CLA.scala 35:11]
    node s_bit_0 = xor(io.cin, GPA1.io.p) @[CLA.scala 41:14]
    node _T_8 = bits(CLG.io.c, 0, 0) @[CLA.scala 43:12]
    node s_bit_1 = xor(_T_8, GPA1_1.io.p) @[CLA.scala 43:22]
    wire _T_9 : UInt<1>[2] @[CLA.scala 46:18]
    _T_9[0] <= s_bit_0 @[CLA.scala 46:18]
    _T_9[1] <= s_bit_1 @[CLA.scala 46:18]
    node _T_10 = cat(_T_9[1], _T_9[0]) @[CLA.scala 46:32]
    io.s <= _T_10 @[CLA.scala 46:8]
    node _T_11 = bits(CLG.io.c, 1, 1) @[CLA.scala 49:19]
    io.cout <= _T_11 @[CLA.scala 49:11]
    io.G <= CLG.io.G @[CLA.scala 52:8]
    io.A <= CLG.io.A @[CLA.scala 53:8]
    
  module GPA1_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module GPA1_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module CLG_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<2>, flip y : UInt<2>, flip cin : UInt<1>, s : UInt<2>, cout : UInt<1>, G : UInt<1>, A : UInt<1>}
    
    inst GPA1 of GPA1_8 @[CLA.scala 25:21]
    GPA1.clock <= clock
    GPA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CLA.scala 26:18]
    GPA1.io.x <= _T @[CLA.scala 26:11]
    node _T_1 = bits(io.y, 0, 0) @[CLA.scala 27:18]
    GPA1.io.y <= _T_1 @[CLA.scala 27:11]
    inst GPA1_1 of GPA1_9 @[CLA.scala 25:21]
    GPA1_1.clock <= clock
    GPA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CLA.scala 26:18]
    GPA1_1.io.x <= _T_2 @[CLA.scala 26:11]
    node _T_3 = bits(io.y, 1, 1) @[CLA.scala 27:18]
    GPA1_1.io.y <= _T_3 @[CLA.scala 27:11]
    inst CLG of CLG_4 @[CLA.scala 32:19]
    CLG.clock <= clock
    CLG.reset <= reset
    wire _T_4 : UInt<1>[2] @[CLA.scala 33:19]
    _T_4[0] <= GPA1.io.g @[CLA.scala 33:19]
    _T_4[1] <= GPA1_1.io.g @[CLA.scala 33:19]
    node _T_5 = cat(_T_4[1], _T_4[0]) @[CLA.scala 33:46]
    CLG.io.g <= _T_5 @[CLA.scala 33:9]
    wire _T_6 : UInt<1>[2] @[CLA.scala 34:19]
    _T_6[0] <= GPA1.io.a @[CLA.scala 34:19]
    _T_6[1] <= GPA1_1.io.a @[CLA.scala 34:19]
    node _T_7 = cat(_T_6[1], _T_6[0]) @[CLA.scala 34:46]
    CLG.io.a <= _T_7 @[CLA.scala 34:9]
    CLG.io.cin <= io.cin @[CLA.scala 35:11]
    node s_bit_0 = xor(io.cin, GPA1.io.p) @[CLA.scala 41:14]
    node _T_8 = bits(CLG.io.c, 0, 0) @[CLA.scala 43:12]
    node s_bit_1 = xor(_T_8, GPA1_1.io.p) @[CLA.scala 43:22]
    wire _T_9 : UInt<1>[2] @[CLA.scala 46:18]
    _T_9[0] <= s_bit_0 @[CLA.scala 46:18]
    _T_9[1] <= s_bit_1 @[CLA.scala 46:18]
    node _T_10 = cat(_T_9[1], _T_9[0]) @[CLA.scala 46:32]
    io.s <= _T_10 @[CLA.scala 46:8]
    node _T_11 = bits(CLG.io.c, 1, 1) @[CLA.scala 49:19]
    io.cout <= _T_11 @[CLA.scala 49:11]
    io.G <= CLG.io.G @[CLA.scala 52:8]
    io.A <= CLG.io.A @[CLA.scala 53:8]
    
  module GPA1_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module GPA1_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module CLG_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<2>, flip y : UInt<2>, flip cin : UInt<1>, s : UInt<2>, cout : UInt<1>, G : UInt<1>, A : UInt<1>}
    
    inst GPA1 of GPA1_10 @[CLA.scala 25:21]
    GPA1.clock <= clock
    GPA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CLA.scala 26:18]
    GPA1.io.x <= _T @[CLA.scala 26:11]
    node _T_1 = bits(io.y, 0, 0) @[CLA.scala 27:18]
    GPA1.io.y <= _T_1 @[CLA.scala 27:11]
    inst GPA1_1 of GPA1_11 @[CLA.scala 25:21]
    GPA1_1.clock <= clock
    GPA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CLA.scala 26:18]
    GPA1_1.io.x <= _T_2 @[CLA.scala 26:11]
    node _T_3 = bits(io.y, 1, 1) @[CLA.scala 27:18]
    GPA1_1.io.y <= _T_3 @[CLA.scala 27:11]
    inst CLG of CLG_5 @[CLA.scala 32:19]
    CLG.clock <= clock
    CLG.reset <= reset
    wire _T_4 : UInt<1>[2] @[CLA.scala 33:19]
    _T_4[0] <= GPA1.io.g @[CLA.scala 33:19]
    _T_4[1] <= GPA1_1.io.g @[CLA.scala 33:19]
    node _T_5 = cat(_T_4[1], _T_4[0]) @[CLA.scala 33:46]
    CLG.io.g <= _T_5 @[CLA.scala 33:9]
    wire _T_6 : UInt<1>[2] @[CLA.scala 34:19]
    _T_6[0] <= GPA1.io.a @[CLA.scala 34:19]
    _T_6[1] <= GPA1_1.io.a @[CLA.scala 34:19]
    node _T_7 = cat(_T_6[1], _T_6[0]) @[CLA.scala 34:46]
    CLG.io.a <= _T_7 @[CLA.scala 34:9]
    CLG.io.cin <= io.cin @[CLA.scala 35:11]
    node s_bit_0 = xor(io.cin, GPA1.io.p) @[CLA.scala 41:14]
    node _T_8 = bits(CLG.io.c, 0, 0) @[CLA.scala 43:12]
    node s_bit_1 = xor(_T_8, GPA1_1.io.p) @[CLA.scala 43:22]
    wire _T_9 : UInt<1>[2] @[CLA.scala 46:18]
    _T_9[0] <= s_bit_0 @[CLA.scala 46:18]
    _T_9[1] <= s_bit_1 @[CLA.scala 46:18]
    node _T_10 = cat(_T_9[1], _T_9[0]) @[CLA.scala 46:32]
    io.s <= _T_10 @[CLA.scala 46:8]
    node _T_11 = bits(CLG.io.c, 1, 1) @[CLA.scala 49:19]
    io.cout <= _T_11 @[CLA.scala 49:11]
    io.G <= CLG.io.G @[CLA.scala 52:8]
    io.A <= CLG.io.A @[CLA.scala 53:8]
    
  module GPA1_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module GPA1_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module CLG_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<2>, flip y : UInt<2>, flip cin : UInt<1>, s : UInt<2>, cout : UInt<1>, G : UInt<1>, A : UInt<1>}
    
    inst GPA1 of GPA1_12 @[CLA.scala 25:21]
    GPA1.clock <= clock
    GPA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CLA.scala 26:18]
    GPA1.io.x <= _T @[CLA.scala 26:11]
    node _T_1 = bits(io.y, 0, 0) @[CLA.scala 27:18]
    GPA1.io.y <= _T_1 @[CLA.scala 27:11]
    inst GPA1_1 of GPA1_13 @[CLA.scala 25:21]
    GPA1_1.clock <= clock
    GPA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CLA.scala 26:18]
    GPA1_1.io.x <= _T_2 @[CLA.scala 26:11]
    node _T_3 = bits(io.y, 1, 1) @[CLA.scala 27:18]
    GPA1_1.io.y <= _T_3 @[CLA.scala 27:11]
    inst CLG of CLG_6 @[CLA.scala 32:19]
    CLG.clock <= clock
    CLG.reset <= reset
    wire _T_4 : UInt<1>[2] @[CLA.scala 33:19]
    _T_4[0] <= GPA1.io.g @[CLA.scala 33:19]
    _T_4[1] <= GPA1_1.io.g @[CLA.scala 33:19]
    node _T_5 = cat(_T_4[1], _T_4[0]) @[CLA.scala 33:46]
    CLG.io.g <= _T_5 @[CLA.scala 33:9]
    wire _T_6 : UInt<1>[2] @[CLA.scala 34:19]
    _T_6[0] <= GPA1.io.a @[CLA.scala 34:19]
    _T_6[1] <= GPA1_1.io.a @[CLA.scala 34:19]
    node _T_7 = cat(_T_6[1], _T_6[0]) @[CLA.scala 34:46]
    CLG.io.a <= _T_7 @[CLA.scala 34:9]
    CLG.io.cin <= io.cin @[CLA.scala 35:11]
    node s_bit_0 = xor(io.cin, GPA1.io.p) @[CLA.scala 41:14]
    node _T_8 = bits(CLG.io.c, 0, 0) @[CLA.scala 43:12]
    node s_bit_1 = xor(_T_8, GPA1_1.io.p) @[CLA.scala 43:22]
    wire _T_9 : UInt<1>[2] @[CLA.scala 46:18]
    _T_9[0] <= s_bit_0 @[CLA.scala 46:18]
    _T_9[1] <= s_bit_1 @[CLA.scala 46:18]
    node _T_10 = cat(_T_9[1], _T_9[0]) @[CLA.scala 46:32]
    io.s <= _T_10 @[CLA.scala 46:8]
    node _T_11 = bits(CLG.io.c, 1, 1) @[CLA.scala 49:19]
    io.cout <= _T_11 @[CLA.scala 49:11]
    io.G <= CLG.io.G @[CLA.scala 52:8]
    io.A <= CLG.io.A @[CLA.scala 53:8]
    
  module GPA1_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module GPA1_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<1>, flip y : UInt<1>, g : UInt<1>, p : UInt<1>, a : UInt<1>}
    
    node g = and(io.x, io.y) @[GPA1.scala 17:16]
    node p = xor(io.x, io.y) @[GPA1.scala 18:16]
    io.g <= g @[GPA1.scala 20:8]
    io.p <= p @[GPA1.scala 21:8]
    node _T = or(g, p) @[GPA1.scala 22:13]
    io.a <= _T @[GPA1.scala 22:8]
    
  module CLG_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip x : UInt<2>, flip y : UInt<2>, flip cin : UInt<1>, s : UInt<2>, cout : UInt<1>, G : UInt<1>, A : UInt<1>}
    
    inst GPA1 of GPA1_14 @[CLA.scala 25:21]
    GPA1.clock <= clock
    GPA1.reset <= reset
    node _T = bits(io.x, 0, 0) @[CLA.scala 26:18]
    GPA1.io.x <= _T @[CLA.scala 26:11]
    node _T_1 = bits(io.y, 0, 0) @[CLA.scala 27:18]
    GPA1.io.y <= _T_1 @[CLA.scala 27:11]
    inst GPA1_1 of GPA1_15 @[CLA.scala 25:21]
    GPA1_1.clock <= clock
    GPA1_1.reset <= reset
    node _T_2 = bits(io.x, 1, 1) @[CLA.scala 26:18]
    GPA1_1.io.x <= _T_2 @[CLA.scala 26:11]
    node _T_3 = bits(io.y, 1, 1) @[CLA.scala 27:18]
    GPA1_1.io.y <= _T_3 @[CLA.scala 27:11]
    inst CLG of CLG_7 @[CLA.scala 32:19]
    CLG.clock <= clock
    CLG.reset <= reset
    wire _T_4 : UInt<1>[2] @[CLA.scala 33:19]
    _T_4[0] <= GPA1.io.g @[CLA.scala 33:19]
    _T_4[1] <= GPA1_1.io.g @[CLA.scala 33:19]
    node _T_5 = cat(_T_4[1], _T_4[0]) @[CLA.scala 33:46]
    CLG.io.g <= _T_5 @[CLA.scala 33:9]
    wire _T_6 : UInt<1>[2] @[CLA.scala 34:19]
    _T_6[0] <= GPA1.io.a @[CLA.scala 34:19]
    _T_6[1] <= GPA1_1.io.a @[CLA.scala 34:19]
    node _T_7 = cat(_T_6[1], _T_6[0]) @[CLA.scala 34:46]
    CLG.io.a <= _T_7 @[CLA.scala 34:9]
    CLG.io.cin <= io.cin @[CLA.scala 35:11]
    node s_bit_0 = xor(io.cin, GPA1.io.p) @[CLA.scala 41:14]
    node _T_8 = bits(CLG.io.c, 0, 0) @[CLA.scala 43:12]
    node s_bit_1 = xor(_T_8, GPA1_1.io.p) @[CLA.scala 43:22]
    wire _T_9 : UInt<1>[2] @[CLA.scala 46:18]
    _T_9[0] <= s_bit_0 @[CLA.scala 46:18]
    _T_9[1] <= s_bit_1 @[CLA.scala 46:18]
    node _T_10 = cat(_T_9[1], _T_9[0]) @[CLA.scala 46:32]
    io.s <= _T_10 @[CLA.scala 46:8]
    node _T_11 = bits(CLG.io.c, 1, 1) @[CLA.scala 49:19]
    io.cout <= _T_11 @[CLA.scala 49:11]
    io.G <= CLG.io.G @[CLA.scala 52:8]
    io.A <= CLG.io.A @[CLA.scala 53:8]
    
  module CLG_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLG_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLG_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLG_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLG_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLG_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLG_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip g : UInt<2>, flip a : UInt<2>, flip cin : UInt<1>, c : UInt<2>, G : UInt<1>, A : UInt<1>}
    
    node _T = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_1 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_2 = bits(io.g, 1, 1) @[CLG.scala 18:18]
    node _T_3 = bits(io.a, 1, 1) @[CLG.scala 19:18]
    node _T_4 = bits(io.g, 0, 0) @[CLG.scala 18:18]
    node _T_5 = bits(io.a, 0, 0) @[CLG.scala 19:18]
    node _T_6 = and(_T_4, _T_3) @[CLG.scala 26:21]
    node _T_7 = or(_T_2, _T_6) @[CLG.scala 26:11]
    node _T_8 = and(_T_3, _T_5) @[CLG.scala 26:31]
    node _T_9 = and(_T_1, io.cin) @[CLG.scala 41:22]
    node c_bit_0 = or(_T, _T_9) @[CLG.scala 41:12]
    node _T_10 = and(_T_8, io.cin) @[CLG.scala 41:22]
    node c_bit_1 = or(_T_7, _T_10) @[CLG.scala 41:12]
    wire _T_11 : UInt<1>[2] @[CLG.scala 43:18]
    _T_11[0] <= c_bit_0 @[CLG.scala 43:18]
    _T_11[1] <= c_bit_1 @[CLG.scala 43:18]
    node _T_12 = cat(_T_11[1], _T_11[0]) @[CLG.scala 43:32]
    io.c <= _T_12 @[CLG.scala 43:8]
    io.G <= _T_7 @[CLG.scala 46:8]
    io.A <= _T_8 @[CLG.scala 47:8]
    
  module CLA_mlevel : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip x : UInt<16>, flip y : UInt<16>, flip cin : UInt<1>, s : UInt<16>, cout : UInt<1>}
    
    inst CLA of CLA @[CLA_mlevel.scala 23:21]
    CLA.clock <= clock
    CLA.reset <= reset
    node _T = bits(io.x, 1, 0) @[CLA_mlevel.scala 24:18]
    CLA.io.x <= _T @[CLA_mlevel.scala 24:11]
    node _T_1 = bits(io.y, 1, 0) @[CLA_mlevel.scala 25:18]
    CLA.io.y <= _T_1 @[CLA_mlevel.scala 25:11]
    CLA.io.cin <= io.cin @[CLA_mlevel.scala 27:15]
    inst CLA_1 of CLA_1 @[CLA_mlevel.scala 23:21]
    CLA_1.clock <= clock
    CLA_1.reset <= reset
    node _T_2 = bits(io.x, 3, 2) @[CLA_mlevel.scala 24:18]
    CLA_1.io.x <= _T_2 @[CLA_mlevel.scala 24:11]
    node _T_3 = bits(io.y, 3, 2) @[CLA_mlevel.scala 25:18]
    CLA_1.io.y <= _T_3 @[CLA_mlevel.scala 25:11]
    inst CLA_2 of CLA_2 @[CLA_mlevel.scala 23:21]
    CLA_2.clock <= clock
    CLA_2.reset <= reset
    node _T_4 = bits(io.x, 5, 4) @[CLA_mlevel.scala 24:18]
    CLA_2.io.x <= _T_4 @[CLA_mlevel.scala 24:11]
    node _T_5 = bits(io.y, 5, 4) @[CLA_mlevel.scala 25:18]
    CLA_2.io.y <= _T_5 @[CLA_mlevel.scala 25:11]
    inst CLA_3 of CLA_3 @[CLA_mlevel.scala 23:21]
    CLA_3.clock <= clock
    CLA_3.reset <= reset
    node _T_6 = bits(io.x, 7, 6) @[CLA_mlevel.scala 24:18]
    CLA_3.io.x <= _T_6 @[CLA_mlevel.scala 24:11]
    node _T_7 = bits(io.y, 7, 6) @[CLA_mlevel.scala 25:18]
    CLA_3.io.y <= _T_7 @[CLA_mlevel.scala 25:11]
    inst CLA_4 of CLA_4 @[CLA_mlevel.scala 23:21]
    CLA_4.clock <= clock
    CLA_4.reset <= reset
    node _T_8 = bits(io.x, 9, 8) @[CLA_mlevel.scala 24:18]
    CLA_4.io.x <= _T_8 @[CLA_mlevel.scala 24:11]
    node _T_9 = bits(io.y, 9, 8) @[CLA_mlevel.scala 25:18]
    CLA_4.io.y <= _T_9 @[CLA_mlevel.scala 25:11]
    inst CLA_5 of CLA_5 @[CLA_mlevel.scala 23:21]
    CLA_5.clock <= clock
    CLA_5.reset <= reset
    node _T_10 = bits(io.x, 11, 10) @[CLA_mlevel.scala 24:18]
    CLA_5.io.x <= _T_10 @[CLA_mlevel.scala 24:11]
    node _T_11 = bits(io.y, 11, 10) @[CLA_mlevel.scala 25:18]
    CLA_5.io.y <= _T_11 @[CLA_mlevel.scala 25:11]
    inst CLA_6 of CLA_6 @[CLA_mlevel.scala 23:21]
    CLA_6.clock <= clock
    CLA_6.reset <= reset
    node _T_12 = bits(io.x, 13, 12) @[CLA_mlevel.scala 24:18]
    CLA_6.io.x <= _T_12 @[CLA_mlevel.scala 24:11]
    node _T_13 = bits(io.y, 13, 12) @[CLA_mlevel.scala 25:18]
    CLA_6.io.y <= _T_13 @[CLA_mlevel.scala 25:11]
    inst CLA_7 of CLA_7 @[CLA_mlevel.scala 23:21]
    CLA_7.clock <= clock
    CLA_7.reset <= reset
    node _T_14 = bits(io.x, 15, 14) @[CLA_mlevel.scala 24:18]
    CLA_7.io.x <= _T_14 @[CLA_mlevel.scala 24:11]
    node _T_15 = bits(io.y, 15, 14) @[CLA_mlevel.scala 25:18]
    CLA_7.io.y <= _T_15 @[CLA_mlevel.scala 25:11]
    node _T_16 = cat(CLA_7.io.s, CLA_6.io.s) @[Cat.scala 29:58]
    node _T_17 = cat(_T_16, CLA_5.io.s) @[Cat.scala 29:58]
    node _T_18 = cat(_T_17, CLA_4.io.s) @[Cat.scala 29:58]
    node _T_19 = cat(_T_18, CLA_3.io.s) @[Cat.scala 29:58]
    node _T_20 = cat(_T_19, CLA_2.io.s) @[Cat.scala 29:58]
    node _T_21 = cat(_T_20, CLA_1.io.s) @[Cat.scala 29:58]
    node _T_22 = cat(_T_21, CLA.io.s) @[Cat.scala 29:58]
    io.s <= _T_22 @[CLA_mlevel.scala 33:8]
    wire gs : UInt<1>[8] @[CLA_mlevel.scala 93:31]
    gs[0] <= CLA.io.G @[CLA_mlevel.scala 93:31]
    gs[1] <= CLA_1.io.G @[CLA_mlevel.scala 93:31]
    gs[2] <= CLA_2.io.G @[CLA_mlevel.scala 93:31]
    gs[3] <= CLA_3.io.G @[CLA_mlevel.scala 93:31]
    gs[4] <= CLA_4.io.G @[CLA_mlevel.scala 93:31]
    gs[5] <= CLA_5.io.G @[CLA_mlevel.scala 93:31]
    gs[6] <= CLA_6.io.G @[CLA_mlevel.scala 93:31]
    gs[7] <= CLA_7.io.G @[CLA_mlevel.scala 93:31]
    wire as : UInt<1>[8] @[CLA_mlevel.scala 94:31]
    as[0] <= CLA.io.A @[CLA_mlevel.scala 94:31]
    as[1] <= CLA_1.io.A @[CLA_mlevel.scala 94:31]
    as[2] <= CLA_2.io.A @[CLA_mlevel.scala 94:31]
    as[3] <= CLA_3.io.A @[CLA_mlevel.scala 94:31]
    as[4] <= CLA_4.io.A @[CLA_mlevel.scala 94:31]
    as[5] <= CLA_5.io.A @[CLA_mlevel.scala 94:31]
    as[6] <= CLA_6.io.A @[CLA_mlevel.scala 94:31]
    as[7] <= CLA_7.io.A @[CLA_mlevel.scala 94:31]
    wire Cins : UInt<1>[8] @[CLA_mlevel.scala 95:33]
    Cins[0] <= CLA.io.cin @[CLA_mlevel.scala 95:33]
    Cins[1] <= CLA_1.io.cin @[CLA_mlevel.scala 95:33]
    Cins[2] <= CLA_2.io.cin @[CLA_mlevel.scala 95:33]
    Cins[3] <= CLA_3.io.cin @[CLA_mlevel.scala 95:33]
    Cins[4] <= CLA_4.io.cin @[CLA_mlevel.scala 95:33]
    Cins[5] <= CLA_5.io.cin @[CLA_mlevel.scala 95:33]
    Cins[6] <= CLA_6.io.cin @[CLA_mlevel.scala 95:33]
    Cins[7] <= CLA_7.io.cin @[CLA_mlevel.scala 95:33]
    wire Couts : UInt<1>[8] @[CLA_mlevel.scala 96:34]
    Couts[0] <= CLA.io.cout @[CLA_mlevel.scala 96:34]
    Couts[1] <= CLA_1.io.cout @[CLA_mlevel.scala 96:34]
    Couts[2] <= CLA_2.io.cout @[CLA_mlevel.scala 96:34]
    Couts[3] <= CLA_3.io.cout @[CLA_mlevel.scala 96:34]
    Couts[4] <= CLA_4.io.cout @[CLA_mlevel.scala 96:34]
    Couts[5] <= CLA_5.io.cout @[CLA_mlevel.scala 96:34]
    Couts[6] <= CLA_6.io.cout @[CLA_mlevel.scala 96:34]
    Couts[7] <= CLA_7.io.cout @[CLA_mlevel.scala 96:34]
    wire _T_23 : UInt<1>[2] @[CLA_mlevel.scala 69:31]
    _T_23[0] <= gs[0] @[CLA_mlevel.scala 69:31]
    _T_23[1] <= gs[1] @[CLA_mlevel.scala 69:31]
    node _T_24 = cat(_T_23[1], _T_23[0]) @[CLA_mlevel.scala 69:59]
    wire _T_25 : UInt<1>[2] @[CLA_mlevel.scala 70:31]
    _T_25[0] <= as[0] @[CLA_mlevel.scala 70:31]
    _T_25[1] <= as[1] @[CLA_mlevel.scala 70:31]
    node _T_26 = cat(_T_25[1], _T_25[0]) @[CLA_mlevel.scala 70:59]
    wire _T_27 : UInt<1>[2] @[CLA_mlevel.scala 71:38]
    _T_27[0] <= Cins[0] @[CLA_mlevel.scala 71:38]
    _T_27[1] <= Cins[1] @[CLA_mlevel.scala 71:38]
    inst CLG of CLG_8 @[CLA_mlevel.scala 40:21]
    CLG.clock <= clock
    CLG.reset <= reset
    CLG.io.g <= _T_24 @[CLA_mlevel.scala 41:11]
    CLG.io.a <= _T_26 @[CLA_mlevel.scala 42:11]
    wire _T_28 : UInt<1> @[CLA_mlevel.scala 43:29]
    CLG.io.cin <= _T_28 @[CLA_mlevel.scala 44:13]
    _T_27[0] <= _T_28 @[CLA_mlevel.scala 51:13]
    node _T_29 = bits(CLG.io.c, 0, 0) @[CLA_mlevel.scala 49:21]
    _T_27[1] <= _T_29 @[CLA_mlevel.scala 49:13]
    node _T_30 = bits(CLG.io.c, 1, 1) @[CLA_mlevel.scala 54:33]
    wire _T_31 : UInt<1>[2] @[CLA_mlevel.scala 69:31]
    _T_31[0] <= gs[2] @[CLA_mlevel.scala 69:31]
    _T_31[1] <= gs[3] @[CLA_mlevel.scala 69:31]
    node _T_32 = cat(_T_31[1], _T_31[0]) @[CLA_mlevel.scala 69:59]
    wire _T_33 : UInt<1>[2] @[CLA_mlevel.scala 70:31]
    _T_33[0] <= as[2] @[CLA_mlevel.scala 70:31]
    _T_33[1] <= as[3] @[CLA_mlevel.scala 70:31]
    node _T_34 = cat(_T_33[1], _T_33[0]) @[CLA_mlevel.scala 70:59]
    wire _T_35 : UInt<1>[2] @[CLA_mlevel.scala 71:38]
    _T_35[0] <= Cins[2] @[CLA_mlevel.scala 71:38]
    _T_35[1] <= Cins[3] @[CLA_mlevel.scala 71:38]
    inst CLG_1 of CLG_9 @[CLA_mlevel.scala 40:21]
    CLG_1.clock <= clock
    CLG_1.reset <= reset
    CLG_1.io.g <= _T_32 @[CLA_mlevel.scala 41:11]
    CLG_1.io.a <= _T_34 @[CLA_mlevel.scala 42:11]
    wire _T_36 : UInt<1> @[CLA_mlevel.scala 43:29]
    CLG_1.io.cin <= _T_36 @[CLA_mlevel.scala 44:13]
    _T_35[0] <= _T_36 @[CLA_mlevel.scala 51:13]
    node _T_37 = bits(CLG_1.io.c, 0, 0) @[CLA_mlevel.scala 49:21]
    _T_35[1] <= _T_37 @[CLA_mlevel.scala 49:13]
    node _T_38 = bits(CLG_1.io.c, 1, 1) @[CLA_mlevel.scala 54:33]
    wire _T_39 : UInt<1>[2] @[CLA_mlevel.scala 69:31]
    _T_39[0] <= gs[4] @[CLA_mlevel.scala 69:31]
    _T_39[1] <= gs[5] @[CLA_mlevel.scala 69:31]
    node _T_40 = cat(_T_39[1], _T_39[0]) @[CLA_mlevel.scala 69:59]
    wire _T_41 : UInt<1>[2] @[CLA_mlevel.scala 70:31]
    _T_41[0] <= as[4] @[CLA_mlevel.scala 70:31]
    _T_41[1] <= as[5] @[CLA_mlevel.scala 70:31]
    node _T_42 = cat(_T_41[1], _T_41[0]) @[CLA_mlevel.scala 70:59]
    wire _T_43 : UInt<1>[2] @[CLA_mlevel.scala 71:38]
    _T_43[0] <= Cins[4] @[CLA_mlevel.scala 71:38]
    _T_43[1] <= Cins[5] @[CLA_mlevel.scala 71:38]
    inst CLG_2 of CLG_10 @[CLA_mlevel.scala 40:21]
    CLG_2.clock <= clock
    CLG_2.reset <= reset
    CLG_2.io.g <= _T_40 @[CLA_mlevel.scala 41:11]
    CLG_2.io.a <= _T_42 @[CLA_mlevel.scala 42:11]
    wire _T_44 : UInt<1> @[CLA_mlevel.scala 43:29]
    CLG_2.io.cin <= _T_44 @[CLA_mlevel.scala 44:13]
    _T_43[0] <= _T_44 @[CLA_mlevel.scala 51:13]
    node _T_45 = bits(CLG_2.io.c, 0, 0) @[CLA_mlevel.scala 49:21]
    _T_43[1] <= _T_45 @[CLA_mlevel.scala 49:13]
    node _T_46 = bits(CLG_2.io.c, 1, 1) @[CLA_mlevel.scala 54:33]
    wire _T_47 : UInt<1>[2] @[CLA_mlevel.scala 69:31]
    _T_47[0] <= gs[6] @[CLA_mlevel.scala 69:31]
    _T_47[1] <= gs[7] @[CLA_mlevel.scala 69:31]
    node _T_48 = cat(_T_47[1], _T_47[0]) @[CLA_mlevel.scala 69:59]
    wire _T_49 : UInt<1>[2] @[CLA_mlevel.scala 70:31]
    _T_49[0] <= as[6] @[CLA_mlevel.scala 70:31]
    _T_49[1] <= as[7] @[CLA_mlevel.scala 70:31]
    node _T_50 = cat(_T_49[1], _T_49[0]) @[CLA_mlevel.scala 70:59]
    wire _T_51 : UInt<1>[2] @[CLA_mlevel.scala 71:38]
    _T_51[0] <= Cins[6] @[CLA_mlevel.scala 71:38]
    _T_51[1] <= Cins[7] @[CLA_mlevel.scala 71:38]
    inst CLG_3 of CLG_11 @[CLA_mlevel.scala 40:21]
    CLG_3.clock <= clock
    CLG_3.reset <= reset
    CLG_3.io.g <= _T_48 @[CLA_mlevel.scala 41:11]
    CLG_3.io.a <= _T_50 @[CLA_mlevel.scala 42:11]
    wire _T_52 : UInt<1> @[CLA_mlevel.scala 43:29]
    CLG_3.io.cin <= _T_52 @[CLA_mlevel.scala 44:13]
    _T_51[0] <= _T_52 @[CLA_mlevel.scala 51:13]
    node _T_53 = bits(CLG_3.io.c, 0, 0) @[CLA_mlevel.scala 49:21]
    _T_51[1] <= _T_53 @[CLA_mlevel.scala 49:13]
    node _T_54 = bits(CLG_3.io.c, 1, 1) @[CLA_mlevel.scala 54:33]
    wire _T_55 : UInt<1>[4] @[CLA_mlevel.scala 74:39]
    _T_55[0] <= CLG.io.G @[CLA_mlevel.scala 74:39]
    _T_55[1] <= CLG_1.io.G @[CLA_mlevel.scala 74:39]
    _T_55[2] <= CLG_2.io.G @[CLA_mlevel.scala 74:39]
    _T_55[3] <= CLG_3.io.G @[CLA_mlevel.scala 74:39]
    wire _T_56 : UInt<1>[4] @[CLA_mlevel.scala 75:39]
    _T_56[0] <= CLG.io.A @[CLA_mlevel.scala 75:39]
    _T_56[1] <= CLG_1.io.A @[CLA_mlevel.scala 75:39]
    _T_56[2] <= CLG_2.io.A @[CLA_mlevel.scala 75:39]
    _T_56[3] <= CLG_3.io.A @[CLA_mlevel.scala 75:39]
    wire _T_57 : UInt<1>[4] @[CLA_mlevel.scala 76:40]
    _T_57[0] <= _T_28 @[CLA_mlevel.scala 76:40]
    _T_57[1] <= _T_36 @[CLA_mlevel.scala 76:40]
    _T_57[2] <= _T_44 @[CLA_mlevel.scala 76:40]
    _T_57[3] <= _T_52 @[CLA_mlevel.scala 76:40]
    wire _T_58 : UInt<1>[4] @[CLA_mlevel.scala 77:41]
    _T_58[0] <= _T_30 @[CLA_mlevel.scala 77:41]
    _T_58[1] <= _T_38 @[CLA_mlevel.scala 77:41]
    _T_58[2] <= _T_46 @[CLA_mlevel.scala 77:41]
    _T_58[3] <= _T_54 @[CLA_mlevel.scala 77:41]
    _T_57[0] <= io.cin @[CLA_mlevel.scala 78:20]
    wire _T_59 : UInt<1>[2] @[CLA_mlevel.scala 69:31]
    _T_59[0] <= _T_55[0] @[CLA_mlevel.scala 69:31]
    _T_59[1] <= _T_55[1] @[CLA_mlevel.scala 69:31]
    node _T_60 = cat(_T_59[1], _T_59[0]) @[CLA_mlevel.scala 69:59]
    wire _T_61 : UInt<1>[2] @[CLA_mlevel.scala 70:31]
    _T_61[0] <= _T_56[0] @[CLA_mlevel.scala 70:31]
    _T_61[1] <= _T_56[1] @[CLA_mlevel.scala 70:31]
    node _T_62 = cat(_T_61[1], _T_61[0]) @[CLA_mlevel.scala 70:59]
    wire _T_63 : UInt<1>[2] @[CLA_mlevel.scala 71:38]
    _T_63[0] <= _T_57[0] @[CLA_mlevel.scala 71:38]
    _T_63[1] <= _T_57[1] @[CLA_mlevel.scala 71:38]
    inst CLG_4 of CLG_12 @[CLA_mlevel.scala 40:21]
    CLG_4.clock <= clock
    CLG_4.reset <= reset
    CLG_4.io.g <= _T_60 @[CLA_mlevel.scala 41:11]
    CLG_4.io.a <= _T_62 @[CLA_mlevel.scala 42:11]
    wire _T_64 : UInt<1> @[CLA_mlevel.scala 43:29]
    CLG_4.io.cin <= _T_64 @[CLA_mlevel.scala 44:13]
    _T_63[0] <= _T_64 @[CLA_mlevel.scala 51:13]
    node _T_65 = bits(CLG_4.io.c, 0, 0) @[CLA_mlevel.scala 49:21]
    _T_63[1] <= _T_65 @[CLA_mlevel.scala 49:13]
    node _T_66 = bits(CLG_4.io.c, 1, 1) @[CLA_mlevel.scala 54:33]
    wire _T_67 : UInt<1>[2] @[CLA_mlevel.scala 69:31]
    _T_67[0] <= _T_55[2] @[CLA_mlevel.scala 69:31]
    _T_67[1] <= _T_55[3] @[CLA_mlevel.scala 69:31]
    node _T_68 = cat(_T_67[1], _T_67[0]) @[CLA_mlevel.scala 69:59]
    wire _T_69 : UInt<1>[2] @[CLA_mlevel.scala 70:31]
    _T_69[0] <= _T_56[2] @[CLA_mlevel.scala 70:31]
    _T_69[1] <= _T_56[3] @[CLA_mlevel.scala 70:31]
    node _T_70 = cat(_T_69[1], _T_69[0]) @[CLA_mlevel.scala 70:59]
    wire _T_71 : UInt<1>[2] @[CLA_mlevel.scala 71:38]
    _T_71[0] <= _T_57[2] @[CLA_mlevel.scala 71:38]
    _T_71[1] <= _T_57[3] @[CLA_mlevel.scala 71:38]
    inst CLG_5 of CLG_13 @[CLA_mlevel.scala 40:21]
    CLG_5.clock <= clock
    CLG_5.reset <= reset
    CLG_5.io.g <= _T_68 @[CLA_mlevel.scala 41:11]
    CLG_5.io.a <= _T_70 @[CLA_mlevel.scala 42:11]
    wire _T_72 : UInt<1> @[CLA_mlevel.scala 43:29]
    CLG_5.io.cin <= _T_72 @[CLA_mlevel.scala 44:13]
    _T_71[0] <= _T_72 @[CLA_mlevel.scala 51:13]
    node _T_73 = bits(CLG_5.io.c, 0, 0) @[CLA_mlevel.scala 49:21]
    _T_71[1] <= _T_73 @[CLA_mlevel.scala 49:13]
    node _T_74 = bits(CLG_5.io.c, 1, 1) @[CLA_mlevel.scala 54:33]
    wire _T_75 : UInt<1>[2] @[CLA_mlevel.scala 74:39]
    _T_75[0] <= CLG_4.io.G @[CLA_mlevel.scala 74:39]
    _T_75[1] <= CLG_5.io.G @[CLA_mlevel.scala 74:39]
    wire _T_76 : UInt<1>[2] @[CLA_mlevel.scala 75:39]
    _T_76[0] <= CLG_4.io.A @[CLA_mlevel.scala 75:39]
    _T_76[1] <= CLG_5.io.A @[CLA_mlevel.scala 75:39]
    wire _T_77 : UInt<1>[2] @[CLA_mlevel.scala 76:40]
    _T_77[0] <= _T_64 @[CLA_mlevel.scala 76:40]
    _T_77[1] <= _T_72 @[CLA_mlevel.scala 76:40]
    wire _T_78 : UInt<1>[2] @[CLA_mlevel.scala 77:41]
    _T_78[0] <= _T_66 @[CLA_mlevel.scala 77:41]
    _T_78[1] <= _T_74 @[CLA_mlevel.scala 77:41]
    _T_77[0] <= io.cin @[CLA_mlevel.scala 78:20]
    wire _T_79 : UInt<1>[2] @[CLA_mlevel.scala 69:31]
    _T_79[0] <= _T_75[0] @[CLA_mlevel.scala 69:31]
    _T_79[1] <= _T_75[1] @[CLA_mlevel.scala 69:31]
    node _T_80 = cat(_T_79[1], _T_79[0]) @[CLA_mlevel.scala 69:59]
    wire _T_81 : UInt<1>[2] @[CLA_mlevel.scala 70:31]
    _T_81[0] <= _T_76[0] @[CLA_mlevel.scala 70:31]
    _T_81[1] <= _T_76[1] @[CLA_mlevel.scala 70:31]
    node _T_82 = cat(_T_81[1], _T_81[0]) @[CLA_mlevel.scala 70:59]
    wire _T_83 : UInt<1>[2] @[CLA_mlevel.scala 71:38]
    _T_83[0] <= _T_77[0] @[CLA_mlevel.scala 71:38]
    _T_83[1] <= _T_77[1] @[CLA_mlevel.scala 71:38]
    inst CLG_6 of CLG_14 @[CLA_mlevel.scala 40:21]
    CLG_6.clock <= clock
    CLG_6.reset <= reset
    CLG_6.io.g <= _T_80 @[CLA_mlevel.scala 41:11]
    CLG_6.io.a <= _T_82 @[CLA_mlevel.scala 42:11]
    wire _T_84 : UInt<1> @[CLA_mlevel.scala 43:29]
    CLG_6.io.cin <= _T_84 @[CLA_mlevel.scala 44:13]
    _T_83[0] <= _T_84 @[CLA_mlevel.scala 51:13]
    node _T_85 = bits(CLG_6.io.c, 0, 0) @[CLA_mlevel.scala 49:21]
    _T_83[1] <= _T_85 @[CLA_mlevel.scala 49:13]
    node _T_86 = bits(CLG_6.io.c, 1, 1) @[CLA_mlevel.scala 54:33]
    wire _T_87 : UInt<1>[1] @[CLA_mlevel.scala 74:39]
    _T_87[0] <= CLG_6.io.G @[CLA_mlevel.scala 74:39]
    wire _T_88 : UInt<1>[1] @[CLA_mlevel.scala 75:39]
    _T_88[0] <= CLG_6.io.A @[CLA_mlevel.scala 75:39]
    wire _T_89 : UInt<1>[1] @[CLA_mlevel.scala 76:40]
    _T_89[0] <= _T_84 @[CLA_mlevel.scala 76:40]
    wire _T_90 : UInt<1>[1] @[CLA_mlevel.scala 77:41]
    _T_90[0] <= _T_86 @[CLA_mlevel.scala 77:41]
    _T_89[0] <= io.cin @[CLA_mlevel.scala 78:20]
    _T_89[0] <= io.cin @[CLA_mlevel.scala 86:21]
    io.cout <= _T_90[0] @[CLA_mlevel.scala 98:11]
    
