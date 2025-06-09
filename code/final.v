module final(clk,reset,sw,led,outa,outb,outc,outd);
input clk;
input [4:0]sw;
input reset;
output [4:0]led;
output [7:0]outa,outb,outc,outd;

wire[4:0]score;
wire[4:0]result;
wire timer_clk_out;
wire[5:0]counter_out;

timerclock(clk,timer_clk_out);
timercount(clk,reset,counter_out);
game(clk,sw,reset,led,score,counter_out);
assign result =(score>0)?score:result;
wire c=(result>9)?1:0;
wire c2=(counter_out>9)?1:0;

seg (c2,outa);
seg (counter_out,outb);
seg (c,outc);
seg (result,outd);

endmodule


module game(clk,sw,reset,led,score,counter_out);
   input clk;
   input [4:0]sw;
   input reset;
   output reg [4:0]led;
   output reg [4:0]score;
   input[5:0]counter_out;
         
   localparam  
   S0 = 0,
   S1 = 1,
   S2 = 2,
   S3 = 3,
   S4 = 4,
   S5 = 5,
   S6 = 6,
   S7 = 7,
   S8 = 8,
   S9 = 9,
   S10 = 10,
   S11 = 11,
   S12 = 12,
   S13 = 13,
   S14 = 14,
   S15 = 15;
    
   reg [3:0] current_state = 0;
   reg [3:0] next_state = 0;
   
   always @(posedge clk)begin
   if(reset==0)
     current_state <= S0;
     else if (counter_out==0)
      current_state <= 14;
   else
     current_state <= next_state;
   
   end 
    
   always @(current_state,sw[4:0])begin
   case(current_state)
   
   S0: begin
   next_state<=S0;
   led[4:0]<=0;
   score<=4'h0;
   //result<=4'h0;
   led[1]<=1;
      if (sw[1])
        next_state<=S1;
      else
        next_state<=S0;
        
   end
   
   S1: begin
   score=4'h1;
   led[4:0]<=0;
   led[3]<=1;
      if (sw[3])  
        next_state<=S2;
      else
        next_state<=S1;
        
   end
   
   S2: begin
   score=4'h2;
   led[4:0]<=0;
   led[2]<=1;
      if (sw[2])
        next_state<=S3;
      else
        next_state<=S2;
        
   end
   
   S3: begin
   score=4'h3;
   led[4:0]<=0;
   led[0]<=1;
      if (sw[0])
        next_state<=S4;
      else
        next_state<=S3;
        
   end
   
   S4: begin
   score=4'h4;
   led[4:0]<=0;
   led[4]<=1;
      if (sw[4])
        next_state<=S5;
      else
        next_state<=S4;
        
   end
   
   S5: begin
   score=4'h5;
   led[4:0]<=0;
   led[0]<=1;
      if (sw[0])
        next_state<=S6;
      else
        next_state<=S5;
        
   end
   
   S6: begin
   score<=4'h6;
   led[4:0]<=0;
   led[1]<=1;
      if (sw[1])
        next_state<=S7;
      else
        next_state<=S6;
        
   end
   
   S7: begin
   score<=4'h7;
   led[4:0]<=0;
   led[4]<=1;
      if (sw[4])
        next_state<=S8;
      else
        next_state<=S7;
        
   end
   
   S8: begin
   score<=4'h8;
   led[4:0]<=0;
   led[2]<=1;
      if (sw[2])
        next_state<=S9;
      else
        next_state<=S8;
        
   end
   
   S9: begin
   score<=4'h9;
   led[4:0]<=0;
   led[3]<=1;
      if (sw[3])
        next_state<=S10;
      else
        next_state<=S9;
        
   end
   
   S10: begin
   score<=4'ha;
   led[4:0]<=0;
   led[2]<=1;
      if (sw[2])
        next_state<=S11;
      else
        next_state<=S10;
        
   end
   
   S11: begin
   score<=4'hb;
   led[4:0]<=0;
   led[4]<=1;
      if (sw[4])
        next_state<=S12;
      else
        next_state<=S11;
        
   end
   
   S12: begin
   score<=4'hc;
   led[4:0]<=0;
   led[0]<=1;
      if (sw[0])
        next_state<=S13;
      else
        next_state<=S12;
        
   end
      
   S13: begin
   next_state<=S14;
   score<=4'hd;
   led[4:0]<=0;
        
   end
   
   S14: begin
   next_state<=S14;
   led[4:0]<=0;
   
   end
   
  default: begin
     next_state = S0;
     score=score;
  end
   
   endcase
   
      
   end 

endmodule
 

module timercount(clk,reset,count);
input clk;
input reset;
output [5:0]count;

wire clk_out;
timerclock c(clk,clk_out);

reg [5:0]current_count =15;
always @(posedge clk_out)begin
   if(reset==0)
     current_count <= 15;
   else if(current_count==0)
     current_count <= current_count;
   else if(current_count>=1)
     current_count <= current_count-1;
   else
     current_count <= current_count;
     
   end
   
   assign count = current_count;
 
 endmodule
 
 
module timerclock(clk_in,clk_out);
input clk_in;
output reg clk_out;

reg[27:0]period_count=0;

always @(posedge clk_in)
   if(period_count != 50_000_000 -1)
     begin
     period_count<=period_count+1;
     clk_out<=0;
     end
     
   else
     begin
     period_count<=0;
     clk_out<=1;
     end
     
endmodule


module seg(in,out);    
input [3:0]in;
output reg [7:0]out;  

always@(in)begin
case(in)
	4'h0 , 4'ha :
	out<=8'b11000000;
	4'h1 , 4'hb:
	out<=8'b11111001;
	4'h2 , 4'hc:
	out<=8'b10100100;
	4'h3 , 4'hd:
	out<=8'b10110000;
	4'h4 , 4'he:
	out<=8'b10011001;
	4'h5 , 4'hf:
	out<=8'b10010010;
	4'h6 ,16 :
	out<=8'b10000010;
	4'h7 ,17:
	out<=8'b11011000;
	4'h8 ,18:
	out<=8'b10000000;	
	4'h9 ,19:
	out<=8'b10011000;
	endcase
	end
endmodule
     
   
     


