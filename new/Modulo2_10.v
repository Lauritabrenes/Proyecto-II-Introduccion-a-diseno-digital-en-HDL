module Modulo2_10(
    input [13:0] bin,
    output reg [3:0] hex_disp
);

always @(*) begin
    case(bin)
        14'h000: hex_disp = 4'h0;
        14'h001: hex_disp = 4'h1;
        14'h010: hex_disp = 4'h2;
        14'h011: hex_disp = 4'h3;
        14'h100: hex_disp = 4'h4;
        14'h101: hex_disp = 4'h5;
        14'h110: hex_disp = 4'h6;
        14'h111: hex_disp = 4'h7;
        14'h1000: hex_disp = 4'h8;
        14'h1001: hex_disp = 4'h9;
        14'h1010: hex_disp = 4'ha;
        14'h1011: hex_disp = 4'hb;
        14'h1100: hex_disp = 4'hc;
        14'h1101: hex_disp = 4'hd;
        14'h1110: hex_disp = 4'he;
        14'h1111: hex_disp = 4'hf;
        default: hex_disp = 4'hx;
    endcase
end

endmodule