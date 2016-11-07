module cos_fn (y,x);
  output [0:7]y;
  input [0:7]x;
  
assign y = ((8'd1)-((x)**2)/8'd2+((x**4))/8'd24);
endmodule