module RCAdder(output [3:0]sum,output carry,input [3:0]a,input [3:0]b);
  wire [2:0]ca;
  FulladderB fa0(sum[0],ca[0],a[0],b[0],1'b0);
  FulladderB fa1(sum[1],ca[1],a[1],b[1],ca[0]);
  FulladderB fa2(sum[2],ca[2],a[2],b[2],ca[1]);
  FulladderB fa3(sum[3],carry,a[3],b[3],ca[2]);
endmodule