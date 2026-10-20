module clock_div5_50 (
    input  wire clk,
    input  wire rst,
    output reg  clk_out
);

reg [2:0] count;

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 3'd0;
    else if (count == 3'd4)
        count <= 3'd0;
    else
        count <= count + 1'b1;
end

always @(posedge clk or negedge clk or posedge rst) begin
    if (rst)
        clk_out <= 1'b0;
    else if (count == 3'd0)
        clk_out <= ~clk_out;
end

endmodule
