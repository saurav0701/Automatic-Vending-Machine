module vending_machine_tb;
  reg clk;reg rst;reg [1:0]in;wire out;wire [1:0]change;
  vending_machine_thala uut(.clk(clk),.rst(rst),.in(in),.out(out),.change(change));
  
  initial begin
    $dumpfile("vending_machine_thala.vcd");
    $dumpvars(0,vending_machine_tb);
    rst=1;
    clk=0;
    
    #6 rst=0;
    in=2;
    #19 in=2;
    #25 $finish;
    
  end
  always #5clk=~clk;
  
endmodule
