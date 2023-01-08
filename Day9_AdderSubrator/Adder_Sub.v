module AdderSub(output res1,output [3:0]res0,input [3:0]a,input [3:0]b,input s);
  wire [3:0]c;wire [3:0]sum;wire c01,sum0;wire [3:0]i;
  assign c[0]=b[0]^s;
  assign c[1]=b[1]^s;
  assign c[2]=b[2]^s;
  assign c[3]=b[3]^s;
  RCAdder RC1(sum,c01,a,c,s);
  assign res1=~c01&s;
  assign sum0=c01^s;
  assign i[0]=sum[0]^res1;
  assign i[1]=sum[1]^res1;
  assign i[2]=sum[2]^res1;
  assign i[3]=sum[3]^res1;
  RCAdder RC2(res0,dummy,4'b000,i,res1);
endmodule