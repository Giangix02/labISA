vlog -sv ../FA.sv
vlog -sv ../HA.sv
vlog -sv ../MUX2.sv
vlog -sv ../MUX_unit.sv
vlog -sv ../MUX3.sv
vlog -sv ../CSA3.sv
vlog -sv ../Adder4b.sv
vlog -sv ../MUXBE.sv
vlog -sv ../WT3.sv
vlog -sv ../MantissaMultiplier.sv
vlog -sv ../tb_MantMult.sv
vsim work.tb_MantMult -voptargs=+acc
add wave -r /*
run 200 ns
