module tb_adder;

reg a,b,cin;
wire sum,carry;

adder dut (
    .carry(carry),
    .sum(sum),
    .a(a),
    .b(b),
    .cin(cin)
);

initial begin
    $monitor("Time=%0t | A=%b B=%b CIN=%b | SUM=%b CARRY=%b",
              $time,a,b,cin,sum,carry);

    a=0; b=0; cin=0;
    #10;

    a=0; b=0; cin=1;
    #10;

    a=0; b=1; cin=0;
    #10;

    a=0; b=1; cin=1;
    #10;

    a=1; b=0; cin=0;
    #10;

    a=1; b=0; cin=1;
    #10;

    a=1; b=1; cin=0;
    #10;

    a=1; b=1; cin=1;
    #10;

    $finish;
end

endmodule
