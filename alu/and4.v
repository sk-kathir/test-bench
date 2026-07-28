module AND(a,b,AND);
input [3:0] a;
input [3:0] b;
output [3:0] AND;
assign AND = a&b;
endmodule