vlog -sv -work ./work ../cvfpu_lite/src/cf_math_pkg.sv
vlog -sv -work ./work ../cvfpu_lite/src/lzc.sv
vlog -sv -work ./work ../cvfpu_lite/src/rr_arb_tree.sv
vlog -sv -work ./work ../cvfpu_lite/src/fpnew_classifier.sv
vlog -sv -work ./work ../cvfpu_lite/src/fpnew_rounding.sv
vlog -sv -work ./work ../cvfpu_lite/src/fpnew_fma.sv
vlog -sv -work ./work ../cvfpu_lite/src/fpnew_opgroup_fmt_slice.sv
vlog -sv -work ./work ../cvfpu_lite/src/fpnew_opgroup_block.sv
vlog -sv -work ./work ../cvfpu_lite/src/fpnew_top.sv
vcom -work ./work ../cvfpu_lite/tb/clk_gen.vhd
vcom -work ./work ../cvfpu_lite/tb/data_gen16.vhd
vlog -work ./work ../cvfpu_lite/tb/tb_fpnew_top_rtl.v

