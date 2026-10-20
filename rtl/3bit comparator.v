module comparator(g,l,e,a,b);
  input [2:0]a,b;
  ouput g,l,e; //g == greater than ; l == less than ; e == equal to
  if ( a > b) begin
    g = 1; l= 0 e = 0;
  end
  else if (a < b ) begin
    g = 0; l = 1 e = 0;
  end
  else begin
    g = 0; l = 0 e = 1;
  end
endmodule
