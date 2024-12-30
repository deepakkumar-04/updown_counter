module updown_rtl(input clk, reset,up_down, output[3:0]  counter);
  reg [3:0] counter_updown;
  always @(posedge clk or posedge reset)
  begin
    if(reset)
       counter_updown <= 4'h0;
    else if(~up_down)
       counter_updown <= counter_updown + 4'd1;
    else
       counter_updown <= counter_updown - 4'd1;
    end 
    assign counter = counter_updown;
endmodule
