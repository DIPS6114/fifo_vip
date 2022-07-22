class fifo_driver extends uvm_driver;
  
  `uvm_component_utils(fifo_driver)
  
  function new(string name="fifo_driver",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  endfunction
  
  
endclass
  
