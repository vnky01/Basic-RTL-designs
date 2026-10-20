module alu #(
    parameter WIDTH = 32
)(
    input  logic [WIDTH-1:0] a,
    input  logic [WIDTH-1:0] b,
    input  logic [3:0]       alu_sel,

    output logic [WIDTH-1:0] result,
    output logic             zero,
    output logic             carry,
    output logic             overflow,
    output logic             negative
);

    logic [WIDTH:0] temp;

  always@(*) begin
        result   = '0;
        carry    = 1'b0;
        overflow = 1'b0;
        temp     = '0;

        case (alu_sel)

            4'b0000: begin
                temp   = {1'b0, a} + {1'b0, b};
                result = temp[WIDTH-1:0];
                carry  = temp[WIDTH];
            end

            4'b0001: begin
                temp   = {1'b0, a} - {1'b0, b};
                result = temp[WIDTH-1:0];
                carry  = temp[WIDTH];
            end

            4'b0010: begin
                result = a & b;
            end

            4'b0011: begin
                result = a | b;
            end

            4'b0100: begin
                result = a ^ b;
            end

            4'b0101: begin
                result = ~a;
            end

            4'b0110: begin
                result = a << b;
            end

            4'b0111: begin
                result = a >> b;
            end

            4'b1000: begin
                result = $signed(a) >>> b;
            end

            4'b1001: begin
                result = ($signed(a) < $signed(b)) ? {{(WIDTH-1){1'b0}}, 1'b1} : '0;
            end

            4'b1010: begin
                result = (a < b) ? {{(WIDTH-1){1'b0}}, 1'b1} : '0;
            end

            4'b1011: begin
                result = a;
            end

            4'b1100: begin
                result = b;
            end

            default: begin
                result = '0;
            end

        endcase

        zero     = (result == '0);
        negative = result[WIDTH-1];

        if (alu_sel == 4'b0000) begin
            overflow = (~(a[WIDTH-1] ^ b[WIDTH-1])) &
                       (result[WIDTH-1] ^ a[WIDTH-1]);
        end
        else if (alu_sel == 4'b0001) begin
            overflow = (a[WIDTH-1] ^ b[WIDTH-1]) &
                       (result[WIDTH-1] ^ a[WIDTH-1]);
        end
    end

endmodule
