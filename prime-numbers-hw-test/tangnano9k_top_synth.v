module oscillator_Brtl_8
  (input  clk,
   input  rst,
   input  enable,
   input  init,
   input  load,
   input  [7:0] period,
   output at_lap);
  reg [7:0] counter;
  reg [7:0] period_reg;
  wire [7:0] n737;
  wire [7:0] n739;
  wire n740;
  wire [7:0] n742;
  wire [7:0] n744;
  wire [7:0] n745;
  wire [7:0] n746;
  wire [30:0] n756;
  wire n758;
  wire n759;
  reg [7:0] n761;
  wire [7:0] n762;
  reg [7:0] n763;
  assign at_lap = n759; //(module output)
  /*# oscillator.vhd:19:12 */
  always @*
    counter = n761; // (isignal)
  initial
    counter = 8'b00000000;
  /*# oscillator.vhd:20:12 */
  always @*
    period_reg = n763; // (isignal)
  initial
    period_reg = 8'b00000000;
  /*# oscillator.vhd:32:17 */
  assign n737 = init ? 8'b00000000 : 8'b00000001;
  /*# oscillator.vhd:38:41 */
  assign n739 = period_reg - 8'b00000001;
  /*# oscillator.vhd:38:28 */
  assign n740 = counter == n739;
  /*# oscillator.vhd:41:40 */
  assign n742 = counter + 8'b00000001;
  /*# oscillator.vhd:38:17 */
  assign n744 = n740 ? 8'b00000000 : n742;
  /*# oscillator.vhd:37:13 */
  assign n745 = enable ? n744 : counter;
  /*# oscillator.vhd:30:13 */
  assign n746 = load ? n737 : n745;
  /*# oscillator.vhd:47:32 */
  assign n756 = {23'b0, counter};  // uext
  /*# oscillator.vhd:47:32 */
  assign n758 = n756 == 31'b0000000000000000000000000000000;
  /*# oscillator.vhd:47:19 */
  assign n759 = n758 ? 1'b1 : 1'b0;
  /*# oscillator.vhd:29:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n761 <= 8'b00000000;
    else
      n761 <= n746;
  /*# oscillator.vhd:29:9 */
  assign n762 = load ? period : period_reg;
  /*# oscillator.vhd:29:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n763 <= 8'b00000000;
    else
      n763 <= n762;
endmodule

module prime_finder_Brtl_16_8
  (input  clk,
   input  rst,
   output [7:0] prime_out,
   output done,
   output [7:0] counter_out);
  reg [15:0] osc_load;
  reg [15:0] osc_init;
  wire [15:0] osc_atlap;
  reg [127:0] osc_period;
  reg [7:0] counter;
  wire any_lap;
  reg tick;
  reg [4:0] next_idle;
  reg [4:0] prime_count;
  reg [1:0] state;
  wire n29;
  wire n30;
  wire [7:0] n31;
  wire \gen_oscillators[0]_osc_inst_n32 ;
  wire n35;
  wire n36;
  wire [7:0] n37;
  wire \gen_oscillators[1]_osc_inst_n38 ;
  wire n41;
  wire n42;
  wire [7:0] n43;
  wire \gen_oscillators[2]_osc_inst_n44 ;
  wire n47;
  wire n48;
  wire [7:0] n49;
  wire \gen_oscillators[3]_osc_inst_n50 ;
  wire n53;
  wire n54;
  wire [7:0] n55;
  wire \gen_oscillators[4]_osc_inst_n56 ;
  wire n59;
  wire n60;
  wire [7:0] n61;
  wire \gen_oscillators[5]_osc_inst_n62 ;
  wire n65;
  wire n66;
  wire [7:0] n67;
  wire \gen_oscillators[6]_osc_inst_n68 ;
  wire n71;
  wire n72;
  wire [7:0] n73;
  wire \gen_oscillators[7]_osc_inst_n74 ;
  wire n77;
  wire n78;
  wire [7:0] n79;
  wire \gen_oscillators[8]_osc_inst_n80 ;
  wire n83;
  wire n84;
  wire [7:0] n85;
  wire \gen_oscillators[9]_osc_inst_n86 ;
  wire n89;
  wire n90;
  wire [7:0] n91;
  wire \gen_oscillators[10]_osc_inst_n92 ;
  wire n95;
  wire n96;
  wire [7:0] n97;
  wire \gen_oscillators[11]_osc_inst_n98 ;
  wire n101;
  wire n102;
  wire [7:0] n103;
  wire \gen_oscillators[12]_osc_inst_n104 ;
  wire n107;
  wire n108;
  wire [7:0] n109;
  wire \gen_oscillators[13]_osc_inst_n110 ;
  wire n113;
  wire n114;
  wire [7:0] n115;
  wire \gen_oscillators[14]_osc_inst_n116 ;
  wire n119;
  wire n120;
  wire [7:0] n121;
  wire \gen_oscillators[15]_osc_inst_n122 ;
  wire n128;
  wire n130;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n213;
  wire n215;
  wire n216;
  wire n217;
  wire [31:0] n218;
  wire [31:0] n220;
  wire [4:0] n221;
  wire [31:0] n222;
  wire n224;
  wire [3:0] n225;
  wire [3:0] n227;
  wire [3:0] n230;
  wire [3:0] n232;
  localparam [15:0] n234 = 16'b0000000000000000;
  wire [3:0] n237;
  wire [3:0] n239;
  localparam [15:0] n241 = 16'b0000000000000000;
  wire [31:0] n244;
  wire [31:0] n246;
  wire [4:0] n247;
  wire [15:0] n249;
  wire [15:0] n251;
  wire [127:0] n252;
  wire [4:0] n253;
  wire [31:0] n254;
  wire [31:0] n256;
  wire n258;
  wire n260;
  wire [1:0] n264;
  wire [7:0] n265;
  wire n266;
  wire [15:0] n268;
  wire [15:0] n270;
  wire n271;
  wire n272;
  wire [4:0] n273;
  wire n275;
  wire [7:0] n277;
  wire n278;
  wire n279;
  wire [15:0] n281;
  wire [15:0] n283;
  wire n284;
  wire [7:0] n285;
  wire n286;
  wire n287;
  wire n289;
  wire n291;
  wire n293;
  wire [3:0] n294;
  reg [7:0] n296;
  reg n298;
  wire n299;
  reg n302;
  wire n303;
  reg n306;
  wire n307;
  reg n310;
  wire n311;
  reg n314;
  wire n315;
  reg n318;
  wire n319;
  reg n322;
  wire n323;
  reg n326;
  wire n327;
  reg n330;
  wire n331;
  reg n334;
  wire n335;
  reg n338;
  wire n339;
  reg n342;
  wire n343;
  reg n346;
  wire n347;
  reg n350;
  wire n351;
  reg n354;
  wire n355;
  reg n358;
  wire n359;
  reg n362;
  wire n379;
  reg n382;
  wire n383;
  reg n386;
  wire n387;
  reg n390;
  wire n391;
  reg n394;
  wire n395;
  reg n398;
  wire n399;
  reg n402;
  wire n403;
  reg n406;
  wire n407;
  reg n410;
  wire n411;
  reg n414;
  wire n415;
  reg n418;
  wire n419;
  reg n422;
  wire n423;
  reg n426;
  wire n427;
  reg n430;
  wire n431;
  reg n434;
  wire n435;
  reg n438;
  wire n439;
  reg n442;
  reg [127:0] n460;
  reg [7:0] n462;
  reg n464;
  reg [4:0] n466;
  reg [4:0] n468;
  reg [1:0] n474;
  wire [15:0] n477;
  wire [15:0] n479;
  wire [127:0] n496;
  wire [15:0] n511;
  reg [7:0] n512;
  reg n513;
  reg [15:0] n514;
  reg [15:0] n515;
  reg [127:0] n516;
  reg [7:0] n517;
  reg n518;
  reg [4:0] n519;
  reg [4:0] n520;
  reg [1:0] n521;
  wire n522;
  wire n523;
  wire n524;
  wire n525;
  wire n526;
  wire n527;
  wire n528;
  wire n529;
  wire n530;
  wire n531;
  wire n532;
  wire n533;
  wire n534;
  wire n535;
  wire n536;
  wire n537;
  wire n538;
  wire n539;
  wire n540;
  wire n541;
  wire n542;
  wire n543;
  wire n544;
  wire n545;
  wire n546;
  wire n547;
  wire n548;
  wire n549;
  wire n550;
  wire n551;
  wire n552;
  wire n553;
  wire n554;
  wire n555;
  wire n556;
  wire n557;
  wire [7:0] n558;
  wire [7:0] n559;
  wire [7:0] n560;
  wire [7:0] n561;
  wire [7:0] n562;
  wire [7:0] n563;
  wire [7:0] n564;
  wire [7:0] n565;
  wire [7:0] n566;
  wire [7:0] n567;
  wire [7:0] n568;
  wire [7:0] n569;
  wire [7:0] n570;
  wire [7:0] n571;
  wire [7:0] n572;
  wire [7:0] n573;
  wire [7:0] n574;
  wire [7:0] n575;
  wire [7:0] n576;
  wire [7:0] n577;
  wire [7:0] n578;
  wire [7:0] n579;
  wire [7:0] n580;
  wire [7:0] n581;
  wire [7:0] n582;
  wire [7:0] n583;
  wire [7:0] n584;
  wire [7:0] n585;
  wire [7:0] n586;
  wire [7:0] n587;
  wire [7:0] n588;
  wire [7:0] n589;
  wire [127:0] n590;
  wire n591;
  wire n592;
  wire n593;
  wire n594;
  wire n595;
  wire n596;
  wire n597;
  wire n598;
  wire n599;
  wire n600;
  wire n601;
  wire n602;
  wire n603;
  wire n604;
  wire n605;
  wire n606;
  wire n607;
  wire n608;
  wire n609;
  wire n610;
  wire n611;
  wire n612;
  wire n613;
  wire n614;
  wire n615;
  wire n616;
  wire n617;
  wire n618;
  wire n619;
  wire n620;
  wire n621;
  wire n622;
  wire n623;
  wire n624;
  wire n625;
  wire n626;
  wire n627;
  wire n628;
  wire n629;
  wire n630;
  wire n631;
  wire n632;
  wire n633;
  wire n634;
  wire n635;
  wire n636;
  wire n637;
  wire n638;
  wire n639;
  wire n640;
  wire n641;
  wire n642;
  wire n643;
  wire n644;
  wire n645;
  wire n646;
  wire n647;
  wire n648;
  wire n649;
  wire n650;
  wire n651;
  wire n652;
  wire n653;
  wire n654;
  wire n655;
  wire n656;
  wire n657;
  wire n658;
  wire [15:0] n659;
  wire n660;
  wire n661;
  wire n662;
  wire n663;
  wire n664;
  wire n665;
  wire n666;
  wire n667;
  wire n668;
  wire n669;
  wire n670;
  wire n671;
  wire n672;
  wire n673;
  wire n674;
  wire n675;
  wire n676;
  wire n677;
  wire n678;
  wire n679;
  wire n680;
  wire n681;
  wire n682;
  wire n683;
  wire n684;
  wire n685;
  wire n686;
  wire n687;
  wire n688;
  wire n689;
  wire n690;
  wire n691;
  wire n692;
  wire n693;
  wire n694;
  wire n695;
  wire n696;
  wire n697;
  wire n698;
  wire n699;
  wire n700;
  wire n701;
  wire n702;
  wire n703;
  wire n704;
  wire n705;
  wire n706;
  wire n707;
  wire n708;
  wire n709;
  wire n710;
  wire n711;
  wire n712;
  wire n713;
  wire n714;
  wire n715;
  wire n716;
  wire n717;
  wire n718;
  wire n719;
  wire n720;
  wire n721;
  wire n722;
  wire n723;
  wire n724;
  wire n725;
  wire n726;
  wire n727;
  wire [15:0] n728;
  assign prime_out = n512; //(module output)
  assign done = n513; //(module output)
  assign counter_out = counter; //(module output)
  /*# prime_finder.vhd:36:17 */
  always @*
    osc_load = n514; // (isignal)
  initial
    osc_load = 16'b0000000000000000;
  /*# prime_finder.vhd:37:17 */
  always @*
    osc_init = n515; // (isignal)
  initial
    osc_init = 16'b0000000000000000;
  /*# prime_finder.vhd:38:17 */
  assign osc_atlap = n511; // (signal)
  /*# prime_finder.vhd:39:17 */
  always @*
    osc_period = n516; // (isignal)
  initial
    osc_period = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  /*# prime_finder.vhd:41:17 */
  always @*
    counter = n517; // (isignal)
  initial
    counter = 8'b00000000;
  /*# prime_finder.vhd:42:17 */
  assign any_lap = n159; // (signal)
  /*# prime_finder.vhd:47:12 */
  always @*
    tick = n518; // (isignal)
  initial
    tick = 1'b0;
  /*# prime_finder.vhd:49:17 */
  always @*
    next_idle = n519; // (isignal)
  initial
    next_idle = 5'b00010;
  /*# prime_finder.vhd:50:17 */
  always @*
    prime_count = n520; // (isignal)
  initial
    prime_count = 5'b00000;
  /*# prime_finder.vhd:54:17 */
  always @*
    state = n521; // (isignal)
  initial
    state = 2'b00;
  /*# prime_finder.vhd:68:60 */
  assign n29 = osc_init[15]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n30 = osc_load[15]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n31 = osc_period[127:120]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[0]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n29),
    .load(n30),
    .period(n31),
    .at_lap(\gen_oscillators[0]_osc_inst_n32 ));
  /*# prime_finder.vhd:68:60 */
  assign n35 = osc_init[14]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n36 = osc_load[14]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n37 = osc_period[119:112]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[1]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n35),
    .load(n36),
    .period(n37),
    .at_lap(\gen_oscillators[1]_osc_inst_n38 ));
  /*# prime_finder.vhd:68:60 */
  assign n41 = osc_init[13]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n42 = osc_load[13]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n43 = osc_period[111:104]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[2]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n41),
    .load(n42),
    .period(n43),
    .at_lap(\gen_oscillators[2]_osc_inst_n44 ));
  /*# prime_finder.vhd:68:60 */
  assign n47 = osc_init[12]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n48 = osc_load[12]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n49 = osc_period[103:96]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[3]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n47),
    .load(n48),
    .period(n49),
    .at_lap(\gen_oscillators[3]_osc_inst_n50 ));
  /*# prime_finder.vhd:68:60 */
  assign n53 = osc_init[11]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n54 = osc_load[11]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n55 = osc_period[95:88]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[4]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n53),
    .load(n54),
    .period(n55),
    .at_lap(\gen_oscillators[4]_osc_inst_n56 ));
  /*# prime_finder.vhd:68:60 */
  assign n59 = osc_init[10]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n60 = osc_load[10]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n61 = osc_period[87:80]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[5]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n59),
    .load(n60),
    .period(n61),
    .at_lap(\gen_oscillators[5]_osc_inst_n62 ));
  /*# prime_finder.vhd:68:60 */
  assign n65 = osc_init[9]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n66 = osc_load[9]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n67 = osc_period[79:72]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[6]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n65),
    .load(n66),
    .period(n67),
    .at_lap(\gen_oscillators[6]_osc_inst_n68 ));
  /*# prime_finder.vhd:68:60 */
  assign n71 = osc_init[8]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n72 = osc_load[8]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n73 = osc_period[71:64]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[7]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n71),
    .load(n72),
    .period(n73),
    .at_lap(\gen_oscillators[7]_osc_inst_n74 ));
  /*# prime_finder.vhd:68:60 */
  assign n77 = osc_init[7]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n78 = osc_load[7]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n79 = osc_period[63:56]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[8]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n77),
    .load(n78),
    .period(n79),
    .at_lap(\gen_oscillators[8]_osc_inst_n80 ));
  /*# prime_finder.vhd:68:60 */
  assign n83 = osc_init[6]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n84 = osc_load[6]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n85 = osc_period[55:48]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[9]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n83),
    .load(n84),
    .period(n85),
    .at_lap(\gen_oscillators[9]_osc_inst_n86 ));
  /*# prime_finder.vhd:68:60 */
  assign n89 = osc_init[5]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n90 = osc_load[5]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n91 = osc_period[47:40]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[10]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n89),
    .load(n90),
    .period(n91),
    .at_lap(\gen_oscillators[10]_osc_inst_n92 ));
  /*# prime_finder.vhd:68:60 */
  assign n95 = osc_init[4]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n96 = osc_load[4]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n97 = osc_period[39:32]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[11]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n95),
    .load(n96),
    .period(n97),
    .at_lap(\gen_oscillators[11]_osc_inst_n98 ));
  /*# prime_finder.vhd:68:60 */
  assign n101 = osc_init[3]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n102 = osc_load[3]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n103 = osc_period[31:24]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[12]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n101),
    .load(n102),
    .period(n103),
    .at_lap(\gen_oscillators[12]_osc_inst_n104 ));
  /*# prime_finder.vhd:68:60 */
  assign n107 = osc_init[2]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n108 = osc_load[2]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n109 = osc_period[23:16]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[13]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n107),
    .load(n108),
    .period(n109),
    .at_lap(\gen_oscillators[13]_osc_inst_n110 ));
  /*# prime_finder.vhd:68:60 */
  assign n113 = osc_init[1]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n114 = osc_load[1]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n115 = osc_period[15:8]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[14]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n113),
    .load(n114),
    .period(n115),
    .at_lap(\gen_oscillators[14]_osc_inst_n116 ));
  /*# prime_finder.vhd:68:60 */
  assign n119 = osc_init[0]; // extract
  /*# prime_finder.vhd:67:35 */
  assign n120 = osc_load[0]; // extract
  /*# prime_finder.vhd:69:37 */
  assign n121 = osc_period[7:0]; // extract
  /*# prime_finder.vhd:61:9 */
  oscillator_Brtl_8 \gen_oscillators[15]_osc_inst  (
    .clk(clk),
    .rst(rst),
    .enable(tick),
    .init(n119),
    .load(n120),
    .period(n121),
    .at_lap(\gen_oscillators[15]_osc_inst_n122 ));
  /*# prime_finder.vhd:80:32 */
  assign n128 = osc_atlap[14]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n130 = 1'b0 | n128;
  /*# prime_finder.vhd:80:32 */
  assign n132 = osc_atlap[13]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n133 = n130 | n132;
  /*# prime_finder.vhd:80:32 */
  assign n134 = osc_atlap[12]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n135 = n133 | n134;
  /*# prime_finder.vhd:80:32 */
  assign n136 = osc_atlap[11]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n137 = n135 | n136;
  /*# prime_finder.vhd:80:32 */
  assign n138 = osc_atlap[10]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n139 = n137 | n138;
  /*# prime_finder.vhd:80:32 */
  assign n140 = osc_atlap[9]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n141 = n139 | n140;
  /*# prime_finder.vhd:80:32 */
  assign n142 = osc_atlap[8]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n143 = n141 | n142;
  /*# prime_finder.vhd:80:32 */
  assign n144 = osc_atlap[7]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n145 = n143 | n144;
  /*# prime_finder.vhd:80:32 */
  assign n146 = osc_atlap[6]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n147 = n145 | n146;
  /*# prime_finder.vhd:80:32 */
  assign n148 = osc_atlap[5]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n149 = n147 | n148;
  /*# prime_finder.vhd:80:32 */
  assign n150 = osc_atlap[4]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n151 = n149 | n150;
  /*# prime_finder.vhd:80:32 */
  assign n152 = osc_atlap[3]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n153 = n151 | n152;
  /*# prime_finder.vhd:80:32 */
  assign n154 = osc_atlap[2]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n155 = n153 | n154;
  /*# prime_finder.vhd:80:32 */
  assign n156 = osc_atlap[1]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n157 = n155 | n156;
  /*# prime_finder.vhd:80:32 */
  assign n158 = osc_atlap[0]; // extract
  /*# prime_finder.vhd:80:20 */
  assign n159 = n157 | n158;
  /*# prime_finder.vhd:110:17 */
  assign n213 = state == 2'b00;
  /*# prime_finder.vhd:119:41 */
  assign n215 = state == 2'b01;
  /*# prime_finder.vhd:126:65 */
  assign n216 = ~tick;
  /*# prime_finder.vhd:132:36 */
  assign n217 = ~any_lap;
  /*# prime_finder.vhd:134:56 */
  assign n218 = {27'b0, prime_count};  // uext
  /*# prime_finder.vhd:134:56 */
  assign n220 = n218 + 32'b00000000000000000000000000000001;
  /*# prime_finder.vhd:134:44 */
  assign n221 = n220[4:0];  // trunc
  /*# prime_finder.vhd:136:42 */
  assign n222 = {27'b0, next_idle};  // uext
  /*# prime_finder.vhd:136:42 */
  assign n224 = $signed(n222) < $signed(32'b00000000000000000000000000010000);
  /*# prime_finder.vhd:137:44 */
  assign n225 = next_idle[3:0];  // trunc
  /*# prime_finder.vhd:137:44 */
  assign n227 = 4'b1111 - n225;
  /*# prime_finder.vhd:138:42 */
  assign n230 = next_idle[3:0];  // trunc
  /*# prime_finder.vhd:138:42 */
  assign n232 = 4'b1111 - n230;
  /*# prime_finder.vhd:139:42 */
  assign n237 = next_idle[3:0];  // trunc
  /*# prime_finder.vhd:139:42 */
  assign n239 = 4'b1111 - n237;
  /*# prime_finder.vhd:140:56 */
  assign n244 = {27'b0, next_idle};  // uext
  /*# prime_finder.vhd:140:56 */
  assign n246 = n244 + 32'b00000000000000000000000000000001;
  /*# prime_finder.vhd:140:46 */
  assign n247 = n246[4:0];  // trunc
  /*# prime_finder.vhd:136:29 */
  assign n249 = n224 ? n659 : 16'b0000000000000000;
  /*# prime_finder.vhd:136:29 */
  assign n251 = n224 ? n728 : 16'b0000000000000000;
  /*# prime_finder.vhd:130:21 */
  assign n252 = n284 ? n590 : osc_period;
  /*# prime_finder.vhd:130:21 */
  assign n253 = n286 ? n247 : next_idle;
  /*# prime_finder.vhd:143:44 */
  assign n254 = {27'b0, prime_count};  // uext
  /*# prime_finder.vhd:143:44 */
  assign n256 = n254 + 32'b00000000000000000000000000000001;
  /*# prime_finder.vhd:143:48 */
  assign n258 = n256 == 32'b00000000000000000000000000010000;
  /*# prime_finder.vhd:130:21 */
  assign n260 = n279 ? 1'b1 : n513;
  /*# prime_finder.vhd:130:21 */
  assign n264 = n289 ? 2'b11 : state;
  /*# prime_finder.vhd:130:21 */
  assign n265 = n278 ? counter : n512;
  /*# prime_finder.vhd:132:25 */
  assign n266 = n258 & n217;
  /*# prime_finder.vhd:132:25 */
  assign n268 = n217 ? n249 : 16'b0000000000000000;
  /*# prime_finder.vhd:132:25 */
  assign n270 = n217 ? n251 : 16'b0000000000000000;
  /*# prime_finder.vhd:132:25 */
  assign n271 = n224 & n217;
  /*# prime_finder.vhd:132:25 */
  assign n272 = n224 & n217;
  /*# prime_finder.vhd:130:21 */
  assign n273 = n287 ? n221 : prime_count;
  /*# prime_finder.vhd:132:25 */
  assign n275 = n258 & n217;
  /*# prime_finder.vhd:150:44 */
  assign n277 = counter + 8'b00000001;
  /*# prime_finder.vhd:130:21 */
  assign n278 = n217 & tick;
  /*# prime_finder.vhd:130:21 */
  assign n279 = n266 & tick;
  /*# prime_finder.vhd:130:21 */
  assign n281 = tick ? n268 : 16'b0000000000000000;
  /*# prime_finder.vhd:130:21 */
  assign n283 = tick ? n270 : 16'b0000000000000000;
  /*# prime_finder.vhd:130:21 */
  assign n284 = n271 & tick;
  /*# prime_finder.vhd:130:21 */
  assign n285 = tick ? n277 : counter;
  /*# prime_finder.vhd:130:21 */
  assign n286 = n272 & tick;
  /*# prime_finder.vhd:130:21 */
  assign n287 = n217 & tick;
  /*# prime_finder.vhd:130:21 */
  assign n289 = n275 & tick;
  /*# prime_finder.vhd:124:17 */
  assign n291 = state == 2'b10;
  /*# prime_finder.vhd:154:17 */
  assign n293 = state == 2'b11;
  /*# prime_finder.vhd:108:13 */
  assign n294 = {n293, n291, n215, n213};
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n296 = n512;
      4'b0100: n296 = n265;
      4'b0010: n296 = n512;
      4'b0001: n296 = n512;
      default: n296 = 8'bX;
    endcase
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n298 = n513;
      4'b0100: n298 = n260;
      4'b0010: n298 = n513;
      4'b0001: n298 = n513;
      default: n298 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n299 = n281[0]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n302 = 1'b0;
      4'b0100: n302 = n299;
      4'b0010: n302 = 1'b0;
      4'b0001: n302 = 1'b1;
      default: n302 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n303 = n281[1]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n306 = 1'b0;
      4'b0100: n306 = n303;
      4'b0010: n306 = 1'b0;
      4'b0001: n306 = 1'b1;
      default: n306 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n307 = n281[2]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n310 = 1'b0;
      4'b0100: n310 = n307;
      4'b0010: n310 = 1'b0;
      4'b0001: n310 = 1'b1;
      default: n310 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n311 = n281[3]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n314 = 1'b0;
      4'b0100: n314 = n311;
      4'b0010: n314 = 1'b0;
      4'b0001: n314 = 1'b1;
      default: n314 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n315 = n281[4]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n318 = 1'b0;
      4'b0100: n318 = n315;
      4'b0010: n318 = 1'b0;
      4'b0001: n318 = 1'b1;
      default: n318 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n319 = n281[5]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n322 = 1'b0;
      4'b0100: n322 = n319;
      4'b0010: n322 = 1'b0;
      4'b0001: n322 = 1'b1;
      default: n322 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n323 = n281[6]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n326 = 1'b0;
      4'b0100: n326 = n323;
      4'b0010: n326 = 1'b0;
      4'b0001: n326 = 1'b1;
      default: n326 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n327 = n281[7]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n330 = 1'b0;
      4'b0100: n330 = n327;
      4'b0010: n330 = 1'b0;
      4'b0001: n330 = 1'b1;
      default: n330 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n331 = n281[8]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n334 = 1'b0;
      4'b0100: n334 = n331;
      4'b0010: n334 = 1'b0;
      4'b0001: n334 = 1'b1;
      default: n334 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n335 = n281[9]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n338 = 1'b0;
      4'b0100: n338 = n335;
      4'b0010: n338 = 1'b0;
      4'b0001: n338 = 1'b1;
      default: n338 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n339 = n281[10]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n342 = 1'b0;
      4'b0100: n342 = n339;
      4'b0010: n342 = 1'b0;
      4'b0001: n342 = 1'b1;
      default: n342 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n343 = n281[11]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n346 = 1'b0;
      4'b0100: n346 = n343;
      4'b0010: n346 = 1'b0;
      4'b0001: n346 = 1'b1;
      default: n346 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n347 = n281[12]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n350 = 1'b0;
      4'b0100: n350 = n347;
      4'b0010: n350 = 1'b0;
      4'b0001: n350 = 1'b1;
      default: n350 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n351 = n281[13]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n354 = 1'b0;
      4'b0100: n354 = n351;
      4'b0010: n354 = 1'b0;
      4'b0001: n354 = 1'b1;
      default: n354 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n355 = n281[14]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n358 = 1'b0;
      4'b0100: n358 = n355;
      4'b0010: n358 = 1'b0;
      4'b0001: n358 = 1'b1;
      default: n358 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n359 = n281[15]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n362 = 1'b0;
      4'b0100: n362 = n359;
      4'b0010: n362 = 1'b0;
      4'b0001: n362 = 1'b1;
      default: n362 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n379 = n283[0]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n382 = 1'b0;
      4'b0100: n382 = n379;
      4'b0010: n382 = 1'b0;
      4'b0001: n382 = 1'b1;
      default: n382 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n383 = n283[1]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n386 = 1'b0;
      4'b0100: n386 = n383;
      4'b0010: n386 = 1'b0;
      4'b0001: n386 = 1'b1;
      default: n386 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n387 = n283[2]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n390 = 1'b0;
      4'b0100: n390 = n387;
      4'b0010: n390 = 1'b0;
      4'b0001: n390 = 1'b1;
      default: n390 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n391 = n283[3]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n394 = 1'b0;
      4'b0100: n394 = n391;
      4'b0010: n394 = 1'b0;
      4'b0001: n394 = 1'b1;
      default: n394 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n395 = n283[4]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n398 = 1'b0;
      4'b0100: n398 = n395;
      4'b0010: n398 = 1'b0;
      4'b0001: n398 = 1'b1;
      default: n398 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n399 = n283[5]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n402 = 1'b0;
      4'b0100: n402 = n399;
      4'b0010: n402 = 1'b0;
      4'b0001: n402 = 1'b1;
      default: n402 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n403 = n283[6]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n406 = 1'b0;
      4'b0100: n406 = n403;
      4'b0010: n406 = 1'b0;
      4'b0001: n406 = 1'b1;
      default: n406 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n407 = n283[7]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n410 = 1'b0;
      4'b0100: n410 = n407;
      4'b0010: n410 = 1'b0;
      4'b0001: n410 = 1'b1;
      default: n410 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n411 = n283[8]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n414 = 1'b0;
      4'b0100: n414 = n411;
      4'b0010: n414 = 1'b0;
      4'b0001: n414 = 1'b1;
      default: n414 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n415 = n283[9]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n418 = 1'b0;
      4'b0100: n418 = n415;
      4'b0010: n418 = 1'b0;
      4'b0001: n418 = 1'b1;
      default: n418 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n419 = n283[10]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n422 = 1'b0;
      4'b0100: n422 = n419;
      4'b0010: n422 = 1'b0;
      4'b0001: n422 = 1'b1;
      default: n422 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n423 = n283[11]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n426 = 1'b0;
      4'b0100: n426 = n423;
      4'b0010: n426 = 1'b0;
      4'b0001: n426 = 1'b1;
      default: n426 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n427 = n283[12]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n430 = 1'b0;
      4'b0100: n430 = n427;
      4'b0010: n430 = 1'b0;
      4'b0001: n430 = 1'b1;
      default: n430 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n431 = n283[13]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n434 = 1'b0;
      4'b0100: n434 = n431;
      4'b0010: n434 = 1'b0;
      4'b0001: n434 = 1'b1;
      default: n434 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n435 = n283[14]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n438 = 1'b0;
      4'b0100: n438 = n435;
      4'b0010: n438 = 1'b0;
      4'b0001: n438 = 1'b1;
      default: n438 = 1'bX;
    endcase
  /*# prime_finder.vhd:130:21 */
  assign n439 = n283[15]; // extract
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n442 = 1'b0;
      4'b0100: n442 = n439;
      4'b0010: n442 = 1'b0;
      4'b0001: n442 = 1'b1;
      default: n442 = 1'bX;
    endcase
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n460 = osc_period;
      4'b0100: n460 = n252;
      4'b0010: n460 = osc_period;
      4'b0001: n460 = osc_period;
      default: n460 = 128'bX;
    endcase
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n462 = counter;
      4'b0100: n462 = n285;
      4'b0010: n462 = counter;
      4'b0001: n462 = counter;
      default: n462 = 8'bX;
    endcase
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n464 = tick;
      4'b0100: n464 = n216;
      4'b0010: n464 = tick;
      4'b0001: n464 = tick;
      default: n464 = 1'bX;
    endcase
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n466 = next_idle;
      4'b0100: n466 = n253;
      4'b0010: n466 = next_idle;
      4'b0001: n466 = next_idle;
      default: n466 = 5'bX;
    endcase
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n468 = prime_count;
      4'b0100: n468 = n273;
      4'b0010: n468 = prime_count;
      4'b0001: n468 = prime_count;
      default: n468 = 5'bX;
    endcase
  /*# prime_finder.vhd:108:13 */
  always @*
    case (n294)
      4'b1000: n474 = state;
      4'b0100: n474 = n264;
      4'b0010: n474 = 2'b10;
      4'b0001: n474 = 2'b01;
      default: n474 = 2'bX;
    endcase
  /*# prime_finder.vhd:103:9 */
  assign n477 = {n362, n358, n354, n350, n346, n342, n338, n334, n330, n326, n322, n318, n314, n310, n306, n302};
  /*# prime_finder.vhd:103:9 */
  assign n479 = {n442, n438, n434, n430, n426, n422, n418, n414, n410, n406, n402, n398, n394, n390, n386, n382};
  /*# prime_finder.vhd:87:9 */
  assign n496 = {8'b00000001, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010, 8'b00000010};
  /*# prime_finder.vhd:38:17 */
  assign n511 = {\gen_oscillators[0]_osc_inst_n32 , \gen_oscillators[1]_osc_inst_n38 , \gen_oscillators[2]_osc_inst_n44 , \gen_oscillators[3]_osc_inst_n50 , \gen_oscillators[4]_osc_inst_n56 , \gen_oscillators[5]_osc_inst_n62 , \gen_oscillators[6]_osc_inst_n68 , \gen_oscillators[7]_osc_inst_n74 , \gen_oscillators[8]_osc_inst_n80 , \gen_oscillators[9]_osc_inst_n86 , \gen_oscillators[10]_osc_inst_n92 , \gen_oscillators[11]_osc_inst_n98 , \gen_oscillators[12]_osc_inst_n104 , \gen_oscillators[13]_osc_inst_n110 , \gen_oscillators[14]_osc_inst_n116 , \gen_oscillators[15]_osc_inst_n122 };
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n512 <= 8'b00000000;
    else
      n512 <= n296;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n513 <= 1'b0;
    else
      n513 <= n298;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n514 <= 16'b0000000000000000;
    else
      n514 <= n477;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n515 <= 16'b0000000000000000;
    else
      n515 <= n479;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n516 <= n496;
    else
      n516 <= n460;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n517 <= 8'b00000010;
    else
      n517 <= n462;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n518 <= 1'b0;
    else
      n518 <= n464;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n519 <= 5'b00010;
    else
      n519 <= n466;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n520 <= 5'b00001;
    else
      n520 <= n468;
  /*# prime_finder.vhd:103:9 */
  always @(posedge clk or posedge rst)
    if (rst)
      n521 <= 2'b00;
    else
      n521 <= n474;
  /*# prime_finder.vhd:137:33 */
  assign n522 = n227[3]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n523 = ~n522;
  /*# prime_finder.vhd:137:33 */
  assign n524 = n227[2]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n525 = ~n524;
  /*# prime_finder.vhd:137:33 */
  assign n526 = n523 & n525;
  /*# prime_finder.vhd:137:33 */
  assign n527 = n523 & n524;
  /*# prime_finder.vhd:137:33 */
  assign n528 = n522 & n525;
  /*# prime_finder.vhd:137:33 */
  assign n529 = n522 & n524;
  /*# prime_finder.vhd:137:33 */
  assign n530 = n227[1]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n531 = ~n530;
  /*# prime_finder.vhd:137:33 */
  assign n532 = n526 & n531;
  /*# prime_finder.vhd:137:33 */
  assign n533 = n526 & n530;
  /*# prime_finder.vhd:137:33 */
  assign n534 = n527 & n531;
  /*# prime_finder.vhd:137:33 */
  assign n535 = n527 & n530;
  /*# prime_finder.vhd:137:33 */
  assign n536 = n528 & n531;
  /*# prime_finder.vhd:137:33 */
  assign n537 = n528 & n530;
  /*# prime_finder.vhd:137:33 */
  assign n538 = n529 & n531;
  /*# prime_finder.vhd:137:33 */
  assign n539 = n529 & n530;
  /*# prime_finder.vhd:137:33 */
  assign n540 = n227[0]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n541 = ~n540;
  /*# prime_finder.vhd:137:33 */
  assign n542 = n532 & n541;
  /*# prime_finder.vhd:137:33 */
  assign n543 = n532 & n540;
  /*# prime_finder.vhd:137:33 */
  assign n544 = n533 & n541;
  /*# prime_finder.vhd:137:33 */
  assign n545 = n533 & n540;
  /*# prime_finder.vhd:137:33 */
  assign n546 = n534 & n541;
  /*# prime_finder.vhd:137:33 */
  assign n547 = n534 & n540;
  /*# prime_finder.vhd:137:33 */
  assign n548 = n535 & n541;
  /*# prime_finder.vhd:137:33 */
  assign n549 = n535 & n540;
  /*# prime_finder.vhd:137:33 */
  assign n550 = n536 & n541;
  /*# prime_finder.vhd:137:33 */
  assign n551 = n536 & n540;
  /*# prime_finder.vhd:137:33 */
  assign n552 = n537 & n541;
  /*# prime_finder.vhd:137:33 */
  assign n553 = n537 & n540;
  /*# prime_finder.vhd:137:33 */
  assign n554 = n538 & n541;
  /*# prime_finder.vhd:137:33 */
  assign n555 = n538 & n540;
  /*# prime_finder.vhd:137:33 */
  assign n556 = n539 & n541;
  /*# prime_finder.vhd:137:33 */
  assign n557 = n539 & n540;
  /*# prime_finder.vhd:137:33 */
  assign n558 = osc_period[7:0]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n559 = n542 ? counter : n558;
  /*# prime_finder.vhd:137:33 */
  assign n560 = osc_period[15:8]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n561 = n543 ? counter : n560;
  /*# prime_finder.vhd:137:33 */
  assign n562 = osc_period[23:16]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n563 = n544 ? counter : n562;
  /*# prime_finder.vhd:137:33 */
  assign n564 = osc_period[31:24]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n565 = n545 ? counter : n564;
  /*# prime_finder.vhd:137:33 */
  assign n566 = osc_period[39:32]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n567 = n546 ? counter : n566;
  /*# prime_finder.vhd:137:33 */
  assign n568 = osc_period[47:40]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n569 = n547 ? counter : n568;
  /*# prime_finder.vhd:137:33 */
  assign n570 = osc_period[55:48]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n571 = n548 ? counter : n570;
  /*# prime_finder.vhd:137:33 */
  assign n572 = osc_period[63:56]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n573 = n549 ? counter : n572;
  /*# prime_finder.vhd:137:33 */
  assign n574 = osc_period[71:64]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n575 = n550 ? counter : n574;
  /*# prime_finder.vhd:137:33 */
  assign n576 = osc_period[79:72]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n577 = n551 ? counter : n576;
  /*# prime_finder.vhd:137:33 */
  assign n578 = osc_period[87:80]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n579 = n552 ? counter : n578;
  /*# prime_finder.vhd:137:33 */
  assign n580 = osc_period[95:88]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n581 = n553 ? counter : n580;
  /*# prime_finder.vhd:137:33 */
  assign n582 = osc_period[103:96]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n583 = n554 ? counter : n582;
  /*# prime_finder.vhd:137:33 */
  assign n584 = osc_period[111:104]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n585 = n555 ? counter : n584;
  /*# prime_finder.vhd:137:33 */
  assign n586 = osc_period[119:112]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n587 = n556 ? counter : n586;
  /*# prime_finder.vhd:137:33 */
  assign n588 = osc_period[127:120]; // extract
  /*# prime_finder.vhd:137:33 */
  assign n589 = n557 ? counter : n588;
  /*# prime_finder.vhd:137:33 */
  assign n590 = {n589, n587, n585, n583, n581, n579, n577, n575, n573, n571, n569, n567, n565, n563, n561, n559};
  /*# prime_finder.vhd:138:33 */
  assign n591 = n232[3]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n592 = ~n591;
  /*# prime_finder.vhd:138:33 */
  assign n593 = n232[2]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n594 = ~n593;
  /*# prime_finder.vhd:138:33 */
  assign n595 = n592 & n594;
  /*# prime_finder.vhd:138:33 */
  assign n596 = n592 & n593;
  /*# prime_finder.vhd:138:33 */
  assign n597 = n591 & n594;
  /*# prime_finder.vhd:138:33 */
  assign n598 = n591 & n593;
  /*# prime_finder.vhd:138:33 */
  assign n599 = n232[1]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n600 = ~n599;
  /*# prime_finder.vhd:138:33 */
  assign n601 = n595 & n600;
  /*# prime_finder.vhd:138:33 */
  assign n602 = n595 & n599;
  /*# prime_finder.vhd:138:33 */
  assign n603 = n596 & n600;
  /*# prime_finder.vhd:138:33 */
  assign n604 = n596 & n599;
  /*# prime_finder.vhd:138:33 */
  assign n605 = n597 & n600;
  /*# prime_finder.vhd:138:33 */
  assign n606 = n597 & n599;
  /*# prime_finder.vhd:138:33 */
  assign n607 = n598 & n600;
  /*# prime_finder.vhd:138:33 */
  assign n608 = n598 & n599;
  /*# prime_finder.vhd:138:33 */
  assign n609 = n232[0]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n610 = ~n609;
  /*# prime_finder.vhd:138:33 */
  assign n611 = n601 & n610;
  /*# prime_finder.vhd:138:33 */
  assign n612 = n601 & n609;
  /*# prime_finder.vhd:138:33 */
  assign n613 = n602 & n610;
  /*# prime_finder.vhd:138:33 */
  assign n614 = n602 & n609;
  /*# prime_finder.vhd:138:33 */
  assign n615 = n603 & n610;
  /*# prime_finder.vhd:138:33 */
  assign n616 = n603 & n609;
  /*# prime_finder.vhd:138:33 */
  assign n617 = n604 & n610;
  /*# prime_finder.vhd:138:33 */
  assign n618 = n604 & n609;
  /*# prime_finder.vhd:138:33 */
  assign n619 = n605 & n610;
  /*# prime_finder.vhd:138:33 */
  assign n620 = n605 & n609;
  /*# prime_finder.vhd:138:33 */
  assign n621 = n606 & n610;
  /*# prime_finder.vhd:138:33 */
  assign n622 = n606 & n609;
  /*# prime_finder.vhd:138:33 */
  assign n623 = n607 & n610;
  /*# prime_finder.vhd:138:33 */
  assign n624 = n607 & n609;
  /*# prime_finder.vhd:138:33 */
  assign n625 = n608 & n610;
  /*# prime_finder.vhd:138:33 */
  assign n626 = n608 & n609;
  /*# prime_finder.vhd:138:33 */
  assign n627 = n234[0]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n628 = n611 ? 1'b1 : n627;
  /*# prime_finder.vhd:138:33 */
  assign n629 = n234[1]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n630 = n612 ? 1'b1 : n629;
  /*# prime_finder.vhd:138:33 */
  assign n631 = n234[2]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n632 = n613 ? 1'b1 : n631;
  /*# prime_finder.vhd:138:33 */
  assign n633 = n234[3]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n634 = n614 ? 1'b1 : n633;
  /*# prime_finder.vhd:138:33 */
  assign n635 = n234[4]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n636 = n615 ? 1'b1 : n635;
  /*# prime_finder.vhd:138:33 */
  assign n637 = n234[5]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n638 = n616 ? 1'b1 : n637;
  /*# prime_finder.vhd:138:33 */
  assign n639 = n234[6]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n640 = n617 ? 1'b1 : n639;
  /*# prime_finder.vhd:138:33 */
  assign n641 = n234[7]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n642 = n618 ? 1'b1 : n641;
  /*# prime_finder.vhd:138:33 */
  assign n643 = n234[8]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n644 = n619 ? 1'b1 : n643;
  /*# prime_finder.vhd:138:33 */
  assign n645 = n234[9]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n646 = n620 ? 1'b1 : n645;
  /*# prime_finder.vhd:138:33 */
  assign n647 = n234[10]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n648 = n621 ? 1'b1 : n647;
  /*# prime_finder.vhd:138:33 */
  assign n649 = n234[11]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n650 = n622 ? 1'b1 : n649;
  /*# prime_finder.vhd:138:33 */
  assign n651 = n234[12]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n652 = n623 ? 1'b1 : n651;
  /*# prime_finder.vhd:138:33 */
  assign n653 = n234[13]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n654 = n624 ? 1'b1 : n653;
  /*# prime_finder.vhd:138:33 */
  assign n655 = n234[14]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n656 = n625 ? 1'b1 : n655;
  /*# prime_finder.vhd:138:33 */
  assign n657 = n234[15]; // extract
  /*# prime_finder.vhd:138:33 */
  assign n658 = n626 ? 1'b1 : n657;
  /*# prime_finder.vhd:138:33 */
  assign n659 = {n658, n656, n654, n652, n650, n648, n646, n644, n642, n640, n638, n636, n634, n632, n630, n628};
  /*# prime_finder.vhd:139:33 */
  assign n660 = n239[3]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n661 = ~n660;
  /*# prime_finder.vhd:139:33 */
  assign n662 = n239[2]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n663 = ~n662;
  /*# prime_finder.vhd:139:33 */
  assign n664 = n661 & n663;
  /*# prime_finder.vhd:139:33 */
  assign n665 = n661 & n662;
  /*# prime_finder.vhd:139:33 */
  assign n666 = n660 & n663;
  /*# prime_finder.vhd:139:33 */
  assign n667 = n660 & n662;
  /*# prime_finder.vhd:139:33 */
  assign n668 = n239[1]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n669 = ~n668;
  /*# prime_finder.vhd:139:33 */
  assign n670 = n664 & n669;
  /*# prime_finder.vhd:139:33 */
  assign n671 = n664 & n668;
  /*# prime_finder.vhd:139:33 */
  assign n672 = n665 & n669;
  /*# prime_finder.vhd:139:33 */
  assign n673 = n665 & n668;
  /*# prime_finder.vhd:139:33 */
  assign n674 = n666 & n669;
  /*# prime_finder.vhd:139:33 */
  assign n675 = n666 & n668;
  /*# prime_finder.vhd:139:33 */
  assign n676 = n667 & n669;
  /*# prime_finder.vhd:139:33 */
  assign n677 = n667 & n668;
  /*# prime_finder.vhd:139:33 */
  assign n678 = n239[0]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n679 = ~n678;
  /*# prime_finder.vhd:139:33 */
  assign n680 = n670 & n679;
  /*# prime_finder.vhd:139:33 */
  assign n681 = n670 & n678;
  /*# prime_finder.vhd:139:33 */
  assign n682 = n671 & n679;
  /*# prime_finder.vhd:139:33 */
  assign n683 = n671 & n678;
  /*# prime_finder.vhd:139:33 */
  assign n684 = n672 & n679;
  /*# prime_finder.vhd:139:33 */
  assign n685 = n672 & n678;
  /*# prime_finder.vhd:139:33 */
  assign n686 = n673 & n679;
  /*# prime_finder.vhd:139:33 */
  assign n687 = n673 & n678;
  /*# prime_finder.vhd:139:33 */
  assign n688 = n674 & n679;
  /*# prime_finder.vhd:139:33 */
  assign n689 = n674 & n678;
  /*# prime_finder.vhd:139:33 */
  assign n690 = n675 & n679;
  /*# prime_finder.vhd:139:33 */
  assign n691 = n675 & n678;
  /*# prime_finder.vhd:139:33 */
  assign n692 = n676 & n679;
  /*# prime_finder.vhd:139:33 */
  assign n693 = n676 & n678;
  /*# prime_finder.vhd:139:33 */
  assign n694 = n677 & n679;
  /*# prime_finder.vhd:139:33 */
  assign n695 = n677 & n678;
  /*# prime_finder.vhd:139:33 */
  assign n696 = n241[0]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n697 = n680 ? 1'b0 : n696;
  /*# prime_finder.vhd:139:33 */
  assign n698 = n241[1]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n699 = n681 ? 1'b0 : n698;
  /*# prime_finder.vhd:139:33 */
  assign n700 = n241[2]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n701 = n682 ? 1'b0 : n700;
  /*# prime_finder.vhd:139:33 */
  assign n702 = n241[3]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n703 = n683 ? 1'b0 : n702;
  /*# prime_finder.vhd:139:33 */
  assign n704 = n241[4]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n705 = n684 ? 1'b0 : n704;
  /*# prime_finder.vhd:139:33 */
  assign n706 = n241[5]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n707 = n685 ? 1'b0 : n706;
  /*# prime_finder.vhd:139:33 */
  assign n708 = n241[6]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n709 = n686 ? 1'b0 : n708;
  /*# prime_finder.vhd:139:33 */
  assign n710 = n241[7]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n711 = n687 ? 1'b0 : n710;
  /*# prime_finder.vhd:139:33 */
  assign n712 = n241[8]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n713 = n688 ? 1'b0 : n712;
  /*# prime_finder.vhd:139:33 */
  assign n714 = n241[9]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n715 = n689 ? 1'b0 : n714;
  /*# prime_finder.vhd:139:33 */
  assign n716 = n241[10]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n717 = n690 ? 1'b0 : n716;
  /*# prime_finder.vhd:139:33 */
  assign n718 = n241[11]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n719 = n691 ? 1'b0 : n718;
  /*# prime_finder.vhd:139:33 */
  assign n720 = n241[12]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n721 = n692 ? 1'b0 : n720;
  /*# prime_finder.vhd:139:33 */
  assign n722 = n241[13]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n723 = n693 ? 1'b0 : n722;
  /*# prime_finder.vhd:139:33 */
  assign n724 = n241[14]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n725 = n694 ? 1'b0 : n724;
  /*# prime_finder.vhd:139:33 */
  assign n726 = n241[15]; // extract
  /*# prime_finder.vhd:139:33 */
  assign n727 = n695 ? 1'b0 : n726;
  /*# prime_finder.vhd:139:33 */
  assign n728 = {n727, n725, n723, n721, n719, n717, n715, n713, n711, n709, n707, n705, n703, n701, n699, n697};
endmodule

module tangnano9k_top
  (input  clk,
   input  btn1_n,
   input  btn2_n,
   output [5:0] led);
  wire rst;
  wire done;
  wire [7:0] prime_out;
  wire n1;
  wire [7:0] \u_prime_finder.counter_out ;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire [5:0] n16;
  assign led = n16; //(module output)
  /*# tangnano9k_top.vhd:19:12 */
  assign rst = n1; // (signal)
  /*# tangnano9k_top.vhd:28:12 */
  assign n1 = ~btn1_n;
  /*# tangnano9k_top.vhd:30:5 */
  prime_finder_Brtl_16_8 u_prime_finder (
    .clk(clk),
    .rst(rst),
    .prime_out(prime_out),
    .done(done),
    .counter_out());
  /*# tangnano9k_top.vhd:47:15 */
  assign n5 = ~done;
  /*# tangnano9k_top.vhd:48:38 */
  assign n6 = prime_out[0]; // extract
  /*# tangnano9k_top.vhd:48:15 */
  assign n7 = ~n6;
  /*# tangnano9k_top.vhd:49:38 */
  assign n8 = prime_out[1]; // extract
  /*# tangnano9k_top.vhd:49:15 */
  assign n9 = ~n8;
  /*# tangnano9k_top.vhd:50:38 */
  assign n10 = prime_out[2]; // extract
  /*# tangnano9k_top.vhd:50:15 */
  assign n11 = ~n10;
  /*# tangnano9k_top.vhd:51:38 */
  assign n12 = prime_out[3]; // extract
  /*# tangnano9k_top.vhd:51:15 */
  assign n13 = ~n12;
  /*# tangnano9k_top.vhd:52:38 */
  assign n14 = prime_out[4]; // extract
  /*# tangnano9k_top.vhd:52:15 */
  assign n15 = ~n14;
  /*# tangnano9k_top.vhd:10:9 */
  assign n16 = {n15, n13, n11, n9, n7, n5};
endmodule

