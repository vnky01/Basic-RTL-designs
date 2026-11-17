
module tb_alu;

parameter WIDTH = 32;

logic [WIDTH-1:0] a,b;
logic [3:0] alu_sel;

logic [WIDTH-1:0] result;
logic zero,carry,overflow,negative;

alu #(
    .WIDTH(WIDTH)
) dut (
    .a(a),
    .b(b),
    .alu_sel(alu_sel),
    .result(result),
    .zero(zero),
    .carry(carry),
    .overflow(overflow),
    .negative(negative)
);

initial begin

    $monitor("Time=%0t | SEL=%b | A=%h | B=%h | RESULT=%h | ZERO=%b | CARRY=%b | OVERFLOW=%b | NEGATIVE=%b",
             $time,alu_sel,a,b,result,zero,carry,overflow,negative);

    a = 32'd10; b = 32'd5;

    alu_sel = 4'b0000;
    #10;

    alu_sel = 4'b0001;
    #10;

    alu_sel = 4'b0010;
    #10;

    alu_sel = 4'b0011;
    #10;

    alu_sel = 4'b0100;
    #10;

    alu_sel = 4'b0101;
    #10;

    alu_sel = 4'b0110;
    #10;

    alu_sel = 4'b0111;
    #10;

    alu_sel = 4'b1000;
    #10;

    alu_sel = 4'b1001;
    #10;

    alu_sel = 4'b1010;
    #10;

    alu_sel = 4'b1011;
    #10;

    alu_sel = 4'b1100;
    #10;

    alu_sel = 4'b1111;
    #10;

    a = 32'h7FFFFFFF;
    b = 32'h00000001;
    alu_sel = 4'b0000;
    #10;

    a = 32'h80000000;
    b = 32'h00000001;
    alu_sel = 4'b0001;
    #10;

    a = 32'hFFFFFFFF;
    b = 32'h00000001;
    alu_sel = 4'b0000;
    #10;

    a = 32'h00000005;
    b = 32'h00000005;
    alu_sel = 4'b0001;
    #10;

    a = 32'hFFFFFFF0;
    b = 32'h00000002;
    alu_sel = 4'b1000;
    #10;

    $finish;

end

endmodule
