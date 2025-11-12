analyze -library WORK -format sverilog {codes/cf_math_pkg.sv codes/lzc.sv codes/rr_arb_tree.sv codes/fpnew_pkg.sv codes/fpnew_classifier.sv codes/fpnew_rounding.sv codes/fpnew_fma.sv codes/fpnew_opgroup_fmt_slice.sv codes/fpnew_opgroup_block.sv codes/fpnew_top.sv}
elaborate fpnew_top -architecture verilog -lib work
create_clock -name MY_CLK -period 2.5 clk_i
set_dont_touch_network MY_CLK
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] MY_CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]
ungroup -all -flatten
set_implementation DW02_mult/pparch [find cell *mult*]
compile
report_timing
