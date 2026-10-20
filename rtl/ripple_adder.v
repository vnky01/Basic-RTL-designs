module ripple_adder(carry,sum,a,b,cin);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output carry;
  wire [2:0]w;
  adder fa0(w[0],sum[0],a[0],b[0],cin);
  adder fa1(w[1],sum[1],a[1],b[1],w[0]);
  adder fa2(w[2],sum[2],a[2],b[2],w[1]);
  adder fa3(carry,sum[3],a[3],b[3],w[2]);
endmodule
