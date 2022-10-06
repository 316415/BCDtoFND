`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 11:55:46
// Design Name: 
// Module Name: tb_BCDtoFND
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


module tb_BCDtoFND();
    reg [1:0] i_DigitSelect;
    reg i_En;
    wire [3:0] o_digit;

    FND_select_decoder dut(
        .i_DigitSelect(i_DigitSelect),
        .i_En(i_En),
        .o_digit(o_digit)
    );

    initial begin
        #00 i_En = 1'b1; i_DigitSelect = 2'b00;
        #10 i_En = 1'b1; i_DigitSelect = 2'b01;
        #10 i_En = 1'b1; i_DigitSelect = 2'b10;
        #10 i_En = 1'b1; i_DigitSelect = 2'b11;

        #10 i_En = 1'b0; i_DigitSelect = 2'b00;
        #10 i_En = 1'b0; i_DigitSelect = 2'b01;
        #10 i_En = 1'b0; i_DigitSelect = 2'b10;
        #10 i_En = 1'b0; i_DigitSelect = 2'b11;
        #10 $finish;
    end
endmodule
