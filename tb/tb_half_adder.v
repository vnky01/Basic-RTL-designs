module tb_ha;

reg a,b;
wire sum,carry;

ha dut (
    .carry(carry),
    .sum(sum),
    .a(a),
    .b(b)
);

initial begin
    $monitor("Time=%0t | A=%b | B=%b | SUM=%b | CARRY=%b",
              $time,a,b,sum,carry);

    a=0; b=0;
    #10;

    a=0; b=1;
    #10;

    a=1; b=0;
    #10;

    a=1; b=1;
    #10;

    $finish;
end



endmodule
