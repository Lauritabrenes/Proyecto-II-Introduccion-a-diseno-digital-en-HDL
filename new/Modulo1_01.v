module Modulo1_01(
  input [11:0] bin_in,
  output [7:0] bcd_out
);

  reg [7:0] bcd_temp;
  reg [3:0] bin_temp;

  always @* begin
    bin_temp = bin_in[11:8];
    if (bin_temp > 4) bcd_temp[3:0] = bin_temp - 3;
    else bcd_temp[3:0] = bin_temp;
    
    bin_temp = bin_in[7:4];
    if (bin_temp > 4) bcd_temp[7:4] = bin_temp - 3;
    else bcd_temp[7:4] = bin_temp;
  end
  
  assign bcd_out = bcd_temp;
  
endmodule
