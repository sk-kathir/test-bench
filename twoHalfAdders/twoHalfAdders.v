module twoHalfAdders (
    input a, b, cin,
    output sum, carry
);
wire sum1, carry1, carry2;
assign sum1 = a^b;
assign carry1 = a&b;
assign sum = sum1^cin;
assign carry2 = sum1&cin;
assign carry = carry1|carry2;
endmodule