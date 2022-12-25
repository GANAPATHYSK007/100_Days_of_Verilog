module FullAdder(sum,carry,x,y,z);
  input x,y,z;
  output sum,carry;
  wire w1,w2,w3;
  and(w1,x,y);
  and(w2,y,z);
  and(w3,z,x);
  or(carry,w1,w2,w3);
  xor(sum,x,y,z);
endmodule