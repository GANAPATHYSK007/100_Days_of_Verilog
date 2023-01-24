module dff(d,clk,rst,q,qb);
  input d,clk,rst;
  output reg q,qb;
  always@(negedge clk or negedge rst)
  if(rst == 1'b0)
    begin
      q<=1'b0;
      qb<=1'b1;
    end
  else
    begin
      q<=d;
      qb<=~d;
    end    
endmodule