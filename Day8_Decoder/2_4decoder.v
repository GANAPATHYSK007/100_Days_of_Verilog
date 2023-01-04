module decoder2_4(a,b,w,x,y,z);
  input a,b;
  output reg w,x,y,z;
  always @(a or b)
  begin
    if (a==0 & b==0)
      begin 
        w=1;
        x=0;
        y=0;
        z=0;
      end
    else if (a==0 & b==1)
      begin
        w=0;
        x=1;
        y=0;
        z=0;
      end
    else if (a==1 & b==0)
      begin
        w=0;
        x=0;
        y=1;
        z=0;
      end
    else if (a==1 & b==1)
      begin
        w=0;
        x=0;
        y=0;
        z=1;
      end
    end
  endmodule
      
      