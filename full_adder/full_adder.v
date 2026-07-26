module full_adder (
    input a, b, cin,
    output sum, carry
);

wire c1, c2, s1;

half_adder h1 (
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
);

half_adder h2 (
    .a(s1),
    .b(cin),
    .sum(sum),
    .carry(c2)
);

Or x3 (
    .a(c1),
    .b(c2),
    .Or(carry)
);

endmodule