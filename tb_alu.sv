module tb_alu;
logic [7:0] a, b, y;
logic [1:0] op;
logic cf, zf;
alu uut(.a(a), .b(b), .op(op), .y(y), .zf(zf), .cf(cf));
initial begin 
$dumpfile("hello.vcd");
$dumpvars(0, tb_alu);
a = 8'h0A;b = 8'h0F;op = 2'b00;# 10;
a = 8'h0A;b = 8'h0F;op = 2'b01;# 10;
a = 8'h0A;b = 8'h0F;op = 2'b10;# 10;
a = 8'h0A;b = 8'h0F;op = 2'b11;# 10;
$finish;
end endmodule
