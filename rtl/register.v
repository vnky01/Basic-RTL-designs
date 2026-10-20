module register #( parameter width  = 8) ( input clk, input rst, input [width-1 : 0]d,output [width-1:0]q);
  always @(posedge clk ) begin
    if(rst)
      q <= {width{1'b0}};
    else
      q <= d;
  end
endmodule
