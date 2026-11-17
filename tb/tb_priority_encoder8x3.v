module tb_priority_encoder_8to3;

reg [7:0] a;
wire [2:0] y;
wire valid;

priority_encoder_8to3 dut (
    .a(a),
    .y(y),
    .valid(valid)
);

initial begin
    $monitor("Time=%0t | A=%b | Y=%b | VALID=%b",
              $time,a,y,valid);

    a = 8'b00000000;
    #10;

    a = 8'b00000001;
    #10;

    a = 8'b00000010;
    #10;

    a = 8'b00000100;
    #10;

    a = 8'b00001000;
    #10;

    a = 8'b00010000;
    #10;

    a = 8'b00100000;
    #10;

    a = 8'b01000000;
    #10;

    a = 8'b10000000;
    #10;

    a = 8'b00000101;
    #10;

    a = 8'b00101000;
    #10;

    a = 8'b11000011;
    #10;

    a = 8'b11111111;
    #10;

    $finish;
end


endmodule
