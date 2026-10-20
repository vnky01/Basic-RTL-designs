module siso_shift_register #(
    parameter WIDTH = 8
)(
    input  wire clk,
    input  wire rst,
    input  wire serial_in,
    output wire serial_out
);

reg [WIDTH-1:0] shift_reg;

always @(posedge clk or posedge rst) begin
    if (rst)
        shift_reg <= {WIDTH{1'b0}};
    else
        shift_reg <= {shift_reg[WIDTH-2:0], serial_in};
end

assign serial_out = shift_reg[WIDTH-1];

endmodule
