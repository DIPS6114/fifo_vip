class fifo_monitor1 extends uvm_monitor;
  
  `uvm_component_utils(fifo_monitor1)
  
  function new(string name="fifo_monitor1",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction
  
endclass
