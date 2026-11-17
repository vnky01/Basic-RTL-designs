module tb_decoder_3to8;

reg en;
reg [2:0] a;
wire [7:0] y;

decoder_3to8 dut (
    .en(en),
    .a(a),
    .y(y)
);

initial begin
    $monitor("Time=%0t | EN=%b | A=%b | Y=%b", $time, en, a, y);

    en = 0;
    a = 3'b000;
    #10;

    en = 1;

    a = 3'b000;
    #10;

    a = 3'b001;
    #10;

    a = 3'b010;
    #10;

    a = 3'b011;
    #10;

    a = 3'b100;
    #10;

    a = 3'b101;
    #10;

    a = 3'b110;
    #10;

    a = 3'b111;
    #10;

    en = 0;
    a = 3'b101;
    #10;

    $finish;
end



endmodule
