module mux8_1using4a2_1(input [7:0]i,input [2:0]s,output y);
  wire w1,w2;
  Mux4_1 m0(i[0],i[1],i[2],i[3],s[0],s[1],w1);
  Mux4_1 m1(i[4],i[5],i[6],i[7],s[0],s[1],w2);
  mux2_1 m3(w1,w2,s[2],y);
endmodule