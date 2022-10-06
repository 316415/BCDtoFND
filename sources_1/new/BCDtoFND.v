`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 13:38:24
// Design Name: 
// Module Name: BCDtoFND
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


module BCDtoFND(
    input [1:0] i_DigitSelect,
    input [3:0] i_value,
    input i_En,

    output [3:0] o_digit,
    output [7:0] o_font
    );

    FND_select_decoder fnd_digit_decoder(
        .i_DigitSelect(i_DigitSelect),
        .i_En(i_En),
        .o_digit(o_digit)
    );

    BCDtoFND_decoder fnd_font_decoder(
        .i_value(i_value),
        .i_En(i_En),
        .o_font(o_font)
    );
endmodule
