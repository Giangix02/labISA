The source code has been changed only in ./src/fpnew_fma around line 326, where the component of the mantissa multiplier has been added.
The testbench used to test the mantissa multiplier is in ./tb/tb_MantMult
All the source codes of the Mantissa multiplier are included in the src folder





//compiling order
vlog -sv ./src/HA.sv
vlog -sv ./src/FA.sv
vlog -sv ./src/MUX_unit.sv
vlog -sv ./src/MUX2.sv
vlog -sv ./src/MUX3.sv
vlog -sv ./src/MUXBE.sv
vlog -sv ./src/Adder4b.sv
vlog -sv ./src/CSA3.sv
vlog -sv ./src/WT3v2.sv
vlog -sv ./src/MantissaMultiplier.sv
vlog -sv ./src/cf_math_pkg.sv
vlog -sv ./src/lzc.sv
vlog -sv ./src/rr_arb_tree.sv
vlog -sv ./src/fpnew_pkg.sv
vlog -sv ./src/fpnew_classifier.sv
vlog -sv ./src/fpnew_rounding.sv
vlog -sv ./src/fpnew_fma.sv
vlog -sv ./src/fpnew_opgroup_fmt_slice.sv
vlog -sv ./src/fpnew_opgroup_block.sv
vlog -sv ./src/fpnew_top.sv

vcom ./tb/clk_gen.vhd
vcom ./tb/data_gen16.vhd
vlog -sv ./tb/tb_fpnew_top_rtl.sv
