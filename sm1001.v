module sm1001(y,clk,reset,i);
  output reg y;
  input clk,reset,i;
  reg [0:1]ps;
  reg [0:1]ns;
  
  always@(negedge clk)
  begin
    if(reset==1'b1)
      begin
        ps=2'b00;
        ns=2'b00;
      end
    else 
      begin
        case(ps)
          2'b00:
          if(i==1'b1)
            begin
              ns=2'b01;
              y=1'b0;
            end
          else
            begin
              ns=ps;
              y=1'b0;
            end
          
          2'b01:
          if(i==1'b0)
            begin
              ns=2'b10;
              y=1'b0;
            end
          else
            begin
              ns=ps;
              y=1'b0;
            end
        
          2'b10:
          if(i==1'b0)
            begin
              ns=2'b11;
              y=1'b0;
            end
          else
            begin
              ns=2'b01;
              y=1'b0;
            end
                 
          2'b11:
          if(i==1'b1)
            begin
              ns=2'b00;
              y=1'b1;
            end
          else
            begin
              ns=2'b01;
              y=1'b0;
            end
          endcase
        end
      end
      
      always@(negedge clk)
      begin
        ps=ns;
      end
      
    endmodule
    
    
    //tst bnch
    module t_sm1001();
    wire y;
    reg clk,reset,i;  
    
       sm1001 a1(y,clk,reset,i);   
       
       always
       begin
         #10;
         clk=~clk;
       end
       
       initial
       begin
         clk=1'b0;
         reset=1'b1;
         #20;
         reset=1'b0;
         
         i=1'b1;
         #50;
         i=1'b0;
         #50;       
         i=1'b1;
         #50;
         i=1'b1;
         #50; 
         i=1'b0;
         #50;
         i=1'b0;
         #50;
         i=1'b1;
         #50;
         i=1'b1;
         #50; 
       end
     endmodule