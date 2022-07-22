import uvm_pkg::*;
`include "uvm_macros.svh"
`include "fifo_test.sv"



module tb_top();
  
  bit clk;
  bit rst;
  
  always #5 clk=~clk;
  
  initial begin
    rst=1;
    #5 rst=0;
  end
  
  
  
  initial begin
    run_test("fifo_test");
  end
  
  
endmodule
