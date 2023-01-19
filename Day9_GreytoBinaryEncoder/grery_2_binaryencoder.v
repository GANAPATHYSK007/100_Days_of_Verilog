module grey_binary(input [3:0]i,output [3:0]y);
  assign y[3]=i[3];
  assign y[2]=i[2]^y[3];
  assign y[1]=i[1]^y[2];
  assign y[0]=i[0]^y[1];
endmodule