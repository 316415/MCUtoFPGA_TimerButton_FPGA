`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/07 09:48:53
// Design Name: 
// Module Name: digit_select_decoder
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


module digit_select_decoder(
    input [1:0] i_digit_position,
    input i_En,
    output [3:0] o_select_position
    );

    reg [3:0] r_select_position;
    assign o_select_position = r_select_position;
    
    always @(i_digit_position or i_En) begin
        if (i_En) begin
            r_select_position = 4'b1111;
        end
        else begin
            case (i_digit_position)
                2'b00 : r_select_position = 4'b1110;
                2'b01 : r_select_position = 4'b1101;
                2'b10 : r_select_position = 4'b1011;
                2'b11 : r_select_position = 4'b0111;
            endcase
        end
    end
endmodule
