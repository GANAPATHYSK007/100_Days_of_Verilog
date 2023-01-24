module jkff(j,k,clk,rst,q,qb);
  input j,k,clk,rst;
  output reg q,qb;
  always@(negedge clk or negedge rst)
  if(rst==1'b0)
    begin
      q<=1'b0;
      qb<=1'b1;
    end
  else if (j==1'b0 & k ==1'b0)
    begin
      q<=q;
      qb<=qb;
    end
  else if (j==1'b0 & k ==1'b1)
    begin
      q<=1'b0;
      qb<=1'b1;
    end
  else if (j==1'b1 & k ==1'b0)
    begin
      q<=1'b1;
      qb<=1'b0;
    end
  else if (j==1'b1 & k ==1'b1)
    begin
      q<=!q;
      qb<=!qb;
    end
endmodule
    
    
    
    