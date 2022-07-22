
`include "fifo_sequencer.sv"
`include "fifo_driver.sv"
`include "fifo_monitor1.sv"


class fifo_agent1 extends uvm_agent;
  
  `uvm_component_utils(fifo_agent1)
  
  fifo_sequencer sequencer;
  fifo_driver driver;
  fifo_monitor1 monitor1;
  
  
  function new(string name="fifo_env",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    sequencer=fifo_sequencer::type_id::create("sequencer",this);
    driver=fifo_driver::type_id::create("driver",this);
    monitor1=fifo_monitor1::type_id::create("monitor1",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    driver.seq_item_port.connect(sequencer.seq_item_export);
  endfunction
  
endclass
  
  
