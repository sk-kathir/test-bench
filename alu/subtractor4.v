module subtractor4(a,b,d);
input [3:0] a;
input [3:0] b;
output [3:0] d;
assign d = a - b;
endmodule