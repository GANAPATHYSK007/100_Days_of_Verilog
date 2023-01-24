module srflipflop(s,r,clk,rst,q,qb);
  input s,r,clk,rst;
  output reg q,qb;
  always@(posedge clk or posedge rst)
  begin
    if(rst == 1)
      begin
        q<=0;
        qb<=1;
      end
    else
      if(s==0 & r==0)
        begin
          q<=q;
          qb<=qb;
        end
      else if(s==0 & r==1)
        begin
          q<=1'b0;
          qb<=1'b1;
        end
      else if(s==1 & r==0)
        begin
          q<=1'b1;
          qb<=1'b0;
        end
      else if(s==1 & r==1)
        begin
          q<=1'bz;
          qb<=1'bz;
        end
  end
endmodule
        