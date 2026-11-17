module tb_register;

parameter width = 8;

reg clk,rst;
reg [width-1:0] d;
wire [width-1:0] q;

register #(
    .width(width)
) dut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("Time=%0t | CLK=%b | RST=%b | D=%h | Q=%h",
              $time,clk,rst,d,q);

    rst = 1;
    d = 8'h00;
    #12;

    rst = 0;
    d = 8'hA5;
    #10;

    d = 8'h3C;
    #10;

    d = 8'hFF;
    #10;

    d = 8'h55;
    #10;

    rst = 1;
    #10;

    rst = 0;
    d = 8'hF0;
    #10;

    $finish;
end



endmodule
