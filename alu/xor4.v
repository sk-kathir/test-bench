module XOR(a,b,XOR);
input [3:0] a;
input [3:0] b;
output [3:0] XOR;
assign XOR = a^b;
endmodule