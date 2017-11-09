`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2017 04:02:30 PM
// Design Name: 
// Module Name: tcam_256x144
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

/*ENTITY BRAM_4x256 IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(255 DOWNTO 0)
  );
END BRAM_4x256;*/

module tcam_256x144(W, DATAOUT, clk);

    input[143:0] W;
    input clk;
    output[255:0] DATAOUT;
    
    wire[255:0] bram_dataout[0:71];
    //BRAM_4x256 bram1(clk, 1'b0, W[1:0], 256'd0, bram_dataout[0]);
    BRAM_4x256 bram1(clk, 1'b0, W[1:0], 256'd0, bram_dataout[0]);
    BRAM_4x256 bram2(clk, 1'b0, W[3:2], 256'd0, bram_dataout[1]);
    BRAM_4x256 bram3(clk, 1'b0, W[5:4], 256'd0, bram_dataout[2]);
    BRAM_4x256 bram4(clk, 1'b0, W[7:6], 256'd0, bram_dataout[3]);
    BRAM_4x256 bram5(clk, 1'b0, W[9:8], 256'd0, bram_dataout[4]);
    BRAM_4x256 bram6(clk, 1'b0, W[11:10], 256'd0, bram_dataout[5]);
    BRAM_4x256 bram7(clk, 1'b0, W[13:12], 256'd0, bram_dataout[6]);
    BRAM_4x256 bram8(clk, 1'b0, W[15:14], 256'd0, bram_dataout[7]);
    BRAM_4x256 bram9(clk, 1'b0, W[17:16], 256'd0, bram_dataout[8]);
    BRAM_4x256 bram10(clk, 1'b0, W[19:18], 256'd0, bram_dataout[9]);
    BRAM_4x256 bram11(clk, 1'b0, W[21:20], 256'd0, bram_dataout[10]);
    BRAM_4x256 bram12(clk, 1'b0, W[23:22], 256'd0, bram_dataout[11]);
    BRAM_4x256 bram13(clk, 1'b0, W[25:24], 256'd0, bram_dataout[12]);
    BRAM_4x256 bram14(clk, 1'b0, W[27:26], 256'd0, bram_dataout[13]);
    BRAM_4x256 bram15(clk, 1'b0, W[29:28], 256'd0, bram_dataout[14]);
    BRAM_4x256 bram16(clk, 1'b0, W[31:30], 256'd0, bram_dataout[15]);
    BRAM_4x256 bram17(clk, 1'b0, W[33:32], 256'd0, bram_dataout[16]);
    BRAM_4x256 bram18(clk, 1'b0, W[35:34], 256'd0, bram_dataout[17]);
    BRAM_4x256 bram19(clk, 1'b0, W[37:36], 256'd0, bram_dataout[18]);
    BRAM_4x256 bram20(clk, 1'b0, W[39:38], 256'd0, bram_dataout[19]);
    BRAM_4x256 bram21(clk, 1'b0, W[41:40], 256'd0, bram_dataout[20]);
    BRAM_4x256 bram22(clk, 1'b0, W[43:42], 256'd0, bram_dataout[21]);
    BRAM_4x256 bram23(clk, 1'b0, W[45:44], 256'd0, bram_dataout[22]);
    BRAM_4x256 bram24(clk, 1'b0, W[47:46], 256'd0, bram_dataout[23]);
    BRAM_4x256 bram25(clk, 1'b0, W[49:48], 256'd0, bram_dataout[24]);
    BRAM_4x256 bram26(clk, 1'b0, W[51:50], 256'd0, bram_dataout[25]);
    BRAM_4x256 bram27(clk, 1'b0, W[53:52], 256'd0, bram_dataout[26]);
    BRAM_4x256 bram28(clk, 1'b0, W[55:54], 256'd0, bram_dataout[27]);
    BRAM_4x256 bram29(clk, 1'b0, W[57:56], 256'd0, bram_dataout[28]);
    BRAM_4x256 bram30(clk, 1'b0, W[59:58], 256'd0, bram_dataout[29]);
    BRAM_4x256 bram31(clk, 1'b0, W[61:60], 256'd0, bram_dataout[30]);
    BRAM_4x256 bram32(clk, 1'b0, W[63:62], 256'd0, bram_dataout[31]);
    BRAM_4x256 bram33(clk, 1'b0, W[65:64], 256'd0, bram_dataout[32]);
    BRAM_4x256 bram34(clk, 1'b0, W[67:66], 256'd0, bram_dataout[33]);
    BRAM_4x256 bram35(clk, 1'b0, W[69:68], 256'd0, bram_dataout[34]);
    BRAM_4x256 bram36(clk, 1'b0, W[71:70], 256'd0, bram_dataout[35]);
    BRAM_4x256 bram37(clk, 1'b0, W[73:72], 256'd0, bram_dataout[36]);
    BRAM_4x256 bram38(clk, 1'b0, W[75:74], 256'd0, bram_dataout[37]);
    BRAM_4x256 bram39(clk, 1'b0, W[77:76], 256'd0, bram_dataout[38]);
    BRAM_4x256 bram40(clk, 1'b0, W[79:78], 256'd0, bram_dataout[39]);
    BRAM_4x256 bram41(clk, 1'b0, W[81:80], 256'd0, bram_dataout[40]);
    BRAM_4x256 bram42(clk, 1'b0, W[83:82], 256'd0, bram_dataout[41]);
    BRAM_4x256 bram43(clk, 1'b0, W[85:84], 256'd0, bram_dataout[42]);
    BRAM_4x256 bram44(clk, 1'b0, W[87:86], 256'd0, bram_dataout[43]);
    BRAM_4x256 bram45(clk, 1'b0, W[89:88], 256'd0, bram_dataout[44]);
    BRAM_4x256 bram46(clk, 1'b0, W[91:90], 256'd0, bram_dataout[45]);
    BRAM_4x256 bram47(clk, 1'b0, W[93:92], 256'd0, bram_dataout[46]);
    BRAM_4x256 bram48(clk, 1'b0, W[95:94], 256'd0, bram_dataout[47]);
    BRAM_4x256 bram49(clk, 1'b0, W[97:96], 256'd0, bram_dataout[48]);
    BRAM_4x256 bram50(clk, 1'b0, W[99:98], 256'd0, bram_dataout[49]);
    BRAM_4x256 bram51(clk, 1'b0, W[101:100], 256'd0, bram_dataout[50]);
    BRAM_4x256 bram52(clk, 1'b0, W[103:102], 256'd0, bram_dataout[51]);
    BRAM_4x256 bram53(clk, 1'b0, W[105:104], 256'd0, bram_dataout[52]);
    BRAM_4x256 bram54(clk, 1'b0, W[107:106], 256'd0, bram_dataout[53]);
    BRAM_4x256 bram55(clk, 1'b0, W[109:108], 256'd0, bram_dataout[54]);
    BRAM_4x256 bram56(clk, 1'b0, W[111:110], 256'd0, bram_dataout[55]);
    BRAM_4x256 bram57(clk, 1'b0, W[113:112], 256'd0, bram_dataout[56]);
    BRAM_4x256 bram58(clk, 1'b0, W[115:114], 256'd0, bram_dataout[57]);
    BRAM_4x256 bram59(clk, 1'b0, W[117:116], 256'd0, bram_dataout[58]);
    BRAM_4x256 bram60(clk, 1'b0, W[119:118], 256'd0, bram_dataout[59]);
    BRAM_4x256 bram61(clk, 1'b0, W[121:120], 256'd0, bram_dataout[60]);
    BRAM_4x256 bram62(clk, 1'b0, W[123:122], 256'd0, bram_dataout[61]);
    BRAM_4x256 bram63(clk, 1'b0, W[125:124], 256'd0, bram_dataout[62]);
    BRAM_4x256 bram64(clk, 1'b0, W[127:126], 256'd0, bram_dataout[63]);
    BRAM_4x256 bram65(clk, 1'b0, W[129:128], 256'd0, bram_dataout[64]);
    BRAM_4x256 bram66(clk, 1'b0, W[131:130], 256'd0, bram_dataout[65]);
    BRAM_4x256 bram67(clk, 1'b0, W[133:132], 256'd0, bram_dataout[66]);
    BRAM_4x256 bram68(clk, 1'b0, W[135:134], 256'd0, bram_dataout[67]);
    BRAM_4x256 bram69(clk, 1'b0, W[137:136], 256'd0, bram_dataout[68]);
    BRAM_4x256 bram70(clk, 1'b0, W[139:138], 256'd0, bram_dataout[69]);
    BRAM_4x256 bram71(clk, 1'b0, W[141:140], 256'd0, bram_dataout[70]);
    BRAM_4x256 bram72(clk, 1'b0, W[143:142], 256'd0, bram_dataout[71]);
    
    assign DATAOUT = bram_dataout[0] & bram_dataout[1] & bram_dataout[2] & bram_dataout[3] & bram_dataout[4] & bram_dataout[5] & bram_dataout[6] & bram_dataout[7] & bram_dataout[8] & bram_dataout[9] & bram_dataout[10] & bram_dataout[11] & bram_dataout[12] & bram_dataout[13] & bram_dataout[14] & bram_dataout[15] & bram_dataout[16] & bram_dataout[17] & bram_dataout[18] & bram_dataout[19] & bram_dataout[20] & bram_dataout[21] & bram_dataout[22] & bram_dataout[23] & bram_dataout[24] & bram_dataout[25] & bram_dataout[26] & bram_dataout[27] & bram_dataout[28] & bram_dataout[29] & bram_dataout[30] & bram_dataout[31] & bram_dataout[32] & bram_dataout[33] & bram_dataout[34] & bram_dataout[35] & bram_dataout[36] & bram_dataout[37] & bram_dataout[38] & bram_dataout[39] & bram_dataout[40] & bram_dataout[41] & bram_dataout[42] & bram_dataout[43] & bram_dataout[44] & bram_dataout[45] & bram_dataout[46] & bram_dataout[47] & bram_dataout[48] & bram_dataout[49] & bram_dataout[50] & bram_dataout[51] & bram_dataout[52] & bram_dataout[53] & bram_dataout[54] & bram_dataout[55] & bram_dataout[56] & bram_dataout[57] & bram_dataout[58] & bram_dataout[59] & bram_dataout[60] & bram_dataout[61] & bram_dataout[62] & bram_dataout[63] & bram_dataout[64] & bram_dataout[65] & bram_dataout[66] & bram_dataout[67] & bram_dataout[68] & bram_dataout[69] & bram_dataout[70] & bram_dataout[71];
        
endmodule
