module ripple_adder(carry,sum,a,b,cin);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output carry;
  wire [2:0]w;
  
