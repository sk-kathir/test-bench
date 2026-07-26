module twoHalfAddersTest;
reg a, b, cin;
wire sum, carry;
twoHalfAdders uut (
    .a(a), .b(b), .cin(cin), .sum(sum), .carry(carry)
);
initial begin
a=0; b=0; cin=0; #10;
a=0; b=0; cin=1; #10;
a=0; b=1; cin=0; #10;
a=0; b=1; cin=1; #10;
a=1; b=0; cin=0; #10;
a=1; b=0; cin=1; #10;
a=1; b=1; cin=0; #10;
a=1; b=1; cin=1; #10;
$finish;
end
initial begin
$monitor("Time=%0d, a=%b, b=%b, cin=%b, carry1=%b, carry2=%b, carry=%b, sum1=%b, sum=%b", $time, a, b, cin, uut.carry1, uut.carry2, carry, uut.sum1, sum);
end
initial begin
    $dumpfile("twoHalfAdders.vcd");
    $dumpvars(0,twoHalfAddersTest);
end
endmodule