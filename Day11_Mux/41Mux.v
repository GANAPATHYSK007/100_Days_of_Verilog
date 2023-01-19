module Mux4_1(i0,i1,i2,i3,s0,s1,o);
  input i0,i1,i2,i3,s0,s1;
  output o;
  assign o=(~s0&~s1&i0)|(~s0&s1&i1)|(s0&~s1&i2)|(s0&s1&i3);
endmodule