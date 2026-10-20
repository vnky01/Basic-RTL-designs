module ha(carry,sum,a,b);
  input a,b;
  output carry,sum;
  xor (sum,a,b);
  and (carry,a,b);
endmodule
