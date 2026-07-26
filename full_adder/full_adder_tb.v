module full_adder_tb;
reg a, b, cin;
wire sum, carry;
full_adder uut (
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
$monitor("Time=%0d, a=%b, b=%b, cin=%b, carry1=%b, carry2=%b, carry=%b, sum1=%b, sum=%b",
$time, a, b, cin, uut.c1, uut.c2, carry, uut.s1, sum);
end
initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);
end
endmodule