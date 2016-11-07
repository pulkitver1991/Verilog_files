module encoder_42(o,i);

output reg [0:1]o;
input [0:3]i;

always @(i)
begin
  if(i==4'b0001)
    begin
      o=2'b00;
    end
  else
    if(i==4'b0010)
    begin
      o=2'b01;
    end
   else
    if(i==4'b0100)
    begin
      o=2'b10;
    end
   else
    if(i==4'b1000)
    begin
      o=2'b11;
    end
  end
endmodule


//tst bnch

module t_encoder_42();
  
wire [0:1]o;
reg [0:3]i;

encoder_42 a1(o,i);
initial
begin
i=4'b0001;
#50;
i=4'b0010;
#50;
i=4'b0100;
#50;
i=4'b1000;
#50;
end
endmodule