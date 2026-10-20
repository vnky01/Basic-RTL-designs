module adder(carry,sum,a,b,cin);
  input a,b,cin;
  output sum,carry;
  assign sum=a^b^cin;
  assign carry= a&b | b&c | c&a;
endmodule
