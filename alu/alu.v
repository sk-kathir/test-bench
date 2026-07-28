module alu(a,b,sel,result);
input [3:0] a;
input [3:0] b;
input [1:0] sel;
output reg [3:0] result;
wire [3:0] s;
wire [3:0] d;
wire [3:0] AND;
wire [3:0] XOR;
adder4 ADD1 (
    .a(a),
    .b(b),
    .s(s)
);
subtractor4 SUB1 (
    .a(a),
    .b(b),
    .d(d)
);
AND AND1 (
    .a(a),
    .b(b),
    .AND(AND)
);
XOR XOR1 (
    .a(a),
    .b(b),
    .XOR(XOR)
);
always @(*) begin
    case (sel)
        2'b00: result = s;
        2'b01: result = d;
        2'b10: result = AND;
        2'b11: result = XOR;
    endcase
end
endmodule