module dff(clk,rst,d,qout);
  input clk,rst;
  input d;
  output qout;
  always @ ( posedge clk) begin
    if(rst)
      qout<=1'b0;
    else
      qout <= d;
  end
endmodule
