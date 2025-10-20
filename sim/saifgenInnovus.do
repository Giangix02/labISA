source /eda/scripts/init_questa_core_prime
vcom -work ./work ../tb/clk_gen.vhd
vcom -work ./work ../tb/data_maker.vhd
vcom -work ./work ../tb/data_sink.vhd
vlog -work ./work ../innovus/myfir.v
vlog -sv -work ./work ../tb/tb_fir.sv
vsim -L /eda/dk/nangate45/verilog/qsim2020.4 -sdftyp /tb_fir/UUT=../innovus/myfir.sdf work.tb_fir
vcd file ../vcd/design.vcd
vcd add /tb_fir/UUT/*
run 40 us
