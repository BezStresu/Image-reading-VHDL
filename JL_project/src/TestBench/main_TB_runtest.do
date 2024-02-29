SetActiveLib -work
comp -include "$dsn\src\main.vhd" 
comp -include "$dsn\src\TestBench\main_TB.vhd" 
asim +access +r tb_read_image_vhdl
wave 

wave -noreg clock
wave -noreg data
wave -noreg rdaddress
wave -noreg wraddress
wave -noreg we
wave -noreg re
wave -noreg q		   
wave -noreg ram_block

run 10.00 ns		   

