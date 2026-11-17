module tb_single_port_ram;

parameter DATA_WIDTH = 8;
parameter ADDR_WIDTH = 4;

reg clk;
reg we;
reg [ADDR_WIDTH-1:0] addr;
reg [DATA_WIDTH-1:0] din;
wire [DATA_WIDTH-1:0] dout;

single_port_ram #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
) dut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("Time=%0t | CLK=%b | WE=%b | ADDR=%d | DIN=%h | DOUT=%h",
             $time,clk,we,addr,din,dout);

    we = 1;
    addr = 0;
    din = 8'hA5;
    #10;

    addr = 1;
    din = 8'hB6;
    #10;

    addr = 2;
    din = 8'hC7;
    #10;

    addr = 3;
    din = 8'hD8;
    #10;

    we = 0;
    addr = 0;
    #10;

    addr = 1;
    #10;

    addr = 2;
    #10;

    addr = 3;
    #10;

    addr = 4;
    #10;

    $finish;
end



endmodule
