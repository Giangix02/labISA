The source code has been changed only in ./src/fpnew_fma around line 326, where the component of the mantissa multiplier has been added.
The testbench used to test the mantissa multiplier is in ./tb/tb_MantMult
All the source codes of the Mantissa multiplier are included in the src folder





//
cf_math_pkg.sv
lzc.sv
rr_arb_tree.sv
fpnew_pkg.sv
fpnew_classifier.sv
fpnew_rounding.sv
fpnew_fma.sv
fpnew_opgroup_fmt_slice.sv
fpnew_opgroup_block.sv
fpnew_top.sv

clk_gen.vhd
data_gen16.vhd
tb_fpnew_top.v
