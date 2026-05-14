package uart_pkg;

  import uvm_pkg::*;
  `include "uvm_macros.svh"


  ///////ENUM////////////////
  typedef enum bit [3:0]   {rand_baud_1_stop = 0, rand_length_1_stop = 1, length5wp = 2, length6wp = 3, length7wp = 4, length8wp = 5, length5wop = 6, length6wop = 7, length7wop = 8, length8wop = 9,rand_baud_2_stop = 11, rand_length_2_stop = 12} oper_mode;

  //////////////////////

  ///////////////////SEQUENCES//////////////

`include "rand_baud.sv"
`include "rand_baud_with_stop.sv"
`include "rand_baud_len5p.sv" 
`include "rand_baud_len6p.sv" 
`include "rand_baud_len7p.sv" 
`include "rand_baud_len8p.sv" 

`include "rrand_baud_len5.sv" 
`include "rrand_baud_len6.sv" 
`include "rrand_baud_len7.sv" 
`include "rrand_baud_len8.sv" 

  /////////////////////////////////

  //////////UVM_COMPONENTS//////////////////

  `include "transaction.sv"
   `include "driver.sv"
   `include "monitor.sv"
   `include "scoreboard.sv"
   `include "agent.sv"
   `include "env.sv"
   `include "test.sv"

  //////////////////////////
endpackage
