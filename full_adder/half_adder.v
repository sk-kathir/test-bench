module half_adder (
input a, b,
output sum, carry
);
Xor x1 (
    .a(a),
    .b(b),
    .Xor(sum)
);
And x2 (
    .a(a),
    .b(b),
    .And(carry)
);
endmodule