vcom -work ./work ../src/Adder.vhd
vcom -work ./work ../src/AddMultBlockV2.vhd
vcom -work ./work ../tb/clk_gen.vhd
vcom -work ./work ../tb/data_maker.vhd
vcom -work ./work ../tb/data_sink.vhd
vcom -work ./work ../src/FF.vhd
vcom -work ./work ../src/Mult.vhd
vcom -work ./work ../src/myfir.vhd
vcom -work ./work ../src/REG11B.vhd
vlog -sv -work ./work ../tb/tb_fir.sv
vsim work.tb_fir -voptargs=+acc
add wave *
run 100ns
