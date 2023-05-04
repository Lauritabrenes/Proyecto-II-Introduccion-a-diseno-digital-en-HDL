`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 18:30:27
// Design Name: 
// Module Name: Modulo0_00
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


module Modulo0_00(
    input [12:0] bin,
    output reg [15:0] bcd
);

always @(*) begin
    case(bin)
        13'h0000: bcd = 16'h0000; // 0
        13'h0001: bcd = 16'h0001; // 1
        13'h0010: bcd = 16'h0002; // 2
        13'h0011: bcd = 16'h0003; // 3
        13'h0100: bcd = 16'h0004; // 4
        13'h0101: bcd = 16'h0005; // 5
        13'h0110: bcd = 16'h0006; // 6
        13'h0111: bcd = 16'h0007; // 7
        13'h1000: bcd = 16'h0008; // 8
        13'h1001: bcd = 16'h0009; // 9
        13'h1010: bcd = {4'h1,4'h0,4'h0,4'h0}; // 10
        13'h1011: bcd = {4'h1,4'h0,4'h0,4'h1}; // 11
        13'h1100: bcd = {4'h1,4'h0,4'h1,4'h0}; // 12
        13'h1101: bcd = {4'h1,4'h0,4'h1,4'h1}; // 13
        13'h1110: bcd = {4'h1,4'h1,4'h0,4'h0}; // 14
        13'h1111: bcd = {4'h1,4'h1,4'h0,4'h1}; // 15
        default: bcd = 16'h0000; // 0
    endcase
end

endmodule
