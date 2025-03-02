`include "fifo_env.sv"

class fifo_test extends uvm_test;
  
  `uvm_component_utils(fifo_test)
  
  
  fifo_env env;
  
  function new(string name="fifo_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env=fifo_env::type_id::create("env",this);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction
  
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    
    phase.drop_objection(this);
    #100;
  endtask
  
endclass
  
