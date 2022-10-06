`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 13:27:08
// Design Name: 
// Module Name: tb_BCDtoFND_decoder
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


module tb_BCDtoFND_decoder();
    reg [3:0] i_value;
    reg i_En;
    reg [1:0] i_DigitSelect;
    
    wire [3:0] o_digit;
    wire [7:0] o_font;

    FND_select_decoder dut(
        .i_DigitSelect(i_DigitSelect),
        .i_En(i_En),
        .o_digit(o_digit)
    );

    BCDtoFND_decoder dut1(
        .i_value(i_value),
        .i_En(i_En),
        .o_font(o_font)
    );

    initial begin
        #00 i_DigitSelect = 2'b00; i_En = 1'b1;
        #10 i_DigitSelect = 2'b01; i_En = 1'b1;
        #10 i_DigitSelect = 2'b10; i_En = 1'b1;
        #10 i_DigitSelect = 2'b11; i_En = 1'b1;

        #10 i_DigitSelect = 2'b01; i_En = 1'b0; i_value = 4'h0;
        #10 i_DigitSelect = 2'b01; i_En = 1'b0; i_value = 4'h6;
        #10 i_DigitSelect = 2'b01; i_En = 1'b0; i_value = 4'h7;
        #10 i_DigitSelect = 2'b01; i_En = 1'b0; i_value = 4'h9;
        #10 i_DigitSelect = 2'b01; i_En = 1'b0; i_value = 4'h8;
        #10 i_DigitSelect = 2'b01; i_En = 1'b0; i_value = 4'h4;
        #10 $finish;
    end

endmodule
