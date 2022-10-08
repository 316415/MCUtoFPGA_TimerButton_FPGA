`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/07 10:33:40
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
    input [1:0] i_digit_position,
    input i_En,
    input [3:0] i_value,
    output [3:0] o_select_position,
    output [7:0] o_font
    );

    digit_select_decoder udt1(
        .i_digit_position(i_digit_position),
        .i_En(i_En),
        .o_select_position(o_select_position)
    );

    BCDtoFND_decoder udt2(
        .i_a(i_value),
        .i_En(i_En),
        .o_font(o_font)
    );
endmodule
