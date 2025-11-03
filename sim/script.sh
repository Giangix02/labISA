#!/bin/bash

source /eda/scripts/init_questa_core_prime
vcom -work ./work ../src/Adder.vhd
vcom -work ./work ../src/AddMultBlockV2.vhd
vcom -work ./work ../src/Mult.vhd
vcom -work ./work ../src/FF.vhd
vcom -work ./work ../src/REG11B.vhd
vcom -work ./work ../tb/data_sink.vhd
vcom -work ./work ../tb/data_maker.vhd
#vcom -work ./work ../V1/FIR_UNF.vhd
vcom -work ./work ../tb/clk_gen.vhd
vlog -work ./work ../netlist/myfir.v
vlog -sv -work ./work ../tb/tb_fir.sv
vsim -L /eda/dk/nangate45/verilog/qsim2020.4 -sdftyp /tb_fir/UUT=../netlist/myfir.sdf work.tb_fir
#vsim -L /eda/dk/nangate45/verilog/qsim2020.4 work.tb_fir



