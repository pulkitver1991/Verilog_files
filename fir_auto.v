module fir_auto(y,clk,b,x,n);
  
  output reg [0:10]y=8'b0;
  input clk;
  input [0:3]x;
  input [0:3]b;
  input [0:7]n;
  reg [0:3]x0[1:10];
  reg [0:3]b0[1:10];
  reg [0:7]i=8'b0;
  reg [0:7]y1[1:10];
  
  always @(negedge clk)
  begin
    
    for(i=n;i>0;i=i-1)
    begin
     b0[i]=b0[i-1];
    end
    for(i=n;i>0;i=i-1)
    begin
     x0[i]=x0[i-1]; 
    end
    
    x0[1]= x;
    b0[1]= b;
    
    for(i=n;i>0;i=i-1)
     begin
      y1[i]=((b0[i]*x0[i]));
     end
   end
   
   always@(negedge y1[n] or posedge y1[n])
   begin
     for(i=1;i<=n;i=i+1)
     begin
       y=y1[i]+y;
     end
    end
endmodule
