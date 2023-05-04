module Modulo3_11(
    input wire [13:0] num_binario,
    output wire [3:0] siete_segmentos
);

reg [15:0] num_extendido;
reg [15:0] complemento_dos;

assign siete_segmentos = ~num_extendido[15:12] + 4'b0001;

always @(*) begin
    if (num_binario[13] == 1) begin
        num_extendido = { {2{num_binario[13]}}, num_binario };
    end else begin
        num_extendido = num_binario;
    end
    
    complemento_dos = ~num_extendido + 16'b0001;
end

endmodule