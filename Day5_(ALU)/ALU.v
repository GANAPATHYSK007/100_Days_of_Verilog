module ALU(input [3:0]a,input [3:0]b,input [3:0]s,output reg [4:0]res,output reg ac);
  always @(*)
  begin
    case(s)
      4'b0000:res=a+b;//Addition
      4'b0001:res=a-b;//Subration
      4'b0010:res=a&b;//Bitwise AND
      4'b0011:res=a|b;//Bitwise OR
      4'b0100:res=!a;//Bitwise NOT A
      4'b0101:res=!b;//Bitwise NOT B 
      4'b0110:res=a>>1;//Right A shift by 1 bit
      4'b0111:res=a<<1;//left A shift by 1 bit
      4'b1001:res=b>>1;//Right B shift by 1 bit
      4'b1010:res=b<<1;//Left B shift by 1 bit
      4'b1011:res=a+1;//Increment A by 1
      4'b1100:res=b+1;//Increment A by 1
      4'b1101:res=a-1;//Decrement B by 1
      4'b1110:res=b-1;//Decrement B by 1
      4'b1111:res=0;// Otherwise result 0
    endcase
    ac=1;//othercases for values of s
  end
endmodule
  
  