module tb_siso_shift_register;

parameter WIDTH = 8;

reg clk;
reg rst;
reg serial_in;
wire serial_out;

siso_shift_register #(
    .WIDTH(WIDTH)
) dut (
    .clk(clk),
    .rst(rst),
    .serial_in(serial_in),
    .serial_out(serial_out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("Time=%0t | CLK=%b | RST=%b | SERIAL_IN=%b | SHIFT_REG=%b | SERIAL_OUT=%b",
             $time,clk,rst,serial_in,dut.shift_reg,serial_out);

    rst = 1;
    serial_in = 0;
    #12;

    rst = 0;

    serial_in = 1;
    #10;

    serial_in = 0;
    #10;

    serial_in = 1;
    #10;

    serial_in = 1;
    #10;

    serial_in = 0;
    #10;

    serial_in = 0;
    #10;

    serial_in = 1;
    #10;

    serial_in = 0;
    #10;

    serial_in = 0;
    #10;

    $finish;
end

initial begin
    $dumpfile("siso_shift_register.vcd");
    $dumpvars(0,tb_siso_shift_register);
end

endmodule
