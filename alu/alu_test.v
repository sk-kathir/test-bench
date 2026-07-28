module alu_tb;
reg [3:0] a;
reg [3:0] b;
reg [1:0] sel;
wire [3:0] result;
alu uut (
    .a(a), .b(b), .sel(sel), .result(result)
);
initial begin
    a=4'b0101;
    b=4'b0011;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    $finish;
end
initial begin
$monitor("Time=%0d, a=%b, b=%b, sel=%b, result=%b",
$time, a, b, sel, result);
end
initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0,alu_tb);
end
endmodule