class fifo_seq_item extends uvm sequence_item;
  
  
  `uvm_object_utils_begin(fifo_seq_item)
  `uvm_object_utils_end
  
  function new(string name="fifo_seq_item")
    super..new(name);
  endfunction
  
endclass
  
