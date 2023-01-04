module encoder4_2(x,y,a,b,c,d);
  input a,b,c,d;
  output reg x,y;
  always @(a or b or c)
  begin
    if(a==1 & b==0 & c==0 & d==0)
      begin
        x=0;
        y=0;
      end
    else if (a==0 & b==1 & c==0 & d==0)
      begin
        x=0;
        y=1;
      end 
    else if (a==0 & b==0 & c==1 & d==0)
      begin
        x=1;
        y=0;
      end 
    else if (a==0 & b==0 & c==0 & d==1)
      begin
        x=1;
        y=1;
      end 
  end
endmodule