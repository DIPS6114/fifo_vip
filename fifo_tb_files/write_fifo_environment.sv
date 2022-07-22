
`include "fifo_agent1.sv"
`include "fifo_agent2.sv"


class fifo_env extends uvm_env;
  
  `uvm_component_utils(fifo_env)
  
  fifo_agent1 agent1;
  fifo_agent2 agent2;
  //fifo_scoreboard scoreboard;
  
  function new(string name="fifo_env",uvm_component parent=null);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agent1=fifo_agent1::type_id::create("agent1",this);
    agent2=fifo_agent2::type_id::create("agent2",this);
    //scoreboard=fifo_scoreboard::type_id::create("scoreboard",this);
  endfunction
  
endclass
                                        
  
