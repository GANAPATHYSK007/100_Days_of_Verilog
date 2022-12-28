module FullAdderHA(sum,carry,a,b,c);
  input a,b,c;
  output sum,carry;
  wire w0,w1,w2;
  HalfAdder HA0(w0,w1,a,b);
  HalfAdder HA1(sum,w2,w0,c);
  assign carry=w2|w1;
endmodule