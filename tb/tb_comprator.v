module tb_comparator;
reg [2:0] a,b;
wire g,l,e;
comparator dut(g,l,e,a,b);
initial begin
    $monitor("Time=%0t | a=%d b=%d | g=%b l=%b e=%b",$time,a,b,g,l,e);

    a=3'b000; b=3'b000;
    #10;

    a=3'b101; b=3'b011;
    #10;

    a=3'b010; b=3'b110;
    #10;

    a=3'b111; b=3'b001;
    #10;

    a=3'b100; b=3'b100;
    #10;

    a=3'b001; b=3'b101;
    #10;

    $finish;
end

endmodule
