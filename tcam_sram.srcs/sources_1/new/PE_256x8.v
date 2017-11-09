`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2017 11:29:05 PM
// Design Name: 
// Module Name: PE_256x8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder_4bit (in, out, valid);

    input [3:0] in;
    output [3:0] out;
    output valid;

    assign out[3] = in[3];
    assign out[2] = ~in[3] & in[2];
    assign out[1] = ~in[3] & ~in[2] & in[1];
    assign out[0] = ~in[3] & ~in[2] & ~in[1] & in[0];

    assign valid = in[3] | in[2] | in[1] | in[0];

endmodule

module priority_encoder_256bit ( in, out, valid);
    input [255:0] in;
    output [255:0] out;
    output valid;


    // stage 1
    // 256 -> 64 x 4
    wire [3:0] s1po[0:63];
    wire [63:0] s1v;
    priority_encoder_4bit s1pe_00(in[3:0], s1po[0], s1v[0]);
    priority_encoder_4bit s1pe_01(in[7:4], s1po[1], s1v[1]);
    priority_encoder_4bit s1pe_02(in[11:8], s1po[2], s1v[2]);
    priority_encoder_4bit s1pe_03(in[15:12], s1po[3], s1v[3]);
    priority_encoder_4bit s1pe_04(in[19:16], s1po[4], s1v[4]);
    priority_encoder_4bit s1pe_05(in[23:20], s1po[5], s1v[5]);
    priority_encoder_4bit s1pe_06(in[27:24], s1po[6], s1v[6]);
    priority_encoder_4bit s1pe_07(in[31:28], s1po[7], s1v[7]);
    priority_encoder_4bit s1pe_08(in[35:32], s1po[8], s1v[8]);
    priority_encoder_4bit s1pe_09(in[39:36], s1po[9], s1v[9]);
    priority_encoder_4bit s1pe_10(in[43:40], s1po[10], s1v[10]);
    priority_encoder_4bit s1pe_11(in[47:44], s1po[11], s1v[11]);
    priority_encoder_4bit s1pe_12(in[51:48], s1po[12], s1v[12]);
    priority_encoder_4bit s1pe_13(in[55:52], s1po[13], s1v[13]);
    priority_encoder_4bit s1pe_14(in[59:56], s1po[14], s1v[14]);
    priority_encoder_4bit s1pe_15(in[63:60], s1po[15], s1v[15]);
    priority_encoder_4bit s1pe_16(in[67:64], s1po[16], s1v[16]);
    priority_encoder_4bit s1pe_17(in[71:68], s1po[17], s1v[17]);
    priority_encoder_4bit s1pe_18(in[75:72], s1po[18], s1v[18]);
    priority_encoder_4bit s1pe_19(in[79:76], s1po[19], s1v[19]);
    priority_encoder_4bit s1pe_20(in[83:80], s1po[20], s1v[20]);
    priority_encoder_4bit s1pe_21(in[87:84], s1po[21], s1v[21]);
    priority_encoder_4bit s1pe_22(in[91:88], s1po[22], s1v[22]);
    priority_encoder_4bit s1pe_23(in[95:92], s1po[23], s1v[23]);
    priority_encoder_4bit s1pe_24(in[99:96], s1po[24], s1v[24]);
    priority_encoder_4bit s1pe_25(in[103:100], s1po[25], s1v[25]);
    priority_encoder_4bit s1pe_26(in[107:104], s1po[26], s1v[26]);
    priority_encoder_4bit s1pe_27(in[111:108], s1po[27], s1v[27]);
    priority_encoder_4bit s1pe_28(in[115:112], s1po[28], s1v[28]);
    priority_encoder_4bit s1pe_29(in[119:116], s1po[29], s1v[29]);
    priority_encoder_4bit s1pe_30(in[123:120], s1po[30], s1v[30]);
    priority_encoder_4bit s1pe_31(in[127:124], s1po[31], s1v[31]);
    priority_encoder_4bit s1pe_32(in[131:128], s1po[32], s1v[32]);
    priority_encoder_4bit s1pe_33(in[135:132], s1po[33], s1v[33]);
    priority_encoder_4bit s1pe_34(in[139:136], s1po[34], s1v[34]);
    priority_encoder_4bit s1pe_35(in[143:140], s1po[35], s1v[35]);
    priority_encoder_4bit s1pe_36(in[147:144], s1po[36], s1v[36]);
    priority_encoder_4bit s1pe_37(in[151:148], s1po[37], s1v[37]);
    priority_encoder_4bit s1pe_38(in[155:152], s1po[38], s1v[38]);
    priority_encoder_4bit s1pe_39(in[159:156], s1po[39], s1v[39]);
    priority_encoder_4bit s1pe_40(in[163:160], s1po[40], s1v[40]);
    priority_encoder_4bit s1pe_41(in[167:164], s1po[41], s1v[41]);
    priority_encoder_4bit s1pe_42(in[171:168], s1po[42], s1v[42]);
    priority_encoder_4bit s1pe_43(in[175:172], s1po[43], s1v[43]);
    priority_encoder_4bit s1pe_44(in[179:176], s1po[44], s1v[44]);
    priority_encoder_4bit s1pe_45(in[183:180], s1po[45], s1v[45]);
    priority_encoder_4bit s1pe_46(in[187:184], s1po[46], s1v[46]);
    priority_encoder_4bit s1pe_47(in[191:188], s1po[47], s1v[47]);
    priority_encoder_4bit s1pe_48(in[195:192], s1po[48], s1v[48]);
    priority_encoder_4bit s1pe_49(in[199:196], s1po[49], s1v[49]);
    priority_encoder_4bit s1pe_50(in[203:200], s1po[50], s1v[50]);
    priority_encoder_4bit s1pe_51(in[207:204], s1po[51], s1v[51]);
    priority_encoder_4bit s1pe_52(in[211:208], s1po[52], s1v[52]);
    priority_encoder_4bit s1pe_53(in[215:212], s1po[53], s1v[53]);
    priority_encoder_4bit s1pe_54(in[219:216], s1po[54], s1v[54]);
    priority_encoder_4bit s1pe_55(in[223:220], s1po[55], s1v[55]);
    priority_encoder_4bit s1pe_56(in[227:224], s1po[56], s1v[56]);
    priority_encoder_4bit s1pe_57(in[231:228], s1po[57], s1v[57]);
    priority_encoder_4bit s1pe_58(in[235:232], s1po[58], s1v[58]);
    priority_encoder_4bit s1pe_59(in[239:236], s1po[59], s1v[59]);
    priority_encoder_4bit s1pe_60(in[243:240], s1po[60], s1v[60]);
    priority_encoder_4bit s1pe_61(in[247:244], s1po[61], s1v[61]);
    priority_encoder_4bit s1pe_62(in[251:248], s1po[62], s1v[62]);
    priority_encoder_4bit s1pe_63(in[255:252], s1po[63], s1v[63]);

    // stage 2
    // 64 -> 16 x 4
    wire [3:0] s2po[0:15];
    wire [15:0] s2v;

    priority_encoder_4bit s2pe_00(s1v[3:0], s2po[0], s2v[0]);
	priority_encoder_4bit s2pe_01(s1v[7:4], s2po[1], s2v[1]);
	priority_encoder_4bit s2pe_02(s1v[11:8], s2po[2], s2v[2]);
	priority_encoder_4bit s2pe_03(s1v[15:12], s2po[3], s2v[3]);
	priority_encoder_4bit s2pe_04(s1v[19:16], s2po[4], s2v[4]);
	priority_encoder_4bit s2pe_05(s1v[23:20], s2po[5], s2v[5]);
	priority_encoder_4bit s2pe_06(s1v[27:24], s2po[6], s2v[6]);
	priority_encoder_4bit s2pe_07(s1v[31:28], s2po[7], s2v[7]);
	priority_encoder_4bit s2pe_08(s1v[35:32], s2po[8], s2v[8]);
	priority_encoder_4bit s2pe_09(s1v[39:36], s2po[9], s2v[9]);
	priority_encoder_4bit s2pe_10(s1v[43:40], s2po[10], s2v[10]);
	priority_encoder_4bit s2pe_11(s1v[47:44], s2po[11], s2v[11]);
	priority_encoder_4bit s2pe_12(s1v[51:48], s2po[12], s2v[12]);
	priority_encoder_4bit s2pe_13(s1v[55:52], s2po[13], s2v[13]);
	priority_encoder_4bit s2pe_14(s1v[59:56], s2po[14], s2v[14]);
	priority_encoder_4bit s2pe_15(s1v[63:60], s2po[15], s2v[15]);

    // stage 3
    // 16 -> 4 x 4
    wire [3:0] s3po[0:3];
    wire [3:0] s3v;

    priority_encoder_4bit s3pe_01(s2v[3:0], s3po[0], s3v[0]);
    priority_encoder_4bit s3pe_02(s2v[7:4], s3po[1], s3v[1]);
    priority_encoder_4bit s3pe_03(s2v[11:8], s3po[2], s3v[2]);
    priority_encoder_4bit s3pe_04(s2v[15:12], s3po[3], s3v[3]);

    // stage 4
    // 4 -> 1 x 4
    wire [3:0] s4po;
    wire s4v;

    priority_encoder_4bit s4pe_01(s3v[3:0], s4po, s4v);

    // recombination / masking

    // stage 4 -> stage 3
    wire [15:0] s3m;

    assign s3m[0] = s4po[0] & s3po[0][0];
    assign s3m[1] = s4po[0] & s3po[0][1];
    assign s3m[2] = s4po[0] & s3po[0][2];
    assign s3m[3] = s4po[0] & s3po[0][3];

    assign s3m[4] = s4po[1] & s3po[1][0];
    assign s3m[5] = s4po[1] & s3po[1][1];
    assign s3m[6] = s4po[1] & s3po[1][2];
    assign s3m[7] = s4po[1] & s3po[1][3];

    assign s3m[8] = s4po[2] & s3po[2][0];
    assign s3m[9] = s4po[2] & s3po[2][1];
    assign s3m[10] = s4po[2] & s3po[2][2];
    assign s3m[11] = s4po[2] & s3po[2][3];

    assign s3m[12] = s4po[3] & s3po[3][0];
    assign s3m[13] = s4po[3] & s3po[3][1];
    assign s3m[14] = s4po[3] & s3po[3][2];
    assign s3m[15] = s4po[3] & s3po[3][3];


    // stage 3 -> stage 2
    wire [63:0] s2m;

    assign s2m[0] = s3m[0] & s2po[0][0];
	assign s2m[1] = s3m[0] & s2po[0][1];
	assign s2m[2] = s3m[0] & s2po[0][2];
	assign s2m[3] = s3m[0] & s2po[0][3];

	assign s2m[4] = s3m[1] & s2po[1][0];
	assign s2m[5] = s3m[1] & s2po[1][1];
	assign s2m[6] = s3m[1] & s2po[1][2];
	assign s2m[7] = s3m[1] & s2po[1][3];

	assign s2m[8] = s3m[2] & s2po[2][0];
	assign s2m[9] = s3m[2] & s2po[2][1];
	assign s2m[10] = s3m[2] & s2po[2][2];
	assign s2m[11] = s3m[2] & s2po[2][3];

	assign s2m[12] = s3m[3] & s2po[3][0];
	assign s2m[13] = s3m[3] & s2po[3][1];
	assign s2m[14] = s3m[3] & s2po[3][2];
	assign s2m[15] = s3m[3] & s2po[3][3];

	assign s2m[16] = s3m[4] & s2po[4][0];
	assign s2m[17] = s3m[4] & s2po[4][1];
	assign s2m[18] = s3m[4] & s2po[4][2];
	assign s2m[19] = s3m[4] & s2po[4][3];

	assign s2m[20] = s3m[5] & s2po[5][0];
	assign s2m[21] = s3m[5] & s2po[5][1];
	assign s2m[22] = s3m[5] & s2po[5][2];
	assign s2m[23] = s3m[5] & s2po[5][3];

	assign s2m[24] = s3m[6] & s2po[6][0];
	assign s2m[25] = s3m[6] & s2po[6][1];
	assign s2m[26] = s3m[6] & s2po[6][2];
	assign s2m[27] = s3m[6] & s2po[6][3];

	assign s2m[28] = s3m[7] & s2po[7][0];
	assign s2m[29] = s3m[7] & s2po[7][1];
	assign s2m[30] = s3m[7] & s2po[7][2];
	assign s2m[31] = s3m[7] & s2po[7][3];

	assign s2m[32] = s3m[8] & s2po[8][0];
	assign s2m[33] = s3m[8] & s2po[8][1];
	assign s2m[34] = s3m[8] & s2po[8][2];
	assign s2m[35] = s3m[8] & s2po[8][3];

	assign s2m[36] = s3m[9] & s2po[9][0];
	assign s2m[37] = s3m[9] & s2po[9][1];
	assign s2m[38] = s3m[9] & s2po[9][2];
	assign s2m[39] = s3m[9] & s2po[9][3];

	assign s2m[40] = s3m[10] & s2po[10][0];
	assign s2m[41] = s3m[10] & s2po[10][1];
	assign s2m[42] = s3m[10] & s2po[10][2];
	assign s2m[43] = s3m[10] & s2po[10][3];

	assign s2m[44] = s3m[11] & s2po[11][0];
	assign s2m[45] = s3m[11] & s2po[11][1];
	assign s2m[46] = s3m[11] & s2po[11][2];
	assign s2m[47] = s3m[11] & s2po[11][3];

	assign s2m[48] = s3m[12] & s2po[12][0];
	assign s2m[49] = s3m[12] & s2po[12][1];
	assign s2m[50] = s3m[12] & s2po[12][2];
	assign s2m[51] = s3m[12] & s2po[12][3];

	assign s2m[52] = s3m[13] & s2po[13][0];
	assign s2m[53] = s3m[13] & s2po[13][1];
	assign s2m[54] = s3m[13] & s2po[13][2];
	assign s2m[55] = s3m[13] & s2po[13][3];

	assign s2m[56] = s3m[14] & s2po[14][0];
	assign s2m[57] = s3m[14] & s2po[14][1];
	assign s2m[58] = s3m[14] & s2po[14][2];
	assign s2m[59] = s3m[14] & s2po[14][3];

	assign s2m[60] = s3m[15] & s2po[15][0];
	assign s2m[61] = s3m[15] & s2po[15][1];
	assign s2m[62] = s3m[15] & s2po[15][2];
	assign s2m[63] = s3m[15] & s2po[15][3];

    
    // stage 2 -> stage 1

	assign out[0] = s2m[0] & s1po[0][0];
	assign out[1] = s2m[0] & s1po[0][1];
	assign out[2] = s2m[0] & s1po[0][2];
	assign out[3] = s2m[0] & s1po[0][3];

	assign out[4] = s2m[1] & s1po[1][0];
	assign out[5] = s2m[1] & s1po[1][1];
	assign out[6] = s2m[1] & s1po[1][2];
	assign out[7] = s2m[1] & s1po[1][3];

	assign out[8] = s2m[2] & s1po[2][0];
	assign out[9] = s2m[2] & s1po[2][1];
	assign out[10] = s2m[2] & s1po[2][2];
	assign out[11] = s2m[2] & s1po[2][3];

	assign out[12] = s2m[3] & s1po[3][0];
	assign out[13] = s2m[3] & s1po[3][1];
	assign out[14] = s2m[3] & s1po[3][2];
	assign out[15] = s2m[3] & s1po[3][3];

	assign out[16] = s2m[4] & s1po[4][0];
	assign out[17] = s2m[4] & s1po[4][1];
	assign out[18] = s2m[4] & s1po[4][2];
	assign out[19] = s2m[4] & s1po[4][3];

	assign out[20] = s2m[5] & s1po[5][0];
	assign out[21] = s2m[5] & s1po[5][1];
	assign out[22] = s2m[5] & s1po[5][2];
	assign out[23] = s2m[5] & s1po[5][3];

	assign out[24] = s2m[6] & s1po[6][0];
	assign out[25] = s2m[6] & s1po[6][1];
	assign out[26] = s2m[6] & s1po[6][2];
	assign out[27] = s2m[6] & s1po[6][3];

	assign out[28] = s2m[7] & s1po[7][0];
	assign out[29] = s2m[7] & s1po[7][1];
	assign out[30] = s2m[7] & s1po[7][2];
	assign out[31] = s2m[7] & s1po[7][3];

	assign out[32] = s2m[8] & s1po[8][0];
	assign out[33] = s2m[8] & s1po[8][1];
	assign out[34] = s2m[8] & s1po[8][2];
	assign out[35] = s2m[8] & s1po[8][3];

	assign out[36] = s2m[9] & s1po[9][0];
	assign out[37] = s2m[9] & s1po[9][1];
	assign out[38] = s2m[9] & s1po[9][2];
	assign out[39] = s2m[9] & s1po[9][3];

	assign out[40] = s2m[10] & s1po[10][0];
	assign out[41] = s2m[10] & s1po[10][1];
	assign out[42] = s2m[10] & s1po[10][2];
	assign out[43] = s2m[10] & s1po[10][3];

	assign out[44] = s2m[11] & s1po[11][0];
	assign out[45] = s2m[11] & s1po[11][1];
	assign out[46] = s2m[11] & s1po[11][2];
	assign out[47] = s2m[11] & s1po[11][3];

	assign out[48] = s2m[12] & s1po[12][0];
	assign out[49] = s2m[12] & s1po[12][1];
	assign out[50] = s2m[12] & s1po[12][2];
	assign out[51] = s2m[12] & s1po[12][3];

	assign out[52] = s2m[13] & s1po[13][0];
	assign out[53] = s2m[13] & s1po[13][1];
	assign out[54] = s2m[13] & s1po[13][2];
	assign out[55] = s2m[13] & s1po[13][3];

	assign out[56] = s2m[14] & s1po[14][0];
	assign out[57] = s2m[14] & s1po[14][1];
	assign out[58] = s2m[14] & s1po[14][2];
	assign out[59] = s2m[14] & s1po[14][3];

	assign out[60] = s2m[15] & s1po[15][0];
	assign out[61] = s2m[15] & s1po[15][1];
	assign out[62] = s2m[15] & s1po[15][2];
	assign out[63] = s2m[15] & s1po[15][3];

	assign out[64] = s2m[16] & s1po[16][0];
	assign out[65] = s2m[16] & s1po[16][1];
	assign out[66] = s2m[16] & s1po[16][2];
	assign out[67] = s2m[16] & s1po[16][3];

	assign out[68] = s2m[17] & s1po[17][0];
	assign out[69] = s2m[17] & s1po[17][1];
	assign out[70] = s2m[17] & s1po[17][2];
	assign out[71] = s2m[17] & s1po[17][3];

	assign out[72] = s2m[18] & s1po[18][0];
	assign out[73] = s2m[18] & s1po[18][1];
	assign out[74] = s2m[18] & s1po[18][2];
	assign out[75] = s2m[18] & s1po[18][3];

	assign out[76] = s2m[19] & s1po[19][0];
	assign out[77] = s2m[19] & s1po[19][1];
	assign out[78] = s2m[19] & s1po[19][2];
	assign out[79] = s2m[19] & s1po[19][3];

	assign out[80] = s2m[20] & s1po[20][0];
	assign out[81] = s2m[20] & s1po[20][1];
	assign out[82] = s2m[20] & s1po[20][2];
	assign out[83] = s2m[20] & s1po[20][3];

	assign out[84] = s2m[21] & s1po[21][0];
	assign out[85] = s2m[21] & s1po[21][1];
	assign out[86] = s2m[21] & s1po[21][2];
	assign out[87] = s2m[21] & s1po[21][3];

	assign out[88] = s2m[22] & s1po[22][0];
	assign out[89] = s2m[22] & s1po[22][1];
	assign out[90] = s2m[22] & s1po[22][2];
	assign out[91] = s2m[22] & s1po[22][3];

	assign out[92] = s2m[23] & s1po[23][0];
	assign out[93] = s2m[23] & s1po[23][1];
	assign out[94] = s2m[23] & s1po[23][2];
	assign out[95] = s2m[23] & s1po[23][3];

	assign out[96] = s2m[24] & s1po[24][0];
	assign out[97] = s2m[24] & s1po[24][1];
	assign out[98] = s2m[24] & s1po[24][2];
	assign out[99] = s2m[24] & s1po[24][3];

	assign out[100] = s2m[25] & s1po[25][0];
	assign out[101] = s2m[25] & s1po[25][1];
	assign out[102] = s2m[25] & s1po[25][2];
	assign out[103] = s2m[25] & s1po[25][3];

	assign out[104] = s2m[26] & s1po[26][0];
	assign out[105] = s2m[26] & s1po[26][1];
	assign out[106] = s2m[26] & s1po[26][2];
	assign out[107] = s2m[26] & s1po[26][3];

	assign out[108] = s2m[27] & s1po[27][0];
	assign out[109] = s2m[27] & s1po[27][1];
	assign out[110] = s2m[27] & s1po[27][2];
	assign out[111] = s2m[27] & s1po[27][3];

	assign out[112] = s2m[28] & s1po[28][0];
	assign out[113] = s2m[28] & s1po[28][1];
	assign out[114] = s2m[28] & s1po[28][2];
	assign out[115] = s2m[28] & s1po[28][3];

	assign out[116] = s2m[29] & s1po[29][0];
	assign out[117] = s2m[29] & s1po[29][1];
	assign out[118] = s2m[29] & s1po[29][2];
	assign out[119] = s2m[29] & s1po[29][3];

	assign out[120] = s2m[30] & s1po[30][0];
	assign out[121] = s2m[30] & s1po[30][1];
	assign out[122] = s2m[30] & s1po[30][2];
	assign out[123] = s2m[30] & s1po[30][3];

	assign out[124] = s2m[31] & s1po[31][0];
	assign out[125] = s2m[31] & s1po[31][1];
	assign out[126] = s2m[31] & s1po[31][2];
	assign out[127] = s2m[31] & s1po[31][3];

	assign out[128] = s2m[32] & s1po[32][0];
	assign out[129] = s2m[32] & s1po[32][1];
	assign out[130] = s2m[32] & s1po[32][2];
	assign out[131] = s2m[32] & s1po[32][3];

	assign out[132] = s2m[33] & s1po[33][0];
	assign out[133] = s2m[33] & s1po[33][1];
	assign out[134] = s2m[33] & s1po[33][2];
	assign out[135] = s2m[33] & s1po[33][3];

	assign out[136] = s2m[34] & s1po[34][0];
	assign out[137] = s2m[34] & s1po[34][1];
	assign out[138] = s2m[34] & s1po[34][2];
	assign out[139] = s2m[34] & s1po[34][3];

	assign out[140] = s2m[35] & s1po[35][0];
	assign out[141] = s2m[35] & s1po[35][1];
	assign out[142] = s2m[35] & s1po[35][2];
	assign out[143] = s2m[35] & s1po[35][3];

	assign out[144] = s2m[36] & s1po[36][0];
	assign out[145] = s2m[36] & s1po[36][1];
	assign out[146] = s2m[36] & s1po[36][2];
	assign out[147] = s2m[36] & s1po[36][3];

	assign out[148] = s2m[37] & s1po[37][0];
	assign out[149] = s2m[37] & s1po[37][1];
	assign out[150] = s2m[37] & s1po[37][2];
	assign out[151] = s2m[37] & s1po[37][3];

	assign out[152] = s2m[38] & s1po[38][0];
	assign out[153] = s2m[38] & s1po[38][1];
	assign out[154] = s2m[38] & s1po[38][2];
	assign out[155] = s2m[38] & s1po[38][3];

	assign out[156] = s2m[39] & s1po[39][0];
	assign out[157] = s2m[39] & s1po[39][1];
	assign out[158] = s2m[39] & s1po[39][2];
	assign out[159] = s2m[39] & s1po[39][3];

	assign out[160] = s2m[40] & s1po[40][0];
	assign out[161] = s2m[40] & s1po[40][1];
	assign out[162] = s2m[40] & s1po[40][2];
	assign out[163] = s2m[40] & s1po[40][3];

	assign out[164] = s2m[41] & s1po[41][0];
	assign out[165] = s2m[41] & s1po[41][1];
	assign out[166] = s2m[41] & s1po[41][2];
	assign out[167] = s2m[41] & s1po[41][3];

	assign out[168] = s2m[42] & s1po[42][0];
	assign out[169] = s2m[42] & s1po[42][1];
	assign out[170] = s2m[42] & s1po[42][2];
	assign out[171] = s2m[42] & s1po[42][3];

	assign out[172] = s2m[43] & s1po[43][0];
	assign out[173] = s2m[43] & s1po[43][1];
	assign out[174] = s2m[43] & s1po[43][2];
	assign out[175] = s2m[43] & s1po[43][3];

	assign out[176] = s2m[44] & s1po[44][0];
	assign out[177] = s2m[44] & s1po[44][1];
	assign out[178] = s2m[44] & s1po[44][2];
	assign out[179] = s2m[44] & s1po[44][3];

	assign out[180] = s2m[45] & s1po[45][0];
	assign out[181] = s2m[45] & s1po[45][1];
	assign out[182] = s2m[45] & s1po[45][2];
	assign out[183] = s2m[45] & s1po[45][3];

	assign out[184] = s2m[46] & s1po[46][0];
	assign out[185] = s2m[46] & s1po[46][1];
	assign out[186] = s2m[46] & s1po[46][2];
	assign out[187] = s2m[46] & s1po[46][3];

	assign out[188] = s2m[47] & s1po[47][0];
	assign out[189] = s2m[47] & s1po[47][1];
	assign out[190] = s2m[47] & s1po[47][2];
	assign out[191] = s2m[47] & s1po[47][3];

	assign out[192] = s2m[48] & s1po[48][0];
	assign out[193] = s2m[48] & s1po[48][1];
	assign out[194] = s2m[48] & s1po[48][2];
	assign out[195] = s2m[48] & s1po[48][3];

	assign out[196] = s2m[49] & s1po[49][0];
	assign out[197] = s2m[49] & s1po[49][1];
	assign out[198] = s2m[49] & s1po[49][2];
	assign out[199] = s2m[49] & s1po[49][3];

	assign out[200] = s2m[50] & s1po[50][0];
	assign out[201] = s2m[50] & s1po[50][1];
	assign out[202] = s2m[50] & s1po[50][2];
	assign out[203] = s2m[50] & s1po[50][3];

	assign out[204] = s2m[51] & s1po[51][0];
	assign out[205] = s2m[51] & s1po[51][1];
	assign out[206] = s2m[51] & s1po[51][2];
	assign out[207] = s2m[51] & s1po[51][3];

	assign out[208] = s2m[52] & s1po[52][0];
	assign out[209] = s2m[52] & s1po[52][1];
	assign out[210] = s2m[52] & s1po[52][2];
	assign out[211] = s2m[52] & s1po[52][3];

	assign out[212] = s2m[53] & s1po[53][0];
	assign out[213] = s2m[53] & s1po[53][1];
	assign out[214] = s2m[53] & s1po[53][2];
	assign out[215] = s2m[53] & s1po[53][3];

	assign out[216] = s2m[54] & s1po[54][0];
	assign out[217] = s2m[54] & s1po[54][1];
	assign out[218] = s2m[54] & s1po[54][2];
	assign out[219] = s2m[54] & s1po[54][3];

	assign out[220] = s2m[55] & s1po[55][0];
	assign out[221] = s2m[55] & s1po[55][1];
	assign out[222] = s2m[55] & s1po[55][2];
	assign out[223] = s2m[55] & s1po[55][3];

	assign out[224] = s2m[56] & s1po[56][0];
	assign out[225] = s2m[56] & s1po[56][1];
	assign out[226] = s2m[56] & s1po[56][2];
	assign out[227] = s2m[56] & s1po[56][3];

	assign out[228] = s2m[57] & s1po[57][0];
	assign out[229] = s2m[57] & s1po[57][1];
	assign out[230] = s2m[57] & s1po[57][2];
	assign out[231] = s2m[57] & s1po[57][3];

	assign out[232] = s2m[58] & s1po[58][0];
	assign out[233] = s2m[58] & s1po[58][1];
	assign out[234] = s2m[58] & s1po[58][2];
	assign out[235] = s2m[58] & s1po[58][3];

	assign out[236] = s2m[59] & s1po[59][0];
	assign out[237] = s2m[59] & s1po[59][1];
	assign out[238] = s2m[59] & s1po[59][2];
	assign out[239] = s2m[59] & s1po[59][3];

	assign out[240] = s2m[60] & s1po[60][0];
	assign out[241] = s2m[60] & s1po[60][1];
	assign out[242] = s2m[60] & s1po[60][2];
	assign out[243] = s2m[60] & s1po[60][3];

	assign out[244] = s2m[61] & s1po[61][0];
	assign out[245] = s2m[61] & s1po[61][1];
	assign out[246] = s2m[61] & s1po[61][2];
	assign out[247] = s2m[61] & s1po[61][3];

	assign out[248] = s2m[62] & s1po[62][0];
	assign out[249] = s2m[62] & s1po[62][1];
	assign out[250] = s2m[62] & s1po[62][2];
	assign out[251] = s2m[62] & s1po[62][3];

	assign out[252] = s2m[63] & s1po[63][0];
	assign out[253] = s2m[63] & s1po[63][1];
	assign out[254] = s2m[63] & s1po[63][2];
	assign out[255] = s2m[63] & s1po[63][3];

    // valid bit
    assign valid = s4v;

endmodule