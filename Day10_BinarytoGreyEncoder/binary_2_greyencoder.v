module binary_grey(input [3:0]i,output [3:0]y);
  assign y[3]=i[3];
  assign y[2]=i[3]^i[2];
  assign y[1]=i[2]^i[1];
  assign y[0]=i[1]^i[0];
endmodule