`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2017 09:59:33 PM
// Design Name: 
// Module Name: control_unit
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

module decoder1x2(enable,in,OUT);

	input enable,in;
	output[1:0] OUT;

	assign OUT[0]=enable&(~in);
	assign OUT[1]=enable&in;

endmodule // decoder1x2

module decoder2x4(enable,IN,OUT);

	input enable;
	input[1:0] IN;
	output[3:0] OUT;

	wire[1:0] layer1_OUT;
	decoder1x2 layer1_0(enable,IN[1],layer1_OUT);

	decoder1x2 layer2_0(layer1_OUT[0],IN[0],OUT[1:0]);
	decoder1x2 layer2_1(layer1_OUT[1],IN[0],OUT[3:2]);

endmodule // decoder2x4

//takes 4 gate stages
module decoder4x16(enable,IN,OUT);

	input enable;
	input[3:0] IN;
	output[15:0] OUT;

	wire[3:0] layer1_OUT;
	decoder2x4 layer1_0(enable,IN[3:2],layer1_OUT);

	decoder2x4 layer2_0(layer1_OUT[0],IN[1:0],OUT[3:0]);
	decoder2x4 layer2_1(layer1_OUT[1],IN[1:0],OUT[7:4]);
	decoder2x4 layer2_2(layer1_OUT[2],IN[1:0],OUT[11:8]);
	decoder2x4 layer2_3(layer1_OUT[3],IN[1:0],OUT[15:12]);

endmodule // decoder4x16

module decoder5x32(enable,IN,OUT);
	
	input[4:0] IN;
	input enable;

	output[31:0] OUT;

	wire[1:0] layer1_OUT;
	decoder1x2 layer1_0(enable,IN[4],layer1_OUT);

	decoder4x16 layer2_0(layer1_OUT[0],IN[3:0],OUT[15:0]);
	decoder4x16 layer2_1(layer1_OUT[1],IN[3:0],OUT[31:16]);
	
endmodule // decoder5x32

/*ENTITY bin_cntr18 IS
  PORT (
    CLK : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END bin_cntr18;*/

module DFlipFlop8(DATAIN, DATAOUT, wea, clk);
    input[7:0] DATAIN;
    input wea, clk;
    
    output[7:0] DATAOUT;
    reg[7:0] DATAOUT;
    
    always @ (posedge clk)
    begin
        if(wea == 1'b1)
            DATAOUT <= DATAIN;           
    end
endmodule //DFlipFlop8

module control_unit(DATAIN, DATAOUT, clk);

    input[7:0] DATAIN;
    input clk;
    output[7:0] DATAOUT;
    
    wire [4:0]ctr_op;
    
    wire[31:0] DECODER_OUT;
    bin_cntr18 counter(clk, ctr_op);
    decoder5x32 d( 1'b1, ctr_op, DECODER_OUT);
    
    //wire[143:0] TCAM_IN;
    
    wire[143:0] TCAM_IN;
    //DFlipFlop8 DFF0(DATAIN, TCAM_IN[7:0], DECODER_OUT[0], clk);
    DFlipFlop8 DFF0(DATAIN, TCAM_IN[7:0], DECODER_OUT[0], clk);
    DFlipFlop8 DFF1(DATAIN, TCAM_IN[15:8], DECODER_OUT[1], clk);
    DFlipFlop8 DFF2(DATAIN, TCAM_IN[23:16], DECODER_OUT[2], clk);
    DFlipFlop8 DFF3(DATAIN, TCAM_IN[31:24], DECODER_OUT[3], clk);
    DFlipFlop8 DFF4(DATAIN, TCAM_IN[39:32], DECODER_OUT[4], clk);
    DFlipFlop8 DFF5(DATAIN, TCAM_IN[47:40], DECODER_OUT[5], clk);
    DFlipFlop8 DFF6(DATAIN, TCAM_IN[55:48], DECODER_OUT[6], clk);
    DFlipFlop8 DFF7(DATAIN, TCAM_IN[63:56], DECODER_OUT[7], clk);
    DFlipFlop8 DFF8(DATAIN, TCAM_IN[71:64], DECODER_OUT[8], clk);
    DFlipFlop8 DFF9(DATAIN, TCAM_IN[79:72], DECODER_OUT[9], clk);
    DFlipFlop8 DFF10(DATAIN, TCAM_IN[87:80], DECODER_OUT[10], clk);
    DFlipFlop8 DFF11(DATAIN, TCAM_IN[95:88], DECODER_OUT[11], clk);
    DFlipFlop8 DFF12(DATAIN, TCAM_IN[103:96], DECODER_OUT[12], clk);
    DFlipFlop8 DFF13(DATAIN, TCAM_IN[111:104], DECODER_OUT[13], clk);
    DFlipFlop8 DFF14(DATAIN, TCAM_IN[119:112], DECODER_OUT[14], clk);
    DFlipFlop8 DFF15(DATAIN, TCAM_IN[127:120], DECODER_OUT[15], clk);
    DFlipFlop8 DFF16(DATAIN, TCAM_IN[135:128], DECODER_OUT[16], clk);
    DFlipFlop8 DFF17(DATAIN, TCAM_IN[143:136], DECODER_OUT[17], clk);
    //wire[4:0] CNTR_OUT;
    
    //module tcam_256x144(W, DATAOUT, clk);
    wire[255:0] PE_IN;
    tcam_256x144 tcam(TCAM_IN, PE_IN, clk);
    
    //module priority_encoder_256bit ( in, out, valid);
    wire[255:0] ENC_IN;
    wire valid;
    priority_encoder_256bit PE(PE_IN, ENC_IN, valid);
    
    //module encoder256bit (in, out);
    wire[7:0] FINAL_DFF_IN;
    encoder256bit ENC(ENC_IN, FINAL_DFF_IN);
    
    //module DFlipFlop8(DATAIN, DATAOUT, wea, clk);
    DFlipFlop8 DFF_FINAL(FINAL_DFF_IN, DATAOUT, DECODER_OUT[1], clk);
endmodule

module cu_tb();
    
    reg[7:0] DATAIN;
    reg clk;
    
    wire[7:0] DATAOUT;
    
    control_unit cu(DATAIN, DATAOUT, clk);
    
    initial
    begin
        clk = 0;
        DATAIN = 8'b01011110;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01010111;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111; //5
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111; //10
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111; //15
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111;
        #2 DATAIN = 8'b01011111; //18
        
        #2 DATAIN = 8'b01011110;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01010111;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111; //5
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111; //10
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111; //15
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b01011111;
                #2 DATAIN = 8'b00000000;

        //#2 DATAIN = 8'b00000001;
        #10 $finish;
    end
    
    always #1 clk=~clk;
    
    initial
    begin
        $monitor($time,"DATAOUT = %b", DATAOUT);
    end
    
endmodule
