
module tb_clock_div5_50;

reg clk;
reg rst;
wire clk_out;

clock_div5_50 dut (
    .clk(clk),
    .rst(rst),
    .clk_out(clk_out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("Time=%0t | clk=%b | rst=%b | clk_out=%b | count=%d",
             $time, clk, rst, clk_out, dut.count);

    rst = 1;
    #12;
    rst = 0;

    #200;

    $finish;
end

initial begin
    $dumpfile("clock_div5_50.vcd");
    $dumpvars(0, tb_clock_div5_50);
end

endmodule
