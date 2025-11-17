analyze -library WORK -format sverilog {codes/cf_math_pkg.sv codes/lzc.sv codes/rr_arb_tree.sv codes/fpnew_pkg.sv codes/fpnew_classifier.sv codes/fpnew_rounding.sv codes/fpnew_fma.sv codes/fpnew_opgroup_fmt_slice.sv codes/fpnew_opgroup_block.sv codes/fpnew_top.sv}
elaborate fpnew_top -architecture verilog -lib work
create_clock -name MY_CLK -period 10 clk_i
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] MY_CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]
compile_ultra
ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf ./netlist/2.2.2/fpnew_top.sdf
write -f verilog -hierarchy -output ./netlist/2.2.2/fpnew_top.v
write_sdc ./netlist/2.2.2/fpnew_top.sdc
