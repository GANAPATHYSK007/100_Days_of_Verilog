module priority_enc(input i0,input i1,input i2,input i3,input p,output reg [1:0]o );
  always@(i0 , i1 , i2 , i3 , p)
  begin
    if (p==1 & i3==1'b0 & i2==1'b0 & i1==1'b0 & i0==1'b1)
      begin
        o=2'b00;
      end
    else if (p==1 & i3==1'b0 & i2==1'b0 & i1==1'b1 & i0==1'bX)
      begin
        o=2'b01;
      end
    else if (p==1 & i3==1'b0 & i2==1'b1 & i1===1'bx & i0===1'bx)
      begin
        o=2'b10;
      end
    else if (p==1 & i3==1'b1 & i2===1'b0 & i1===1'bx & i0==1'bx)
      begin
        o=2'b11;
      end
    else
      begin
        o=2'b0x;
      end
  end
endmodule
      