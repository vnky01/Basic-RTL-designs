module encoder_8to3 (
    input  wire [7:0] a,
    output reg  [2:0] y,
    output reg        valid
);

always @(*) begin
    y     = 3'b000;
    valid = 1'b0;

    case (a)
        8'b00000001: begin y = 3'b000; valid = 1'b1; end
        8'b00000010: begin y = 3'b001; valid = 1'b1; end
        8'b00000100: begin y = 3'b010; valid = 1'b1; end
        8'b00001000: begin y = 3'b011; valid = 1'b1; end
        8'b00010000: begin y = 3'b100; valid = 1'b1; end
        8'b00100000: begin y = 3'b101; valid = 1'b1; end
        8'b01000000: begin y = 3'b110; valid = 1'b1; end
        8'b10000000: begin y = 3'b111; valid = 1'b1; end
        default: begin
            y     = 3'b000;
            valid = 1'b0;
        end
    endcase
end

endmodule
