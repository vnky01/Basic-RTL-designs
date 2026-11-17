module tb_dff;

reg clk,rst,d;
wire qout;

dff dut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .qout(qout)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("Time=%0t | clk=%b | rst=%b | d=%b | qout=%b",
              $time,clk,rst,d,qout);

    rst = 1;
    d = 0;
    #12;

    rst = 0;
    d = 1;
    #10;

    d = 0;
    #10;

    d = 1;
    #10;

    d = 1;
    #10;

    rst = 1;
    #10;

    rst = 0;
    d = 0;
    #10;

    $finish;
end


endmodule
