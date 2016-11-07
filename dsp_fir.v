module dsp_fir (y,clk,x);
  input signed [0:15]x;  
  input clk;                               
  output reg signed [0:15]y;     
  reg [0:15]x0;
  reg [0:15]x1;
  reg [0:15]x2;
 always @ (negedge clk) 
 begin
   y <=  (x0)/2 + x1 + (x2)/3;  //y[n]
   x2 <= x1;                  //x[n-2]
   x1 <= x0;                    //x[n-1]
   x0 <= x;                    //x[n]
end

endmodule
