module Full_subr(output borrow, output difference, input a, input b, input c);
  assign difference = a^b^c;
  assign borrow = (~a&c)|(~a&b)|(b&c);
endmodule