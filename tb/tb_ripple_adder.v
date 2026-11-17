module tb_ripple_adder;

reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire carry;

ripple_adder dut (
    .carry(carry),
    .sum(sum),
    .a(a),
    .b(b),
    .cin(cin)
);

initial begin
    $monitor("Time=%0t | A=%b | B=%b | CIN=%b | SUM=%b | CARRY=%b | RESULT=%b",
             $time,a,b,cin,sum,carry,{carry,sum});

    a=4'b0000; b=4'b0000; cin=0;
    #10;

    a=4'b0011; b=4'b0101; cin=0;
    #10;

    a=4'b0111; b=4'b0001; cin=0;
    #10;

    a=4'b1111; b=4'b0001; cin=0;
    #10;

    a=4'b1010; b=4'b0101; cin=1;
    #10;

    a=4'b1111; b=4'b1111; cin=1;
    #10;

    a=4'b1000; b=4'b1000; cin=0;
    #10;

    a=4'b0110; b=4'b0011; cin=1;
    #10;

    $finish;
end



endmodule
