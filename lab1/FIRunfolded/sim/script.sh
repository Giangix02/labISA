#!/bin/bash

source /eda/scripts/init_questa_core_prime
vcom -work ./work ../V1/Adder.vhd
vcom -work ./work ../V1/addMult.vhd
vcom -work ./work ../V1/jSeries.vhd
vcom -work ./work ../V1/Mult_rounded.vhd
vcom -work ./work ../V1/FF.vhd
vcom -work ./work ../V1/REG11B.vhd
vcom -work ./work ../V1/data_sink.vhd
vcom -work ./work ../V1/data_maker.vhd
vcom -work ./work ../V1/FIR_UNF.vhd
vcom -work ./work ../V1/clk_gen.vhd
#vlog -work ./work ../netlist/FIR_UNF.v
vlog -sv -work ./work ../V1/tb_fir.sv
vsim -L /eda/dk/nangate45/verilog/qsim2020.4 work.tb_fir
#vsim -L /eda/dk/nangate45/verilog/qsim2020.4 -sdftyp /tb_fir/UUT=../netlist/FIR_UNF.sdf work.tb_fir



