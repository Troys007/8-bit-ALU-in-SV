module alu(input logic [7 : 0] a, b, input logic [1 : 0] op,
           output logic [7 : 0] y, output logic zf, cf);
logic [8:0] tmp;
always_comb begin case (op)2'b00 : tmp = a + b;
2'b01 : tmp = a - b;
2'b10 : tmp = {1'b0, a &b};
2'b11 : tmp = {1'b0, a | b};
endcase end assign y = tmp [7:0];
assign cf = tmp[8];
assign zf = (y == 8'd0);
endmodule
