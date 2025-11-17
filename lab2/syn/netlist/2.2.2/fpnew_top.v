/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Mon Nov 17 15:29:06 2025
/////////////////////////////////////////////////////////////


module fpnew_top ( clk_i, rst_ni, operands_i, rnd_mode_i, op_i, op_mod_i, 
        src_fmt_i, dst_fmt_i, int_fmt_i, vectorial_op_i, tag_i, in_valid_i, 
        in_ready_o, flush_i, result_o, tag_o, out_valid_o, out_ready_i, busy_o, 
        status_o_NV_, status_o_DZ_, status_o_OF_, status_o_UF_, status_o_NX_
 );
  input [47:0] operands_i;
  input [2:0] rnd_mode_i;
  input [3:0] op_i;
  input [2:0] src_fmt_i;
  input [2:0] dst_fmt_i;
  input [1:0] int_fmt_i;
  output [15:0] result_o;
  input clk_i, rst_ni, op_mod_i, vectorial_op_i, tag_i, in_valid_i, flush_i,
         out_ready_i;
  output in_ready_o, tag_o, out_valid_o, busy_o, status_o_NV_, status_o_DZ_,
         status_o_OF_, status_o_UF_, status_o_NX_;
  wire   gen_operation_groups_0__i_opgroup_block_fmt_outputs_4__tag_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N309,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__mantissa__6_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__exponent__7_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sticky_q_1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__3_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__4_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__3_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__4_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__5_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__6_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__7_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__8_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__3_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__4_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__5_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__6_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__7_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__8_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__9_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__3_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__4_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__9_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_tag_q_1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__3_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__4_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__5_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__15_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__4_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__5_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__6_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__10_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__11_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__15_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__15_,
         C178_DATA3_1, C178_DATA3_2, C178_DATA3_3, C178_DATA3_4, C178_DATA3_5,
         C178_DATA3_6, C178_DATA3_7, C178_DATA3_8, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n899,
         n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910,
         n911, n912, n913, n914, n915, n916, n917, n918, n919, n920, n921,
         n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, n932,
         n933, n934, n936, n937, n939, n940, n941, n942, n943, n944, n945,
         n946, n947, n948, n949, n950, n951, n952, n953, n954, n955, n956,
         n957, n958, n959, n960, n961, n962, n963, n964, n965, n966, n967,
         n968, n969, n970, n971, n972, n973, n974, n975, n976, n977, n978,
         n979, n980, n981, n982, n983, n984, n985, n986, n987, n988, n989,
         n990, n991, n992, n993, n994, DP_OP_218J1_126_2335_n9,
         DP_OP_218J1_126_2335_n8, DP_OP_218J1_126_2335_n7,
         DP_OP_218J1_126_2335_n6, DP_OP_218J1_126_2335_n5,
         DP_OP_218J1_126_2335_n4, DP_OP_218J1_126_2335_n3,
         DP_OP_218J1_126_2335_n2, intadd_0_A_15_, intadd_0_A_14_,
         intadd_0_A_13_, intadd_0_A_12_, intadd_0_A_11_, intadd_0_A_10_,
         intadd_0_A_9_, intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_,
         intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_,
         intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_15_, intadd_0_B_14_,
         intadd_0_B_13_, intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_,
         intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_,
         intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_15_,
         intadd_0_SUM_14_, intadd_0_SUM_13_, intadd_0_SUM_12_,
         intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_, intadd_0_SUM_8_,
         intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_, intadd_0_SUM_4_,
         intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_, intadd_0_SUM_0_,
         intadd_0_n16, intadd_0_n15, intadd_0_n14, intadd_0_n13, intadd_0_n12,
         intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_11_, intadd_1_A_10_, intadd_1_A_9_,
         intadd_1_A_8_, intadd_1_A_7_, intadd_1_A_6_, intadd_1_A_5_,
         intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_,
         intadd_1_A_0_, intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI,
         intadd_1_SUM_11_, intadd_1_SUM_10_, intadd_1_SUM_9_, intadd_1_SUM_8_,
         intadd_1_SUM_7_, intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_,
         intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n12, intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8,
         intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, intadd_2_A_7_, intadd_2_A_6_, intadd_2_A_5_,
         intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_, intadd_2_A_1_,
         intadd_2_A_0_, intadd_2_B_6_, intadd_2_B_5_, intadd_2_B_4_,
         intadd_2_B_3_, intadd_2_B_2_, intadd_2_B_1_, intadd_2_B_0_,
         intadd_2_CI, intadd_2_SUM_7_, intadd_2_SUM_6_, intadd_2_SUM_5_,
         intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_,
         intadd_2_SUM_0_, intadd_2_n8, intadd_2_n7, intadd_2_n6, intadd_2_n5,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, intadd_3_B_5_,
         intadd_3_B_4_, intadd_3_B_3_, intadd_3_B_2_, intadd_3_B_1_,
         intadd_3_B_0_, intadd_3_CI, intadd_3_SUM_5_, intadd_3_SUM_4_,
         intadd_3_SUM_3_, intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_,
         intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, intadd_4_A_3_, intadd_4_A_2_, intadd_4_A_1_,
         intadd_4_A_0_, intadd_4_B_3_, intadd_4_B_2_, intadd_4_B_1_,
         intadd_4_B_0_, intadd_4_CI, intadd_4_SUM_2_, intadd_4_SUM_1_,
         intadd_4_SUM_0_, intadd_4_n4, intadd_4_n3, intadd_4_n2, intadd_4_n1,
         intadd_5_A_3_, intadd_5_A_2_, intadd_5_A_1_, intadd_5_A_0_,
         intadd_5_B_2_, intadd_5_B_1_, intadd_5_B_0_, intadd_5_CI,
         intadd_5_SUM_2_, intadd_5_SUM_1_, intadd_5_SUM_0_, intadd_5_n4,
         intadd_5_n3, intadd_5_n2, intadd_5_n1, intadd_6_A_2_, intadd_6_A_1_,
         intadd_6_A_0_, intadd_6_B_1_, intadd_6_B_0_, intadd_6_CI,
         intadd_6_SUM_2_, intadd_6_SUM_1_, intadd_6_SUM_0_, intadd_6_n4,
         intadd_6_n3, intadd_6_n2, intadd_6_n1, intadd_7_A_2_, intadd_7_A_1_,
         intadd_7_A_0_, intadd_7_B_2_, intadd_7_B_1_, intadd_7_B_0_,
         intadd_7_CI, intadd_7_n3, intadd_7_n2, intadd_7_n1, intadd_8_A_1_,
         intadd_8_A_0_, intadd_8_B_0_, intadd_8_CI, intadd_8_SUM_1_,
         intadd_8_SUM_0_, intadd_8_n3, intadd_8_n2, intadd_8_n1, intadd_9_A_1_,
         intadd_9_A_0_, intadd_9_B_0_, intadd_9_CI, intadd_9_SUM_1_,
         intadd_9_SUM_0_, intadd_9_n3, intadd_9_n2, intadd_9_n1, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028,
         n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038,
         n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048,
         n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188,
         n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198,
         n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208,
         n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218,
         n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228,
         n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238,
         n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248,
         n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258,
         n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268,
         n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278,
         n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288,
         n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298,
         n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308,
         n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318,
         n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328,
         n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338,
         n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348,
         n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358,
         n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368,
         n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378,
         n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388,
         n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398,
         n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408,
         n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418,
         n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428,
         n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438,
         n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448,
         n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458,
         n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468,
         n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478,
         n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488,
         n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498,
         n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508,
         n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518,
         n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528,
         n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538,
         n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547, n1548,
         n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, n1558,
         n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568,
         n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578,
         n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588,
         n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598,
         n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, n1608,
         n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618,
         n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627, n1628,
         n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637, n1638,
         n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647, n1648,
         n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658,
         n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668,
         n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677, n1678,
         n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687, n1688,
         n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696, n1697, n1698,
         n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706, n1707, n1708,
         n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717, n1718,
         n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727, n1728,
         n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736, n1737, n1738,
         n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746, n1747, n1748,
         n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757, n1758,
         n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766, n1767, n1768,
         n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776, n1777, n1778,
         n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786, n1787, n1788,
         n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796, n1797, n1798,
         n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806, n1807, n1808,
         n1809, n1810, n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818,
         n1819, n1820, n1821, n1822, n1823, n1824, n1825, n1826, n1827, n1828,
         n1829, n1830, n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838,
         n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846, n1847, n1848,
         n1849, n1850, n1851, n1852, n1853, n1854, n1855, n1856, n1857, n1858,
         n1859, n1860, n1861, n1862, n1863, n1864, n1865, n1866, n1867, n1868,
         n1869, n1870, n1871, n1872, n1873, n1874, n1875, n1876, n1877, n1878,
         n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886, n1887, n1888,
         n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896, n1897, n1898,
         n1899, n1900, n1901, n1902, n1903, n1904, n1905, n1906, n1907, n1908,
         n1909, n1910, n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918,
         n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926, n1927, n1928,
         n1929, n1930, n1931, n1932, n1933, n1934, n1935, n1936, n1937, n1938,
         n1939, n1940, n1941, n1942, n1943, n1944, n1945, n1946, n1947, n1948,
         n1949, n1950, n1951, n1952, n1953, n1954, n1955, n1956, n1957, n1958,
         n1959, n1960, n1961, n1962, n1963, n1964, n1965, n1966, n1967, n1968,
         n1969, n1970, n1971, n1972, n1973, n1974, n1975, n1976, n1977, n1978,
         n1979, n1980, n1981, n1982, n1983, n1984, n1985, n1986, n1987, n1988,
         n1989, n1990, n1991, n1992, n1993, n1994, n1995, n1996, n1997, n1998,
         n1999, n2000, n2001, n2002, n2003, n2004, n2005, n2006, n2007, n2008,
         n2009, n2010, n2011, n2012, n2013, n2014, n2015, n2016, n2017, n2018,
         n2019, n2020, n2021, n2022, n2023, n2024, n2025, n2026, n2027, n2028,
         n2029, n2030, n2031, n2032, n2033, n2034, n2035, n2036, n2037, n2038,
         n2039, n2040, n2041, n2042, n2043, n2044, n2045, n2046, n2047, n2048,
         n2049, n2050, n2051, n2052, n2053, n2054;
  wire  
         [8:0] gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent
;
  assign status_o_DZ_ = 1'b0;

  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__15_ ( 
        .D(n993), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__15_), .QN(n1992) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__0_ ( 
        .D(n992), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__0_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__1_ ( 
        .D(n991), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__2_ ( 
        .D(n990), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__2_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__3_ ( 
        .D(n989), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__3_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__4_ ( 
        .D(n988), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__4_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__5_ ( 
        .D(n987), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__5_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__6_ ( 
        .D(n986), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__7_ ( 
        .D(n985), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__8_ ( 
        .D(n984), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__9_ ( 
        .D(n983), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__10_ ( 
        .D(n982), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__11_ ( 
        .D(n981), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__12_ ( 
        .D(n980), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__13_ ( 
        .D(n979), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__14_ ( 
        .D(n978), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__0__15_ ( 
        .D(n977), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__15_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__0_ ( 
        .D(n976), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .QN(n2027) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__1_ ( 
        .D(n975), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .QN(n1993) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__2_ ( 
        .D(n974), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .QN(n1975) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__3_ ( 
        .D(n973), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_), .QN(n2029) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__4_ ( 
        .D(n972), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__4_), .QN(n2013) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__5_ ( 
        .D(n971), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__5_), .QN(n2028) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__6_ ( 
        .D(n970), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__6_), .QN(n1984) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__7_ ( 
        .D(n969), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_), .QN(n2014) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__8_ ( 
        .D(n968), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_), .QN(n2015) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__9_ ( 
        .D(n967), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_), .QN(n2017) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__10_ ( 
        .D(n966), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__10_), .QN(n2011) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__11_ ( 
        .D(n965), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__11_), .QN(n1983) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__12_ ( 
        .D(n964), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_), .QN(n2020) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__13_ ( 
        .D(n963), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_), .QN(n2021) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__14_ ( 
        .D(n962), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .QN(n2022) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__15_ ( 
        .D(n961), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__15_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__0_ ( 
        .D(n960), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__1_ ( 
        .D(n959), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__2_ ( 
        .D(n958), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__3_ ( 
        .D(n957), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__4_ ( 
        .D(n956), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__5_ ( 
        .D(n955), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__6_ ( 
        .D(n954), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__7_ ( 
        .D(n953), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__8_ ( 
        .D(n952), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_), .QN(n1987) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__9_ ( 
        .D(n951), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__10_ ( 
        .D(n950), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .QN(n1989) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__11_ ( 
        .D(n949), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__12_ ( 
        .D(n948), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .QN(n1990) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__13_ ( 
        .D(n947), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__14_ ( 
        .D(n946), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_reg_1__1_ ( 
        .D(n945), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .QN(n2012) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_reg_1__2_ ( 
        .D(n944), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__2_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_reg_1__0_ ( 
        .D(n942), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__0_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_reg_1__1_ ( 
        .D(n940), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_reg_1__0_ ( 
        .D(n937), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_reg_1__1_ ( 
        .D(n936), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__1_), .QN(n2010) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_reg_1_ ( 
        .D(n934), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_1_), .QN(n2026) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_tag_q_reg_1_ ( 
        .D(n863), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_tag_q_1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_reg_1__exponent__7_ ( 
        .D(n994), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__exponent__7_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_reg_1__2_ ( 
        .D(n943), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__2_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_reg_1__0_ ( 
        .D(n941), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_), .QN(n1994) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_reg_1__1_ ( 
        .D(n939), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__1_), .QN(n2030) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__0_ ( 
        .D(n933), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N309), .QN(n2025) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__1_ ( 
        .D(n932), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .QN(n1988) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__2_ ( 
        .D(n931), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_), .QN(n2009) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__3_ ( 
        .D(n930), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__3_), .QN(n1972) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__4_ ( 
        .D(n929), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__4_), .QN(n1982) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__5_ ( 
        .D(n928), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .QN(n1973) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__6_ ( 
        .D(n927), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .QN(n2016) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__7_ ( 
        .D(n926), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .QN(n1985) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__8_ ( 
        .D(n925), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_), .QN(n2023) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__9_ ( 
        .D(n924), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__9_), .QN(n2019) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__0_ ( 
        .D(n923), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__0_), .QN(n2052) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__1_ ( 
        .D(n922), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__2_ ( 
        .D(n921), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__2_), .QN(n2003) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__3_ ( 
        .D(n920), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__3_), .QN(n2000) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__4_ ( 
        .D(n919), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__4_), .QN(n2001) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__5_ ( 
        .D(n918), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__5_), .QN(n2002) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__6_ ( 
        .D(n917), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__6_), .QN(n1999) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__7_ ( 
        .D(n916), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__7_), .QN(n2004) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__8_ ( 
        .D(n915), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__8_), .QN(n2005) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__9_ ( 
        .D(n914), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__9_), .QN(n1986) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_reg_1__0_ ( 
        .D(n913), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__0_), .QN(n1998) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_reg_1__1_ ( 
        .D(n912), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_reg_1__2_ ( 
        .D(n911), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__2_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_reg_1__3_ ( 
        .D(n910), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__3_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_reg_1__4_ ( 
        .D(n909), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__4_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sticky_q_reg_1_ ( 
        .D(n908), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sticky_q_1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_reg_1_ ( 
        .D(n897), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__0_ ( 
        .D(n907), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__0_), .QN(n2047) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__1_ ( 
        .D(n906), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__1_), .QN(n2041) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__2_ ( 
        .D(n905), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__2_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__3_ ( 
        .D(n904), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__3_), .QN(n2042) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__4_ ( 
        .D(n903), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__4_), .QN(n2044) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__5_ ( 
        .D(n902), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__5_), .QN(n2045) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__6_ ( 
        .D(n901), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__6_), .QN(n2040) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__7_ ( 
        .D(n900), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__7_), .QN(n2043) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__8_ ( 
        .D(n899), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__8_), .QN(n2046) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_reg_1_ ( 
        .D(n896), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_1_), .QN(n2031) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__0_ ( 
        .D(n895), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__0_), .QN(n2018) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__1_ ( 
        .D(n894), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .QN(n1981) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__2_ ( 
        .D(n893), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_), .QN(n2008) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__3_ ( 
        .D(n892), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .QN(n2039) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__4_ ( 
        .D(n891), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .QN(n2037) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__5_ ( 
        .D(n890), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .QN(n2006) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__6_ ( 
        .D(n889), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .QN(n2036) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__7_ ( 
        .D(n888), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .QN(n2038) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__8_ ( 
        .D(n887), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .QN(n2007) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__9_ ( 
        .D(n886), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .QN(n1995) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__10_ ( 
        .D(n885), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .QN(n1978) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__11_ ( 
        .D(n884), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .QN(n1977) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__12_ ( 
        .D(n883), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_), .QN(n1971) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__13_ ( 
        .D(n882), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .QN(n1970) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__14_ ( 
        .D(n881), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .QN(n1976) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__15_ ( 
        .D(n880), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .QN(n1996) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__16_ ( 
        .D(n879), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .QN(n1980) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__17_ ( 
        .D(n878), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .QN(n1979) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__18_ ( 
        .D(n877), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .QN(n1974) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__19_ ( 
        .D(n876), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .QN(n1997) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__20_ ( 
        .D(n875), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_), .QN(n1991) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__21_ ( 
        .D(n874), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .QN(n2048) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__22_ ( 
        .D(n873), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .QN(n2050) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__23_ ( 
        .D(n872), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .QN(n2051) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__24_ ( 
        .D(n871), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_), .QN(n2024) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__25_ ( 
        .D(n870), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .QN(n2049) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__26_ ( 
        .D(n869), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__27_ ( 
        .D(n868), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_reg_1__mantissa__6_ ( 
        .D(n867), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__mantissa__6_), .QN(n2033) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_reg_1__sign_ ( 
        .D(n866), .CK(clk_i), .RN(rst_ni), .QN(n2034) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_stat_q_reg_1__NV_ ( 
        .D(n865), .CK(clk_i), .RN(rst_ni), .QN(n2035) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_reg_1_ ( 
        .D(n864), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_1_), .QN(n2053) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tag_q_reg_1_ ( 
        .D(n862), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_fmt_outputs_4__tag_) );
  FA_X1 DP_OP_218J1_126_2335_U10 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[1]), .CI(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[0]), .CO(DP_OP_218J1_126_2335_n9), .S(C178_DATA3_1) );
  FA_X1 DP_OP_218J1_126_2335_U9 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[2]), .CI(DP_OP_218J1_126_2335_n9), .CO(DP_OP_218J1_126_2335_n8), .S(C178_DATA3_2)
         );
  FA_X1 DP_OP_218J1_126_2335_U8 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[3]), .CI(DP_OP_218J1_126_2335_n8), .CO(DP_OP_218J1_126_2335_n7), .S(C178_DATA3_3)
         );
  FA_X1 DP_OP_218J1_126_2335_U7 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[4]), .CI(DP_OP_218J1_126_2335_n7), .CO(DP_OP_218J1_126_2335_n6), .S(C178_DATA3_4)
         );
  FA_X1 DP_OP_218J1_126_2335_U6 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[5]), .CI(DP_OP_218J1_126_2335_n6), .CO(DP_OP_218J1_126_2335_n5), .S(C178_DATA3_5)
         );
  FA_X1 DP_OP_218J1_126_2335_U5 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[6]), .CI(DP_OP_218J1_126_2335_n5), .CO(DP_OP_218J1_126_2335_n4), .S(C178_DATA3_6)
         );
  FA_X1 DP_OP_218J1_126_2335_U4 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[7]), .CI(DP_OP_218J1_126_2335_n4), .CO(DP_OP_218J1_126_2335_n3), .S(C178_DATA3_7)
         );
  FA_X1 DP_OP_218J1_126_2335_U3 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[8]), .CI(DP_OP_218J1_126_2335_n3), .CO(DP_OP_218J1_126_2335_n2), .S(C178_DATA3_8)
         );
  FA_X1 intadd_0_U17 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), 
        .CO(intadd_0_n16), .S(intadd_0_SUM_0_) );
  FA_X1 intadd_0_U16 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(intadd_0_n16), 
        .CO(intadd_0_n15), .S(intadd_0_SUM_1_) );
  FA_X1 intadd_0_U15 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(intadd_0_n15), 
        .CO(intadd_0_n14), .S(intadd_0_SUM_2_) );
  FA_X1 intadd_0_U14 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(intadd_0_n14), 
        .CO(intadd_0_n13), .S(intadd_0_SUM_3_) );
  FA_X1 intadd_0_U13 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n13), 
        .CO(intadd_0_n12), .S(intadd_0_SUM_4_) );
  FA_X1 intadd_0_U12 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n12), 
        .CO(intadd_0_n11), .S(intadd_0_SUM_5_) );
  FA_X1 intadd_0_U11 ( .A(intadd_0_A_6_), .B(intadd_0_B_6_), .CI(intadd_0_n11), 
        .CO(intadd_0_n10), .S(intadd_0_SUM_6_) );
  FA_X1 intadd_0_U10 ( .A(intadd_0_A_7_), .B(intadd_0_B_7_), .CI(intadd_0_n10), 
        .CO(intadd_0_n9), .S(intadd_0_SUM_7_) );
  FA_X1 intadd_0_U9 ( .A(intadd_0_A_8_), .B(intadd_0_B_8_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_8_) );
  FA_X1 intadd_0_U8 ( .A(intadd_0_A_9_), .B(intadd_0_B_9_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_9_) );
  FA_X1 intadd_0_U7 ( .A(intadd_0_A_10_), .B(intadd_0_B_10_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_10_) );
  FA_X1 intadd_0_U6 ( .A(intadd_0_A_11_), .B(intadd_0_B_11_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_11_) );
  FA_X1 intadd_0_U5 ( .A(intadd_0_A_12_), .B(intadd_0_B_12_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_12_) );
  FA_X1 intadd_0_U4 ( .A(intadd_0_A_13_), .B(intadd_0_B_13_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_13_) );
  FA_X1 intadd_0_U3 ( .A(intadd_0_A_14_), .B(intadd_0_B_14_), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_14_) );
  FA_X1 intadd_0_U2 ( .A(intadd_0_A_15_), .B(intadd_0_B_15_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_15_) );
  FA_X1 intadd_1_U13 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n12), .S(intadd_1_SUM_0_) );
  FA_X1 intadd_1_U12 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n12), 
        .CO(intadd_1_n11), .S(intadd_1_SUM_1_) );
  FA_X1 intadd_1_U11 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n11), 
        .CO(intadd_1_n10), .S(intadd_1_SUM_2_) );
  FA_X1 intadd_1_U10 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n10), 
        .CO(intadd_1_n9), .S(intadd_1_SUM_3_) );
  FA_X1 intadd_1_U9 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_4_) );
  FA_X1 intadd_1_U8 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_5_) );
  FA_X1 intadd_1_U7 ( .A(intadd_1_A_6_), .B(intadd_9_n1), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_6_) );
  FA_X1 intadd_1_U6 ( .A(intadd_1_A_7_), .B(intadd_8_n1), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_7_) );
  FA_X1 intadd_1_U5 ( .A(intadd_1_A_8_), .B(intadd_6_n1), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_8_) );
  FA_X1 intadd_1_U4 ( .A(intadd_1_A_9_), .B(intadd_5_n1), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_9_) );
  FA_X1 intadd_1_U3 ( .A(intadd_1_A_10_), .B(intadd_4_n1), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_10_) );
  FA_X1 intadd_1_U2 ( .A(intadd_1_A_11_), .B(intadd_7_n1), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_11_) );
  FA_X1 intadd_2_U9 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n8), .S(intadd_2_SUM_0_) );
  FA_X1 intadd_2_U8 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n8), 
        .CO(intadd_2_n7), .S(intadd_2_SUM_1_) );
  FA_X1 intadd_2_U7 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_2_SUM_2_) );
  FA_X1 intadd_2_U6 ( .A(intadd_2_A_3_), .B(intadd_2_B_3_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_3_) );
  FA_X1 intadd_2_U5 ( .A(intadd_2_A_4_), .B(intadd_2_B_4_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_4_) );
  FA_X1 intadd_2_U4 ( .A(intadd_2_A_5_), .B(intadd_2_B_5_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_5_) );
  FA_X1 intadd_2_U3 ( .A(intadd_2_A_6_), .B(intadd_2_B_6_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_6_) );
  FA_X1 intadd_2_U2 ( .A(intadd_2_A_7_), .B(n2054), .CI(intadd_2_n2), .CO(
        intadd_2_n1), .S(intadd_2_SUM_7_) );
  FA_X1 intadd_3_U7 ( .A(n2015), .B(intadd_3_B_0_), .CI(intadd_3_CI), .CO(
        intadd_3_n6), .S(intadd_3_SUM_0_) );
  FA_X1 intadd_3_U6 ( .A(n2017), .B(intadd_3_B_1_), .CI(intadd_3_n6), .CO(
        intadd_3_n5), .S(intadd_3_SUM_1_) );
  FA_X1 intadd_3_U5 ( .A(n2011), .B(intadd_3_B_2_), .CI(intadd_3_n5), .CO(
        intadd_3_n4), .S(intadd_3_SUM_2_) );
  FA_X1 intadd_3_U4 ( .A(n1983), .B(intadd_3_B_3_), .CI(intadd_3_n4), .CO(
        intadd_3_n3), .S(intadd_3_SUM_3_) );
  FA_X1 intadd_3_U3 ( .A(n2020), .B(intadd_3_B_4_), .CI(intadd_3_n3), .CO(
        intadd_3_n2), .S(intadd_3_SUM_4_) );
  FA_X1 intadd_3_U2 ( .A(n2021), .B(intadd_3_B_5_), .CI(intadd_3_n2), .CO(
        intadd_3_n1), .S(intadd_3_SUM_5_) );
  FA_X1 intadd_4_U5 ( .A(intadd_4_A_0_), .B(intadd_4_B_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n4), .S(intadd_4_SUM_0_) );
  FA_X1 intadd_4_U4 ( .A(intadd_4_A_1_), .B(intadd_4_B_1_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_1_) );
  FA_X1 intadd_4_U3 ( .A(intadd_4_A_2_), .B(intadd_4_B_2_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_2_) );
  FA_X1 intadd_4_U2 ( .A(intadd_4_A_3_), .B(intadd_4_B_3_), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_1_A_9_) );
  FA_X1 intadd_5_U5 ( .A(intadd_5_A_0_), .B(intadd_5_B_0_), .CI(intadd_5_CI), 
        .CO(intadd_5_n4), .S(intadd_5_SUM_0_) );
  FA_X1 intadd_5_U4 ( .A(intadd_5_A_1_), .B(intadd_5_B_1_), .CI(intadd_5_n4), 
        .CO(intadd_5_n3), .S(intadd_5_SUM_1_) );
  FA_X1 intadd_5_U3 ( .A(intadd_5_A_2_), .B(intadd_5_B_2_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(intadd_5_SUM_2_) );
  FA_X1 intadd_5_U2 ( .A(intadd_5_A_3_), .B(intadd_4_SUM_2_), .CI(intadd_5_n2), 
        .CO(intadd_5_n1), .S(intadd_1_A_8_) );
  FA_X1 intadd_6_U5 ( .A(intadd_6_A_0_), .B(intadd_6_B_0_), .CI(intadd_6_CI), 
        .CO(intadd_6_n4), .S(intadd_6_SUM_0_) );
  FA_X1 intadd_6_U4 ( .A(intadd_6_A_1_), .B(intadd_6_B_1_), .CI(intadd_6_n4), 
        .CO(intadd_6_n3), .S(intadd_6_SUM_1_) );
  FA_X1 intadd_6_U3 ( .A(intadd_6_A_2_), .B(intadd_4_SUM_0_), .CI(intadd_6_n3), 
        .CO(intadd_6_n2), .S(intadd_6_SUM_2_) );
  FA_X1 intadd_6_U2 ( .A(intadd_5_SUM_2_), .B(intadd_4_SUM_1_), .CI(
        intadd_6_n2), .CO(intadd_6_n1), .S(intadd_1_A_7_) );
  FA_X1 intadd_7_U4 ( .A(intadd_7_A_0_), .B(intadd_7_B_0_), .CI(intadd_7_CI), 
        .CO(intadd_7_n3), .S(intadd_4_B_2_) );
  FA_X1 intadd_7_U3 ( .A(intadd_7_A_1_), .B(intadd_7_B_1_), .CI(intadd_7_n3), 
        .CO(intadd_7_n2), .S(intadd_4_A_3_) );
  FA_X1 intadd_7_U2 ( .A(intadd_7_A_2_), .B(intadd_7_B_2_), .CI(intadd_7_n2), 
        .CO(intadd_7_n1), .S(intadd_1_A_10_) );
  FA_X1 intadd_8_U4 ( .A(intadd_8_A_0_), .B(intadd_8_B_0_), .CI(intadd_8_CI), 
        .CO(intadd_8_n3), .S(intadd_8_SUM_0_) );
  FA_X1 intadd_8_U3 ( .A(intadd_8_A_1_), .B(intadd_5_SUM_0_), .CI(intadd_8_n3), 
        .CO(intadd_8_n2), .S(intadd_8_SUM_1_) );
  FA_X1 intadd_8_U2 ( .A(intadd_5_SUM_1_), .B(intadd_6_SUM_2_), .CI(
        intadd_8_n2), .CO(intadd_8_n1), .S(intadd_1_A_6_) );
  FA_X1 intadd_9_U4 ( .A(intadd_9_A_0_), .B(intadd_9_B_0_), .CI(intadd_9_CI), 
        .CO(intadd_9_n3), .S(intadd_9_SUM_0_) );
  FA_X1 intadd_9_U3 ( .A(intadd_9_A_1_), .B(intadd_6_SUM_0_), .CI(intadd_9_n3), 
        .CO(intadd_9_n2), .S(intadd_9_SUM_1_) );
  FA_X1 intadd_9_U2 ( .A(intadd_6_SUM_1_), .B(intadd_8_SUM_1_), .CI(
        intadd_9_n2), .CO(intadd_9_n1), .S(intadd_1_A_5_) );
  DFFS_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_valid_q_reg_1_ ( 
        .D(n1969), .CK(clk_i), .SN(rst_ni), .Q(n2032), .QN(out_valid_o) );
  DFFS_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_reg_1_ ( 
        .D(n1968), .CK(clk_i), .SN(rst_ni), .QN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_) );
  NOR2_X1 U938 ( .A1(n2032), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_1_), .ZN(n1567) );
  INV_X1 U939 ( .A(n1206), .ZN(n997) );
  INV_X1 U940 ( .A(n997), .ZN(n998) );
  NOR2_X2 U941 ( .A1(n1267), .A2(n1265), .ZN(n1438) );
  OAI211_X2 U942 ( .C1(n1358), .C2(n1357), .A(n1356), .B(n1355), .ZN(n1578) );
  OAI21_X2 U943 ( .B1(intadd_2_SUM_1_), .B2(n1052), .A(n1051), .ZN(n1744) );
  XOR2_X2 U944 ( .A(n1950), .B(n1951), .Z(n1810) );
  AOI211_X4 U945 ( .C1(n1227), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__2_), .A(n1203), .B(n1202), .ZN(n1446) );
  OAI21_X2 U946 ( .B1(out_ready_i), .B2(n2032), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_), .ZN(n1864) );
  CLKBUF_X2 U947 ( .A(n1638), .Z(n1639) );
  NOR2_X1 U948 ( .A1(out_ready_i), .A2(n2032), .ZN(n1001) );
  INV_X1 U949 ( .A(n1864), .ZN(n1897) );
  INV_X1 U950 ( .A(n1864), .ZN(n1964) );
  CLKBUF_X2 U951 ( .A(n1864), .Z(n1962) );
  NOR3_X1 U952 ( .A1(dst_fmt_i[0]), .A2(dst_fmt_i[1]), .A3(n1565), .ZN(n1637)
         );
  NOR2_X1 U953 ( .A1(op_i[2]), .A2(op_i[3]), .ZN(n999) );
  NAND3_X1 U954 ( .A1(dst_fmt_i[2]), .A2(in_valid_i), .A3(n999), .ZN(n1565) );
  NAND2_X1 U955 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_), .A2(n1001), .ZN(n1636) );
  INV_X1 U956 ( .A(n1636), .ZN(n1566) );
  NOR2_X1 U957 ( .A1(n1637), .A2(n1566), .ZN(n1000) );
  OR2_X1 U958 ( .A1(n1000), .A2(flush_i), .ZN(n1968) );
  NOR2_X1 U959 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_), .A2(n1001), .ZN(n1002) );
  OR2_X1 U960 ( .A1(n1002), .A2(flush_i), .ZN(n1969) );
  NOR2_X1 U961 ( .A1(n2010), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_), .ZN(n1644) );
  INV_X1 U962 ( .A(n1644), .ZN(n1667) );
  AOI21_X1 U963 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .B2(n1667), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .ZN(n1039) );
  NOR4_X1 U964 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__5_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_), .ZN(n1003) );
  NAND4_X1 U965 ( .A1(n1003), .A2(n2013), .A3(n1984), .A4(n1975), .ZN(n1032)
         );
  NOR4_X1 U966 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_), .ZN(n1004) );
  NAND3_X1 U967 ( .A1(n1004), .A2(n2011), .A3(n1983), .ZN(n1005) );
  NOR3_X1 U968 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_), .A3(n1005), .ZN(n1663) );
  NAND2_X1 U969 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .A2(n1663), .ZN(n1543) );
  NOR4_X1 U970 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_), .ZN(n1007) );
  NOR4_X1 U971 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_), .ZN(n1006) );
  NAND2_X1 U972 ( .A1(n1007), .A2(n1006), .ZN(n1659) );
  OR4_X1 U973 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__0_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__5_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__1_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__4_), .ZN(n1008) );
  OR4_X1 U974 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__3_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__2_), .A4(n1008), .ZN(n1028) );
  NOR3_X1 U975 ( .A1(n2012), .A2(n1028), .A3(n1644), .ZN(n1025) );
  INV_X1 U976 ( .A(n1025), .ZN(n1026) );
  OAI22_X1 U977 ( .A1(n1032), .A2(n1543), .B1(n1659), .B2(n1026), .ZN(n1406)
         );
  AOI21_X1 U978 ( .B1(intadd_3_n1), .B2(n1039), .A(n1406), .ZN(n1648) );
  NAND2_X1 U979 ( .A1(intadd_2_n1), .A2(n1648), .ZN(n1549) );
  NOR2_X1 U980 ( .A1(n1962), .A2(n1549), .ZN(n1656) );
  AOI21_X1 U981 ( .B1(n1962), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__9_), .A(n1656), .ZN(n1009) );
  INV_X1 U982 ( .A(n1009), .ZN(n914) );
  NAND2_X1 U983 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_), .A2(n2010), .ZN(n1011) );
  NAND3_X1 U984 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__15_), .A2(n1667), .A3(n1011), .ZN(n1010) );
  OAI21_X1 U985 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__15_), .B2(n1011), .A(n1010), .ZN(n1012) );
  XOR2_X1 U986 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__15_), .B(n1012), .Z(n1950) );
  NAND2_X1 U987 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__1_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_), .ZN(n1652) );
  OAI221_X1 U988 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_1_), .B2(n1992), .C1(n2026), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__15_), .A(n1652), .ZN(n1951) );
  OAI22_X1 U989 ( .A1(n1962), .A2(n1810), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_1_), .B2(n1897), .ZN(n1013) );
  INV_X1 U990 ( .A(n1013), .ZN(n897) );
  NOR2_X1 U991 ( .A1(intadd_3_SUM_1_), .A2(n1406), .ZN(intadd_2_A_1_) );
  OAI22_X1 U992 ( .A1(n1962), .A2(intadd_2_A_1_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_), .B2(n1897), .ZN(n1014) );
  INV_X1 U993 ( .A(n1014), .ZN(n931) );
  OAI22_X1 U994 ( .A1(n1962), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__1_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__1_), .B2(n1897), .ZN(n1015) );
  INV_X1 U995 ( .A(n1015), .ZN(n939) );
  OAI22_X1 U996 ( .A1(n1962), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__0_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_), .B2(n1545), .ZN(n1016) );
  INV_X1 U997 ( .A(n1016), .ZN(n941) );
  INV_X1 U998 ( .A(intadd_2_SUM_0_), .ZN(n1045) );
  OAI22_X1 U999 ( .A1(n1962), .A2(n1045), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_), .B2(n1897), .ZN(n1017) );
  INV_X1 U1000 ( .A(n1017), .ZN(n922) );
  OAI22_X1 U1001 ( .A1(n1962), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__2_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__2_), .B2(n1545), .ZN(n1018) );
  INV_X1 U1002 ( .A(n1018), .ZN(n943) );
  NAND4_X1 U1003 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_), .ZN(n1020) );
  NAND4_X1 U1004 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .ZN(n1019) );
  NOR2_X1 U1005 ( .A1(n1020), .A2(n1019), .ZN(n1054) );
  NAND2_X1 U1006 ( .A1(n1054), .A2(n1652), .ZN(n2054) );
  NAND4_X1 U1007 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_), .ZN(n1022) );
  NAND4_X1 U1008 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_), .ZN(n1021) );
  NOR2_X1 U1009 ( .A1(n1022), .A2(n1021), .ZN(n1661) );
  NAND4_X1 U1010 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_), .ZN(n1024) );
  NAND4_X1 U1011 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__10_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__11_), .ZN(n1023) );
  NOR2_X1 U1012 ( .A1(n1024), .A2(n1023), .ZN(n1662) );
  AOI21_X1 U1013 ( .B1(n1025), .B2(n1661), .A(n1662), .ZN(n1952) );
  INV_X1 U1014 ( .A(n1659), .ZN(n1058) );
  AOI22_X1 U1015 ( .A1(n1663), .A2(n1661), .B1(n1058), .B2(n1662), .ZN(n1027)
         );
  NOR3_X1 U1016 ( .A1(n1027), .A2(n1026), .A3(n1032), .ZN(n1959) );
  INV_X1 U1017 ( .A(n1959), .ZN(n1031) );
  NAND3_X1 U1018 ( .A1(n1661), .A2(n1667), .A3(n1028), .ZN(n1956) );
  OR4_X1 U1019 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_), .ZN(n1029) );
  OR4_X1 U1020 ( .A1(n1029), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .ZN(n1030) );
  NAND3_X1 U1021 ( .A1(n1054), .A2(n1652), .A3(n1030), .ZN(n1955) );
  AND3_X1 U1022 ( .A1(n1031), .A2(n1956), .A3(n1955), .ZN(n1033) );
  NAND2_X1 U1023 ( .A1(n1662), .A2(n1032), .ZN(n1957) );
  NAND3_X1 U1024 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .A2(n1033), .A3(n1957), .ZN(n1966) );
  AOI21_X1 U1025 ( .B1(n1952), .B2(n2054), .A(n1966), .ZN(n1965) );
  INV_X1 U1026 ( .A(n1952), .ZN(n1949) );
  NAND4_X1 U1027 ( .A1(n1810), .A2(n1054), .A3(n1652), .A4(n1949), .ZN(n1958)
         );
  NAND3_X1 U1028 ( .A1(n1545), .A2(n1965), .A3(n1958), .ZN(n1953) );
  OAI21_X1 U1029 ( .B1(n1545), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__mantissa__6_), .A(n1953), .ZN(n1034) );
  INV_X1 U1030 ( .A(n1034), .ZN(n867) );
  NOR2_X1 U1031 ( .A1(intadd_2_SUM_2_), .A2(intadd_2_SUM_1_), .ZN(n1048) );
  OR2_X1 U1032 ( .A1(n1549), .A2(n1048), .ZN(n1037) );
  OR4_X1 U1033 ( .A1(intadd_2_SUM_6_), .A2(intadd_2_SUM_4_), .A3(
        intadd_2_SUM_3_), .A4(intadd_2_SUM_5_), .ZN(n1036) );
  INV_X1 U1034 ( .A(n1549), .ZN(n1035) );
  OAI21_X1 U1035 ( .B1(n1036), .B2(intadd_2_SUM_7_), .A(n1035), .ZN(n1051) );
  NAND2_X1 U1036 ( .A1(n1037), .A2(n1051), .ZN(n1781) );
  OAI22_X1 U1037 ( .A1(n1962), .A2(n1781), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__4_), .B2(n1964), .ZN(n1038) );
  INV_X1 U1038 ( .A(n1038), .ZN(n909) );
  NOR2_X1 U1039 ( .A1(intadd_3_SUM_2_), .A2(n1406), .ZN(intadd_2_A_2_) );
  NOR2_X1 U1040 ( .A1(intadd_3_SUM_3_), .A2(n1406), .ZN(intadd_2_A_3_) );
  NOR2_X1 U1041 ( .A1(intadd_3_SUM_4_), .A2(n1406), .ZN(intadd_2_A_4_) );
  NAND2_X1 U1042 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .A2(n1667), .ZN(n1401) );
  INV_X1 U1043 ( .A(n1039), .ZN(n1040) );
  OAI21_X1 U1044 ( .B1(n1401), .B2(n2022), .A(n1040), .ZN(n1042) );
  AOI21_X1 U1045 ( .B1(intadd_3_n1), .B2(n1042), .A(n1406), .ZN(n1041) );
  OAI21_X1 U1046 ( .B1(intadd_3_n1), .B2(n1042), .A(n1041), .ZN(intadd_2_A_6_)
         );
  NOR2_X1 U1047 ( .A1(intadd_3_SUM_5_), .A2(n1406), .ZN(intadd_2_A_5_) );
  NAND4_X1 U1048 ( .A1(intadd_2_SUM_7_), .A2(intadd_2_SUM_6_), .A3(
        intadd_2_SUM_3_), .A4(intadd_2_SUM_5_), .ZN(n1044) );
  OAI21_X1 U1049 ( .B1(intadd_2_SUM_2_), .B2(intadd_2_SUM_1_), .A(
        intadd_2_SUM_4_), .ZN(n1043) );
  OAI21_X1 U1050 ( .B1(n1044), .B2(n1043), .A(n1549), .ZN(n1047) );
  NAND2_X1 U1051 ( .A1(n1051), .A2(n1047), .ZN(n1062) );
  NOR2_X1 U1052 ( .A1(n1062), .A2(n1045), .ZN(n1743) );
  OAI22_X1 U1053 ( .A1(n1962), .A2(n1743), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__1_), .B2(n1964), .ZN(n1046) );
  INV_X1 U1054 ( .A(n1046), .ZN(n912) );
  INV_X1 U1055 ( .A(n1047), .ZN(n1052) );
  AOI21_X1 U1056 ( .B1(intadd_2_SUM_1_), .B2(intadd_2_SUM_2_), .A(n1048), .ZN(
        n1049) );
  OAI21_X1 U1057 ( .B1(n1052), .B2(n1049), .A(n1051), .ZN(n1762) );
  OAI22_X1 U1058 ( .A1(n1962), .A2(n1762), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__3_), .B2(n1897), .ZN(n1050) );
  INV_X1 U1059 ( .A(n1050), .ZN(n910) );
  OAI22_X1 U1060 ( .A1(n1962), .A2(n1744), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__2_), .B2(n1545), .ZN(n1053) );
  INV_X1 U1061 ( .A(n1053), .ZN(n911) );
  NOR4_X1 U1062 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_), .ZN(n1056) );
  NOR4_X1 U1063 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .ZN(n1055) );
  AOI21_X1 U1064 ( .B1(n1056), .B2(n1055), .A(n1054), .ZN(n1057) );
  NAND3_X1 U1065 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .A2(n1057), .A3(n1652), .ZN(n1558) );
  INV_X1 U1066 ( .A(n1558), .ZN(n1547) );
  NAND2_X1 U1067 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .A2(n1652), .ZN(n1546) );
  XOR2_X1 U1068 ( .A(n1547), .B(n1546), .Z(n1649) );
  NOR2_X1 U1069 ( .A1(n1644), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_), .ZN(n1544) );
  XOR2_X1 U1070 ( .A(n1544), .B(n1543), .Z(n1061) );
  NAND3_X1 U1071 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .A2(n1058), .A3(n1667), .ZN(n1542) );
  XOR2_X1 U1072 ( .A(n2014), .B(n1542), .Z(n1060) );
  NOR2_X1 U1073 ( .A1(n1061), .A2(n1060), .ZN(n1059) );
  AOI211_X1 U1074 ( .C1(n1061), .C2(n1060), .A(n1406), .B(n1059), .ZN(n1650)
         );
  NOR2_X1 U1075 ( .A1(n1649), .A2(n1650), .ZN(intadd_2_A_0_) );
  INV_X1 U1076 ( .A(n1743), .ZN(n1396) );
  AOI211_X1 U1077 ( .C1(n1650), .C2(n1649), .A(intadd_2_A_0_), .B(n1062), .ZN(
        n1067) );
  INV_X1 U1078 ( .A(n1067), .ZN(n1655) );
  OAI221_X1 U1079 ( .B1(n1655), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_), .C1(n1067), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_), .A(n1652), .ZN(n1074) );
  INV_X1 U1080 ( .A(n1652), .ZN(n1559) );
  NOR2_X1 U1081 ( .A1(n1655), .A2(n1559), .ZN(n1066) );
  NAND2_X1 U1082 ( .A1(n1066), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .ZN(n1063) );
  OAI22_X1 U1083 ( .A1(n1396), .A2(n1074), .B1(n1063), .B2(n1743), .ZN(n1083)
         );
  AND2_X1 U1084 ( .A1(n1744), .A2(n1083), .ZN(n1771) );
  OAI221_X1 U1085 ( .B1(n1655), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_), .C1(n1067), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .A(n1652), .ZN(n1069) );
  NOR2_X1 U1086 ( .A1(n1396), .A2(n1069), .ZN(n1078) );
  AND2_X1 U1087 ( .A1(n1744), .A2(n1078), .ZN(n1767) );
  INV_X1 U1088 ( .A(n1744), .ZN(n1400) );
  NAND3_X1 U1089 ( .A1(n1743), .A2(n1066), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .ZN(n1079) );
  NOR2_X1 U1090 ( .A1(n1400), .A2(n1079), .ZN(n1764) );
  NOR3_X1 U1091 ( .A1(n1771), .A2(n1767), .A3(n1764), .ZN(n1088) );
  NOR2_X1 U1092 ( .A1(n1559), .A2(n1067), .ZN(n1065) );
  AOI22_X1 U1093 ( .A1(n1065), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_), .B2(n1066), .ZN(n1397) );
  AOI22_X1 U1094 ( .A1(n1065), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_), .B1(n1066), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_), .ZN(n1070) );
  AOI22_X1 U1095 ( .A1(n1743), .A2(n1397), .B1(n1070), .B2(n1396), .ZN(n1077)
         );
  INV_X1 U1096 ( .A(n1077), .ZN(n1064) );
  NAND2_X1 U1097 ( .A1(n1396), .A2(n1744), .ZN(n1071) );
  AOI22_X1 U1098 ( .A1(n1547), .A2(n1067), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .B2(n1065), .ZN(n1741) );
  OAI22_X1 U1099 ( .A1(n1744), .A2(n1064), .B1(n1071), .B2(n1741), .ZN(n1766)
         );
  INV_X1 U1100 ( .A(n1766), .ZN(n1785) );
  NAND2_X1 U1101 ( .A1(n1655), .A2(n1547), .ZN(n1745) );
  AOI22_X1 U1102 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .A2(n1066), .B1(n1065), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_), .ZN(n1076) );
  OAI221_X1 U1103 ( .B1(n1067), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_), .C1(n1655), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_), .A(n1652), .ZN(n1075) );
  AOI22_X1 U1104 ( .A1(n1743), .A2(n1076), .B1(n1075), .B2(n1396), .ZN(n1082)
         );
  INV_X1 U1105 ( .A(n1082), .ZN(n1068) );
  OAI22_X1 U1106 ( .A1(n1745), .A2(n1071), .B1(n1744), .B2(n1068), .ZN(n1769)
         );
  INV_X1 U1107 ( .A(n1769), .ZN(n1799) );
  NOR2_X1 U1108 ( .A1(n1741), .A2(n1396), .ZN(n1073) );
  AOI22_X1 U1109 ( .A1(n1743), .A2(n1070), .B1(n1069), .B2(n1396), .ZN(n1395)
         );
  NOR2_X1 U1110 ( .A1(n1397), .A2(n1071), .ZN(n1072) );
  AOI221_X1 U1111 ( .B1(n1073), .B2(n1744), .C1(n1395), .C2(n1400), .A(n1072), 
        .ZN(n1733) );
  AOI22_X1 U1112 ( .A1(n1743), .A2(n1075), .B1(n1074), .B2(n1396), .ZN(n1080)
         );
  AOI22_X1 U1113 ( .A1(n1743), .A2(n1745), .B1(n1076), .B2(n1396), .ZN(n1399)
         );
  AOI22_X1 U1114 ( .A1(n1400), .A2(n1080), .B1(n1399), .B2(n1744), .ZN(n1796)
         );
  NAND4_X1 U1115 ( .A1(n1785), .A2(n1799), .A3(n1733), .A4(n1796), .ZN(n1086)
         );
  INV_X1 U1116 ( .A(n1395), .ZN(n1084) );
  AOI22_X1 U1117 ( .A1(n1400), .A2(n1078), .B1(n1077), .B2(n1744), .ZN(n1791)
         );
  INV_X1 U1118 ( .A(n1079), .ZN(n1081) );
  AOI22_X1 U1119 ( .A1(n1400), .A2(n1081), .B1(n1080), .B2(n1744), .ZN(n1778)
         );
  AOI22_X1 U1120 ( .A1(n1400), .A2(n1083), .B1(n1082), .B2(n1744), .ZN(n1794)
         );
  NAND4_X1 U1121 ( .A1(n1084), .A2(n1791), .A3(n1778), .A4(n1794), .ZN(n1085)
         );
  OAI21_X1 U1122 ( .B1(n1086), .B2(n1085), .A(n1762), .ZN(n1087) );
  INV_X1 U1123 ( .A(n1781), .ZN(n1756) );
  AOI21_X1 U1124 ( .B1(n1088), .B2(n1087), .A(n1756), .ZN(n1811) );
  OAI22_X1 U1125 ( .A1(n1962), .A2(n1811), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sticky_q_1_), .B2(n1897), .ZN(n1089) );
  INV_X1 U1126 ( .A(n1089), .ZN(n908) );
  NAND2_X1 U1127 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_), .ZN(n1119) );
  NOR4_X1 U1128 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .ZN(n1104) );
  NAND2_X1 U1129 ( .A1(n1976), .A2(n1970), .ZN(n1096) );
  INV_X1 U1130 ( .A(n1096), .ZN(n1090) );
  NAND4_X1 U1131 ( .A1(n1971), .A2(n1977), .A3(n1104), .A4(n1090), .ZN(n1092)
         );
  INV_X1 U1132 ( .A(n1092), .ZN(n1220) );
  NOR2_X1 U1133 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .ZN(n1093) );
  NOR4_X1 U1134 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .ZN(n1100) );
  NAND3_X1 U1135 ( .A1(n1220), .A2(n1093), .A3(n1100), .ZN(n1091) );
  NOR3_X1 U1136 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .A3(n1091), .ZN(n1108) );
  NOR2_X1 U1137 ( .A1(n1982), .A2(n1108), .ZN(n1144) );
  AOI21_X1 U1138 ( .B1(n1982), .B2(n1108), .A(n1144), .ZN(n1134) );
  NOR2_X1 U1139 ( .A1(n1108), .A2(n1092), .ZN(n1114) );
  AOI22_X1 U1140 ( .A1(n1092), .A2(n1104), .B1(n1100), .B2(n1114), .ZN(n1201)
         );
  INV_X1 U1141 ( .A(n1201), .ZN(n1099) );
  NOR2_X1 U1142 ( .A1(n1099), .A2(n2009), .ZN(n1116) );
  INV_X1 U1143 ( .A(n1093), .ZN(n1094) );
  AOI211_X1 U1144 ( .C1(n1100), .C2(n1094), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .ZN(n1098) );
  NAND2_X1 U1145 ( .A1(n1108), .A2(n2008), .ZN(n1106) );
  NOR2_X1 U1146 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .A2(n1106), .ZN(n1121) );
  NAND2_X1 U1147 ( .A1(n1974), .A2(n1979), .ZN(n1095) );
  AOI211_X1 U1148 ( .C1(n1104), .C2(n1096), .A(n1220), .B(n1095), .ZN(n1097)
         );
  AOI211_X1 U1149 ( .C1(n1114), .C2(n1098), .A(n1121), .B(n1097), .ZN(n1206)
         );
  AOI21_X1 U1150 ( .B1(n1099), .B2(n2009), .A(n1116), .ZN(n1138) );
  NOR2_X1 U1151 ( .A1(n998), .A2(n1138), .ZN(n1111) );
  OAI21_X1 U1152 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .B2(n1971), .A(n1976), .ZN(n1103) );
  OAI221_X1 U1153 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .C2(n2006), .A(n1100), .ZN(n1101) );
  OAI211_X1 U1154 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .C2(n2007), .A(n1978), .B(n1101), .ZN(n1102) );
  AOI22_X1 U1155 ( .A1(n1104), .A2(n1103), .B1(n1220), .B2(n1102), .ZN(n1105)
         );
  OAI211_X1 U1156 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .C2(n1980), .A(n1105), .B(n1974), .ZN(n1107) );
  OAI22_X1 U1157 ( .A1(n1108), .A2(n1107), .B1(n1981), .B2(n1106), .ZN(n1205)
         );
  INV_X1 U1158 ( .A(n1205), .ZN(n1109) );
  AND2_X1 U1159 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N309), .A2(n1109), .ZN(n1181) );
  OR2_X1 U1160 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .A2(n1181), .ZN(n1162) );
  NAND2_X1 U1161 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .A2(n1181), .ZN(n1163) );
  NAND2_X1 U1162 ( .A1(n998), .A2(n1163), .ZN(n1110) );
  NAND2_X1 U1163 ( .A1(n1162), .A2(n1110), .ZN(n1140) );
  OR2_X1 U1164 ( .A1(n1111), .A2(n1140), .ZN(n1113) );
  NAND2_X1 U1165 ( .A1(n1138), .A2(n998), .ZN(n1112) );
  NAND2_X1 U1166 ( .A1(n1113), .A2(n1112), .ZN(n1115) );
  NOR2_X1 U1167 ( .A1(n1116), .A2(n1115), .ZN(n1169) );
  INV_X1 U1168 ( .A(n1114), .ZN(n1191) );
  AOI22_X1 U1169 ( .A1(n1114), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__3_), .B1(n1972), .B2(n1191), .ZN(n1172) );
  NAND2_X1 U1170 ( .A1(n1116), .A2(n1115), .ZN(n1168) );
  NAND2_X1 U1171 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__3_), .A2(n1191), .ZN(n1117) );
  OAI211_X1 U1172 ( .C1(n1169), .C2(n1172), .A(n1168), .B(n1117), .ZN(n1132)
         );
  NOR2_X1 U1173 ( .A1(n1168), .A2(n1117), .ZN(n1130) );
  AOI21_X1 U1174 ( .B1(n1134), .B2(n1132), .A(n1130), .ZN(n1145) );
  INV_X1 U1175 ( .A(n1144), .ZN(n1118) );
  FA_X1 U1176 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .B(n1145), .CI(n1118), .CO(n1158) );
  OR4_X1 U1177 ( .A1(n1973), .A2(n2016), .A3(n1119), .A4(n1158), .ZN(n1188) );
  NAND4_X1 U1178 ( .A1(n1158), .A2(n1985), .A3(n2016), .A4(n1973), .ZN(n1120)
         );
  OAI21_X1 U1179 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_), .B2(n1120), .A(n2019), .ZN(n1123) );
  AND2_X1 U1180 ( .A1(n1121), .A2(n2018), .ZN(n1122) );
  AOI21_X1 U1181 ( .B1(n1188), .B2(n1123), .A(n1122), .ZN(n1194) );
  NOR2_X1 U1182 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__0_), .ZN(n1126) );
  NOR4_X1 U1183 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__6_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__5_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__4_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__3_), .ZN(n1125) );
  NAND2_X1 U1184 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__0_), .ZN(n1124) );
  OAI211_X1 U1185 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_1_), .C2(n1126), .A(n1125), .B(n1124), .ZN(n1127) );
  OR4_X1 U1186 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__8_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__7_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__2_), .A4(n1127), .ZN(n1128) );
  AND2_X1 U1187 ( .A1(n1128), .A2(n1986), .ZN(n1227) );
  INV_X1 U1188 ( .A(n1227), .ZN(n1129) );
  AND2_X1 U1189 ( .A1(n1194), .A2(n1129), .ZN(n1222) );
  INV_X1 U1190 ( .A(n1130), .ZN(n1131) );
  NAND2_X1 U1191 ( .A1(n1132), .A2(n1131), .ZN(n1133) );
  XNOR2_X1 U1192 ( .A(n1134), .B(n1133), .ZN(n1135) );
  NAND2_X1 U1193 ( .A1(n1222), .A2(n1135), .ZN(n1137) );
  NAND2_X1 U1194 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__4_), .ZN(n1136) );
  NAND2_X1 U1195 ( .A1(n1137), .A2(n1136), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[4]) );
  XOR2_X1 U1196 ( .A(n998), .B(n1138), .Z(n1139) );
  XNOR2_X1 U1197 ( .A(n1140), .B(n1139), .ZN(n1141) );
  NAND2_X1 U1198 ( .A1(n1141), .A2(n1222), .ZN(n1143) );
  NAND2_X1 U1199 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__2_), .ZN(n1142) );
  NAND2_X1 U1200 ( .A1(n1143), .A2(n1142), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[2]) );
  FA_X1 U1201 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .B(n1145), .CI(n1144), .S(n1146) );
  NAND2_X1 U1202 ( .A1(n1222), .A2(n1146), .ZN(n1148) );
  NAND2_X1 U1203 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__5_), .ZN(n1147) );
  NAND2_X1 U1204 ( .A1(n1148), .A2(n1147), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[5]) );
  AOI22_X1 U1205 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_), .A2(n1985), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .B2(n2023), .ZN(n1152) );
  AOI21_X1 U1206 ( .B1(n1973), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .A(n1158), .ZN(n1149) );
  AOI21_X1 U1207 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .B2(n2016), .A(n1149), .ZN(n1176) );
  OAI21_X1 U1208 ( .B1(n1149), .B2(n1985), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .ZN(n1150) );
  OAI21_X1 U1209 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .B2(n1176), .A(n1150), .ZN(n1151) );
  XOR2_X1 U1210 ( .A(n1152), .B(n1151), .Z(n1153) );
  NAND2_X1 U1211 ( .A1(n1222), .A2(n1153), .ZN(n1155) );
  NAND2_X1 U1212 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__8_), .ZN(n1154) );
  NAND2_X1 U1213 ( .A1(n1155), .A2(n1154), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[8]) );
  AOI22_X1 U1214 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .B1(n1973), .B2(n2016), .ZN(n1156) );
  INV_X1 U1215 ( .A(n1156), .ZN(n1157) );
  XNOR2_X1 U1216 ( .A(n1158), .B(n1157), .ZN(n1159) );
  NAND2_X1 U1217 ( .A1(n1222), .A2(n1159), .ZN(n1161) );
  NAND2_X1 U1218 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__6_), .ZN(n1160) );
  NAND2_X1 U1219 ( .A1(n1161), .A2(n1160), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[6]) );
  NAND2_X1 U1220 ( .A1(n1163), .A2(n1162), .ZN(n1164) );
  XNOR2_X1 U1221 ( .A(n997), .B(n1164), .ZN(n1165) );
  NAND2_X1 U1222 ( .A1(n1165), .A2(n1222), .ZN(n1167) );
  NAND2_X1 U1223 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__1_), .ZN(n1166) );
  NAND2_X1 U1224 ( .A1(n1167), .A2(n1166), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[1]) );
  INV_X1 U1225 ( .A(n1168), .ZN(n1170) );
  NOR2_X1 U1226 ( .A1(n1170), .A2(n1169), .ZN(n1171) );
  XNOR2_X1 U1227 ( .A(n1172), .B(n1171), .ZN(n1173) );
  NAND2_X1 U1228 ( .A1(n1222), .A2(n1173), .ZN(n1175) );
  NAND2_X1 U1229 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__3_), .ZN(n1174) );
  NAND2_X1 U1230 ( .A1(n1175), .A2(n1174), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[3]) );
  AOI22_X1 U1231 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .B1(n2016), .B2(n1985), .ZN(n1177) );
  XOR2_X1 U1232 ( .A(n1177), .B(n1176), .Z(n1178) );
  NAND2_X1 U1233 ( .A1(n1222), .A2(n1178), .ZN(n1180) );
  NAND2_X1 U1234 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__7_), .ZN(n1179) );
  NAND2_X1 U1235 ( .A1(n1180), .A2(n1179), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[7]) );
  AND2_X1 U1236 ( .A1(n1205), .A2(n2025), .ZN(n1182) );
  NOR2_X1 U1237 ( .A1(n1182), .A2(n1181), .ZN(n1183) );
  NAND2_X1 U1238 ( .A1(n1222), .A2(n1183), .ZN(n1185) );
  NAND2_X1 U1239 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__0_), .ZN(n1184) );
  NAND2_X1 U1240 ( .A1(n1185), .A2(n1184), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[0]) );
  NOR4_X1 U1241 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[4]), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[2]), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[5]), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[8]), .ZN(n1187) );
  NOR4_X1 U1242 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[6]), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[1]), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[3]), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[7]), .ZN(n1186) );
  AND2_X1 U1243 ( .A1(n1187), .A2(n1186), .ZN(n1190) );
  NOR2_X1 U1244 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__9_), .A2(n1188), .ZN(n1189) );
  AND2_X1 U1245 ( .A1(n1222), .A2(n1189), .ZN(n1352) );
  OR2_X1 U1246 ( .A1(n1190), .A2(n1352), .ZN(n1327) );
  NOR2_X1 U1247 ( .A1(n1201), .A2(n998), .ZN(n1219) );
  XOR2_X1 U1248 ( .A(n1191), .B(n1219), .Z(n1192) );
  NAND2_X1 U1249 ( .A1(n1222), .A2(n1192), .ZN(n1199) );
  NAND2_X1 U1250 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .ZN(n1193) );
  OAI21_X1 U1251 ( .B1(n2009), .B2(n1988), .A(n1972), .ZN(n1224) );
  OAI21_X1 U1252 ( .B1(n1193), .B2(n1972), .A(n1224), .ZN(n1195) );
  NOR2_X1 U1253 ( .A1(n1227), .A2(n1194), .ZN(n1204) );
  NAND2_X1 U1254 ( .A1(n1195), .A2(n1204), .ZN(n1197) );
  NAND2_X1 U1255 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__3_), .ZN(n1196) );
  AND2_X1 U1256 ( .A1(n1197), .A2(n1196), .ZN(n1198) );
  NAND2_X1 U1257 ( .A1(n1199), .A2(n1198), .ZN(n1443) );
  INV_X1 U1258 ( .A(n1222), .ZN(n1200) );
  AOI211_X1 U1259 ( .C1(n1201), .C2(n998), .A(n1219), .B(n1200), .ZN(n1203) );
  INV_X1 U1260 ( .A(n1204), .ZN(n1223) );
  AOI221_X1 U1261 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .C1(n2009), .C2(n1988), .A(n1223), .ZN(n1202) );
  NOR2_X1 U1262 ( .A1(n1443), .A2(n1446), .ZN(n1466) );
  AOI222_X1 U1263 ( .A1(n1205), .A2(n1222), .B1(n1204), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N309), .C1(n1227), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__0_), .ZN(n1268) );
  INV_X1 U1264 ( .A(n1268), .ZN(n1267) );
  AOI22_X1 U1265 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__1_), .B1(n1222), .B2(n998), .ZN(n1207) );
  OAI21_X1 U1266 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .B2(n1223), .A(n1207), .ZN(n1265) );
  INV_X1 U1267 ( .A(n1438), .ZN(n1427) );
  NAND2_X1 U1268 ( .A1(n1265), .A2(n1268), .ZN(n1426) );
  OAI22_X1 U1269 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .A2(n1427), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .B2(n1426), .ZN(n1209) );
  INV_X1 U1270 ( .A(n1265), .ZN(n1266) );
  NAND2_X1 U1271 ( .A1(n1267), .A2(n1266), .ZN(n1428) );
  NAND2_X1 U1272 ( .A1(n1267), .A2(n1265), .ZN(n1429) );
  OAI22_X1 U1273 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .A2(n1428), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .B2(n1429), .ZN(n1208) );
  NOR2_X1 U1274 ( .A1(n1209), .A2(n1208), .ZN(n1363) );
  INV_X1 U1275 ( .A(n1363), .ZN(n1210) );
  AND2_X1 U1276 ( .A1(n1466), .A2(n1210), .ZN(n1218) );
  INV_X1 U1277 ( .A(n1446), .ZN(n1444) );
  NOR2_X1 U1278 ( .A1(n1443), .A2(n1444), .ZN(n1317) );
  OAI22_X1 U1279 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .A2(n1426), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_), .B2(n1427), .ZN(n1212) );
  OAI22_X1 U1280 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .A2(n1429), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .B2(n1428), .ZN(n1211) );
  NOR2_X1 U1281 ( .A1(n1212), .A2(n1211), .ZN(n1290) );
  INV_X1 U1282 ( .A(n1290), .ZN(n1409) );
  AND2_X1 U1283 ( .A1(n1317), .A2(n1409), .ZN(n1217) );
  INV_X1 U1284 ( .A(n1426), .ZN(n1437) );
  OAI22_X1 U1285 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .A2(n1427), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .B2(n1429), .ZN(n1213) );
  AOI21_X1 U1286 ( .B1(n1437), .B2(n2008), .A(n1213), .ZN(n1214) );
  OAI21_X1 U1287 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .B2(n1428), .A(n1214), .ZN(n1291) );
  NAND2_X1 U1288 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__0_), .A2(n1438), .ZN(n1307) );
  AOI22_X1 U1289 ( .A1(n1446), .A2(n1291), .B1(n1307), .B2(n1444), .ZN(n1362)
         );
  INV_X1 U1290 ( .A(n1362), .ZN(n1215) );
  AND2_X1 U1291 ( .A1(n1215), .A2(n1443), .ZN(n1216) );
  OR3_X1 U1292 ( .A1(n1218), .A2(n1217), .A3(n1216), .ZN(n1274) );
  OR2_X1 U1293 ( .A1(n1220), .A2(n1219), .ZN(n1221) );
  NAND2_X1 U1294 ( .A1(n1222), .A2(n1221), .ZN(n1231) );
  INV_X1 U1295 ( .A(n1224), .ZN(n1225) );
  AOI221_X1 U1296 ( .B1(n1225), .B2(n1982), .C1(n1224), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__4_), .A(n1223), .ZN(n1226) );
  INV_X1 U1297 ( .A(n1226), .ZN(n1229) );
  NAND2_X1 U1298 ( .A1(n1227), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__4_), .ZN(n1228) );
  AND2_X1 U1299 ( .A1(n1229), .A2(n1228), .ZN(n1230) );
  NAND2_X1 U1300 ( .A1(n1231), .A2(n1230), .ZN(n1485) );
  INV_X1 U1301 ( .A(n1485), .ZN(n1473) );
  INV_X1 U1302 ( .A(n1428), .ZN(n1440) );
  INV_X1 U1303 ( .A(n1429), .ZN(n1439) );
  AOI22_X1 U1304 ( .A1(n1439), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .B1(n1437), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .ZN(n1232) );
  OAI21_X1 U1305 ( .B1(n1427), .B2(n2024), .A(n1232), .ZN(n1233) );
  AOI21_X1 U1306 ( .B1(n1440), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .A(n1233), .ZN(n1415) );
  AOI222_X1 U1307 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_), .A2(n1440), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .B2(n1439), .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_), .C2(n1437), .ZN(n1234) );
  INV_X1 U1308 ( .A(n1443), .ZN(n1475) );
  OAI221_X1 U1309 ( .B1(n1446), .B2(n1415), .C1(n1444), .C2(n1234), .A(n1475), 
        .ZN(n1235) );
  INV_X1 U1310 ( .A(n1235), .ZN(n1242) );
  NAND2_X1 U1311 ( .A1(n1443), .A2(n1444), .ZN(n1448) );
  INV_X1 U1312 ( .A(n1448), .ZN(n1462) );
  OAI22_X1 U1313 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .A2(n1426), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .B2(n1427), .ZN(n1236) );
  AOI21_X1 U1314 ( .B1(n1439), .B2(n1970), .A(n1236), .ZN(n1237) );
  OAI21_X1 U1315 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .B2(n1428), .A(n1237), .ZN(n1408) );
  NAND2_X1 U1316 ( .A1(n1443), .A2(n1446), .ZN(n1450) );
  INV_X1 U1317 ( .A(n1450), .ZN(n1464) );
  OAI22_X1 U1318 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .A2(n1426), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_), .B2(n1427), .ZN(n1238) );
  AOI21_X1 U1319 ( .B1(n1439), .B2(n1979), .A(n1238), .ZN(n1239) );
  OAI21_X1 U1320 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .B2(n1428), .A(n1239), .ZN(n1410) );
  AOI22_X1 U1321 ( .A1(n1462), .A2(n1408), .B1(n1464), .B2(n1410), .ZN(n1240)
         );
  INV_X1 U1322 ( .A(n1240), .ZN(n1241) );
  OR3_X1 U1323 ( .A1(n1242), .A2(n1241), .A3(n1485), .ZN(n1243) );
  OAI21_X1 U1324 ( .B1(n1274), .B2(n1473), .A(n1243), .ZN(n1515) );
  OAI22_X1 U1325 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .A2(n1426), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_), .B2(n1427), .ZN(n1245) );
  OAI22_X1 U1326 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_), .A2(n1428), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_), .B2(n1429), .ZN(n1244) );
  NAND2_X1 U1327 ( .A1(n1317), .A2(n1473), .ZN(n1414) );
  INV_X1 U1328 ( .A(n1414), .ZN(n1469) );
  OAI21_X1 U1329 ( .B1(n1245), .B2(n1244), .A(n1469), .ZN(n1246) );
  INV_X1 U1330 ( .A(n1246), .ZN(n1264) );
  AOI22_X1 U1331 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .A2(n1437), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .B2(n1438), .ZN(n1247) );
  OAI21_X1 U1332 ( .B1(n2018), .B2(n1429), .A(n1247), .ZN(n1248) );
  AOI21_X1 U1333 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_), .B2(n1440), .A(n1248), .ZN(n1310) );
  AOI22_X1 U1334 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .A2(n1438), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .B2(n1437), .ZN(n1250) );
  AOI22_X1 U1335 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .A2(n1440), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .B2(n1439), .ZN(n1249) );
  NAND2_X1 U1336 ( .A1(n1250), .A2(n1249), .ZN(n1460) );
  AOI22_X1 U1337 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .A2(n1437), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .B2(n1438), .ZN(n1252) );
  AOI22_X1 U1338 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .A2(n1440), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .B2(n1439), .ZN(n1251) );
  NAND2_X1 U1339 ( .A1(n1252), .A2(n1251), .ZN(n1299) );
  AOI22_X1 U1340 ( .A1(n1317), .A2(n1460), .B1(n1466), .B2(n1299), .ZN(n1288)
         );
  OAI21_X1 U1341 ( .B1(n1310), .B2(n1450), .A(n1288), .ZN(n1253) );
  INV_X1 U1342 ( .A(n1253), .ZN(n1254) );
  AND2_X1 U1343 ( .A1(n1254), .A2(n1485), .ZN(n1263) );
  AOI22_X1 U1344 ( .A1(n1438), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .B1(n1437), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .ZN(n1255) );
  OAI21_X1 U1345 ( .B1(n1429), .B2(n1991), .A(n1255), .ZN(n1256) );
  AOI21_X1 U1346 ( .B1(n1440), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .A(n1256), .ZN(n1468) );
  AOI22_X1 U1347 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .A2(n1437), .B1(n1438), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .ZN(n1257) );
  OAI21_X1 U1348 ( .B1(n1980), .B2(n1429), .A(n1257), .ZN(n1258) );
  AOI21_X1 U1349 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .B2(n1440), .A(n1258), .ZN(n1465) );
  AOI22_X1 U1350 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .A2(n1438), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .B2(n1437), .ZN(n1259) );
  OAI21_X1 U1351 ( .B1(n1971), .B2(n1429), .A(n1259), .ZN(n1260) );
  AOI21_X1 U1352 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .B2(n1440), .A(n1260), .ZN(n1463) );
  AOI222_X1 U1353 ( .A1(n1466), .A2(n1468), .B1(n1464), .B2(n1465), .C1(n1462), 
        .C2(n1463), .ZN(n1261) );
  NOR2_X1 U1354 ( .A1(n1261), .A2(n1485), .ZN(n1262) );
  OR3_X1 U1355 ( .A1(n1264), .A2(n1263), .A3(n1262), .ZN(n1326) );
  INV_X1 U1356 ( .A(n1326), .ZN(n1514) );
  OR3_X1 U1357 ( .A1(n1327), .A2(n1515), .A3(n1514), .ZN(n1516) );
  INV_X1 U1358 ( .A(n1516), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358) );
  AOI221_X1 U1359 ( .B1(n1268), .B2(n1981), .C1(n1267), .C2(n2018), .A(n1265), 
        .ZN(n1286) );
  NAND2_X1 U1360 ( .A1(n1446), .A2(n1286), .ZN(n1425) );
  INV_X1 U1361 ( .A(n1425), .ZN(n1305) );
  OAI221_X1 U1362 ( .B1(n1268), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .C1(n1267), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_), .A(n1266), .ZN(n1269) );
  OAI21_X1 U1363 ( .B1(n1426), .B2(n2018), .A(n1269), .ZN(n1318) );
  AOI22_X1 U1364 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .A2(n1438), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .B2(n1437), .ZN(n1271) );
  AOI22_X1 U1365 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .A2(n1439), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .B2(n1440), .ZN(n1270) );
  NAND2_X1 U1366 ( .A1(n1271), .A2(n1270), .ZN(n1374) );
  AOI22_X1 U1367 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .A2(n1438), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .B2(n1437), .ZN(n1273) );
  AOI22_X1 U1368 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_), .A2(n1439), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .B2(n1440), .ZN(n1272) );
  NAND2_X1 U1369 ( .A1(n1273), .A2(n1272), .ZN(n1287) );
  AOI22_X1 U1370 ( .A1(n1446), .A2(n1374), .B1(n1287), .B2(n1444), .ZN(n1424)
         );
  NAND4_X1 U1371 ( .A1(n1310), .A2(n1291), .A3(n1274), .A4(n1424), .ZN(n1304)
         );
  OAI22_X1 U1372 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .A2(n1427), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_), .B2(n1426), .ZN(n1276) );
  OAI22_X1 U1373 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .A2(n1428), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .B2(n1429), .ZN(n1275) );
  NOR2_X1 U1374 ( .A1(n1276), .A2(n1275), .ZN(n1449) );
  INV_X1 U1375 ( .A(n1449), .ZN(n1322) );
  OAI22_X1 U1376 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .A2(n1429), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .B2(n1427), .ZN(n1277) );
  AOI21_X1 U1377 ( .B1(n1437), .B2(n2007), .A(n1277), .ZN(n1278) );
  OAI21_X1 U1378 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .B2(n1428), .A(n1278), .ZN(n1298) );
  AOI22_X1 U1379 ( .A1(n1446), .A2(n1322), .B1(n1298), .B2(n1444), .ZN(n1474)
         );
  AOI22_X1 U1380 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .A2(n1437), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .B2(n1438), .ZN(n1280) );
  AOI22_X1 U1381 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .A2(n1440), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .B2(n1439), .ZN(n1279) );
  NAND2_X1 U1382 ( .A1(n1280), .A2(n1279), .ZN(n1377) );
  AOI22_X1 U1383 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .A2(n1437), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .B2(n1438), .ZN(n1282) );
  AOI22_X1 U1384 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_), .A2(n1440), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .B2(n1439), .ZN(n1281) );
  NAND2_X1 U1385 ( .A1(n1282), .A2(n1281), .ZN(n1306) );
  AOI22_X1 U1386 ( .A1(n1446), .A2(n1377), .B1(n1306), .B2(n1444), .ZN(n1420)
         );
  INV_X1 U1387 ( .A(n1420), .ZN(n1283) );
  OR3_X1 U1388 ( .A1(n1362), .A2(n1474), .A3(n1283), .ZN(n1296) );
  OAI22_X1 U1389 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .A2(n1426), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .B2(n1427), .ZN(n1284) );
  AOI21_X1 U1390 ( .B1(n1440), .B2(n2006), .A(n1284), .ZN(n1285) );
  OAI21_X1 U1391 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .B2(n1429), .A(n1285), .ZN(n1297) );
  INV_X1 U1392 ( .A(n1297), .ZN(n1301) );
  NOR3_X1 U1393 ( .A1(n1363), .A2(n1301), .A3(n1299), .ZN(n1289) );
  OAI22_X1 U1394 ( .A1(n1444), .A2(n1287), .B1(n1286), .B2(n1446), .ZN(n1375)
         );
  OAI211_X1 U1395 ( .C1(n1289), .C2(n1450), .A(n1288), .B(n1375), .ZN(n1295)
         );
  NOR3_X1 U1396 ( .A1(n1290), .A2(n1460), .A3(n1374), .ZN(n1293) );
  INV_X1 U1397 ( .A(n1466), .ZN(n1479) );
  INV_X1 U1398 ( .A(n1317), .ZN(n1478) );
  AOI22_X1 U1399 ( .A1(n1443), .A2(n1307), .B1(n1444), .B2(n1291), .ZN(n1292)
         );
  OAI211_X1 U1400 ( .C1(n1363), .C2(n1478), .A(n1292), .B(n1448), .ZN(n1413)
         );
  OAI21_X1 U1401 ( .B1(n1293), .B2(n1479), .A(n1413), .ZN(n1294) );
  AOI211_X1 U1402 ( .C1(n1475), .C2(n1296), .A(n1295), .B(n1294), .ZN(n1302)
         );
  AOI22_X1 U1403 ( .A1(n1446), .A2(n1298), .B1(n1297), .B2(n1444), .ZN(n1319)
         );
  OAI221_X1 U1404 ( .B1(n1475), .B2(n1318), .C1(n1443), .C2(n1319), .A(n1448), 
        .ZN(n1454) );
  INV_X1 U1405 ( .A(n1299), .ZN(n1314) );
  AOI221_X1 U1406 ( .B1(n1444), .B2(n1310), .C1(n1446), .C2(n1314), .A(n1443), 
        .ZN(n1300) );
  INV_X1 U1407 ( .A(n1300), .ZN(n1467) );
  OAI221_X1 U1408 ( .B1(n1446), .B2(n1318), .C1(n1444), .C2(n1301), .A(n1475), 
        .ZN(n1484) );
  NAND4_X1 U1409 ( .A1(n1302), .A2(n1454), .A3(n1467), .A4(n1484), .ZN(n1303)
         );
  NOR4_X1 U1410 ( .A1(n1305), .A2(n1318), .A3(n1304), .A4(n1303), .ZN(n1325)
         );
  INV_X1 U1411 ( .A(n1306), .ZN(n1380) );
  NAND3_X1 U1412 ( .A1(n1463), .A2(n1380), .A3(n1408), .ZN(n1309) );
  OAI22_X1 U1413 ( .A1(n1443), .A2(n1425), .B1(n1307), .B2(n1478), .ZN(n1308)
         );
  AOI211_X1 U1414 ( .C1(n1469), .C2(n1309), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sticky_q_1_), .B(n1308), .ZN(n1324) );
  AOI22_X1 U1415 ( .A1(n1466), .A2(n1463), .B1(n1465), .B2(n1469), .ZN(n1312)
         );
  OAI21_X1 U1416 ( .B1(n1310), .B2(n1478), .A(n1485), .ZN(n1311) );
  OAI211_X1 U1417 ( .C1(n1460), .C2(n1450), .A(n1312), .B(n1311), .ZN(n1313)
         );
  AOI21_X1 U1418 ( .B1(n1462), .B2(n1314), .A(n1313), .ZN(n1370) );
  NAND2_X1 U1419 ( .A1(n1466), .A2(n1473), .ZN(n1419) );
  OAI22_X1 U1420 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .A2(n1427), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .B2(n1426), .ZN(n1316) );
  OAI22_X1 U1421 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .A2(n1428), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .B2(n1429), .ZN(n1315) );
  NOR2_X1 U1422 ( .A1(n1316), .A2(n1315), .ZN(n1480) );
  OAI221_X1 U1423 ( .B1(n1473), .B2(n1318), .C1(n1485), .C2(n1480), .A(n1317), 
        .ZN(n1321) );
  NAND3_X1 U1424 ( .A1(n1473), .A2(n1443), .A3(n1319), .ZN(n1320) );
  OAI211_X1 U1425 ( .C1(n1419), .C2(n1322), .A(n1321), .B(n1320), .ZN(n1360)
         );
  AOI22_X1 U1426 ( .A1(n1370), .A2(n1515), .B1(n1516), .B2(n1360), .ZN(n1323)
         );
  OAI211_X1 U1427 ( .C1(n1325), .C2(n1485), .A(n1324), .B(n1323), .ZN(n1385)
         );
  INV_X1 U1428 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[8]), .ZN(n1331) );
  OR2_X1 U1429 ( .A1(n1515), .A2(n1326), .ZN(n1350) );
  INV_X1 U1430 ( .A(n1327), .ZN(n1328) );
  OR2_X1 U1431 ( .A1(n1328), .A2(n1515), .ZN(n1329) );
  AND2_X1 U1432 ( .A1(n1350), .A2(n1329), .ZN(n1512) );
  NAND2_X1 U1433 ( .A1(n1512), .A2(C178_DATA3_8), .ZN(n1330) );
  OAI21_X1 U1434 ( .B1(n1331), .B2(n1350), .A(n1330), .ZN(n1358) );
  INV_X1 U1435 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[7]), .ZN(n1333) );
  NAND2_X1 U1436 ( .A1(n1512), .A2(C178_DATA3_7), .ZN(n1332) );
  OAI21_X1 U1437 ( .B1(n1333), .B2(n1350), .A(n1332), .ZN(n1524) );
  INV_X1 U1438 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[4]), .ZN(n1335) );
  NAND2_X1 U1439 ( .A1(n1512), .A2(C178_DATA3_4), .ZN(n1334) );
  OAI21_X1 U1440 ( .B1(n1335), .B2(n1350), .A(n1334), .ZN(n1612) );
  INV_X1 U1441 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[3]), .ZN(n1337) );
  NAND2_X1 U1442 ( .A1(n1512), .A2(C178_DATA3_3), .ZN(n1336) );
  OAI21_X1 U1443 ( .B1(n1337), .B2(n1350), .A(n1336), .ZN(n1525) );
  INV_X1 U1444 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[5]), .ZN(n1339) );
  NAND2_X1 U1445 ( .A1(n1512), .A2(C178_DATA3_5), .ZN(n1338) );
  OAI21_X1 U1446 ( .B1(n1339), .B2(n1350), .A(n1338), .ZN(n1534) );
  AND4_X1 U1447 ( .A1(n1524), .A2(n1612), .A3(n1525), .A4(n1534), .ZN(n1349)
         );
  INV_X1 U1448 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[0]), .ZN(n1341) );
  NAND2_X1 U1449 ( .A1(n1512), .A2(n1341), .ZN(n1340) );
  OAI21_X1 U1450 ( .B1(n1341), .B2(n1350), .A(n1340), .ZN(n1607) );
  INV_X1 U1451 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[1]), .ZN(n1343) );
  NAND2_X1 U1452 ( .A1(n1512), .A2(C178_DATA3_1), .ZN(n1342) );
  OAI21_X1 U1453 ( .B1(n1343), .B2(n1350), .A(n1342), .ZN(n1521) );
  AND2_X1 U1454 ( .A1(n1607), .A2(n1521), .ZN(n1348) );
  INV_X1 U1455 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[2]), .ZN(n1345) );
  NAND2_X1 U1456 ( .A1(n1512), .A2(C178_DATA3_2), .ZN(n1344) );
  OAI21_X1 U1457 ( .B1(n1345), .B2(n1350), .A(n1344), .ZN(n1407) );
  INV_X1 U1458 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[6]), .ZN(n1347) );
  NAND2_X1 U1459 ( .A1(n1512), .A2(C178_DATA3_6), .ZN(n1346) );
  OAI21_X1 U1460 ( .B1(n1347), .B2(n1350), .A(n1346), .ZN(n1533) );
  AND4_X1 U1461 ( .A1(n1349), .A2(n1348), .A3(n1407), .A4(n1533), .ZN(n1357)
         );
  INV_X1 U1462 ( .A(n1350), .ZN(n1351) );
  NAND2_X1 U1463 ( .A1(n1351), .A2(n1352), .ZN(n1356) );
  XOR2_X1 U1464 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(n1352), .Z(n1353) );
  XOR2_X1 U1465 ( .A(DP_OP_218J1_126_2335_n2), .B(n1353), .Z(n1354) );
  NAND2_X1 U1466 ( .A1(n1512), .A2(n1354), .ZN(n1355) );
  INV_X1 U1467 ( .A(n1370), .ZN(n1359) );
  OR2_X1 U1468 ( .A1(n1359), .A2(n1512), .ZN(n1369) );
  INV_X1 U1469 ( .A(n1360), .ZN(n1361) );
  OR2_X1 U1470 ( .A1(n1361), .A2(n1516), .ZN(n1368) );
  NAND3_X1 U1471 ( .A1(n1475), .A2(n1362), .A3(n1485), .ZN(n1366) );
  OAI22_X1 U1472 ( .A1(n1409), .A2(n1450), .B1(n1479), .B2(n1408), .ZN(n1364)
         );
  OAI221_X1 U1473 ( .B1(n1364), .B2(n1363), .C1(n1364), .C2(n1462), .A(n1473), 
        .ZN(n1365) );
  OAI211_X1 U1474 ( .C1(n1414), .C2(n1410), .A(n1366), .B(n1365), .ZN(n1496)
         );
  NAND2_X1 U1475 ( .A1(n1515), .A2(n1496), .ZN(n1367) );
  NAND4_X1 U1476 ( .A1(n1578), .A2(n1369), .A3(n1368), .A4(n1367), .ZN(n1387)
         );
  NOR2_X1 U1477 ( .A1(n1385), .A2(n1387), .ZN(n1621) );
  OAI221_X1 U1478 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_1_), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_), .C1(n2031), .C2(n1994), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__1_), .ZN(n1391) );
  NAND2_X1 U1479 ( .A1(n2030), .A2(n1994), .ZN(n1388) );
  INV_X1 U1480 ( .A(n1512), .ZN(n1472) );
  NAND2_X1 U1481 ( .A1(n1472), .A2(n1496), .ZN(n1383) );
  NAND2_X1 U1482 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .A2(n1370), .ZN(n1382) );
  AOI22_X1 U1483 ( .A1(n1438), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .B1(n1437), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .ZN(n1371) );
  OAI21_X1 U1484 ( .B1(n1974), .B2(n1429), .A(n1371), .ZN(n1372) );
  AOI21_X1 U1485 ( .B1(n1440), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_), .A(n1372), .ZN(n1422) );
  INV_X1 U1486 ( .A(n1422), .ZN(n1373) );
  OAI22_X1 U1487 ( .A1(n1448), .A2(n1374), .B1(n1414), .B2(n1373), .ZN(n1379)
         );
  OAI21_X1 U1488 ( .B1(n1443), .B2(n1375), .A(n1485), .ZN(n1376) );
  OAI21_X1 U1489 ( .B1(n1419), .B2(n1377), .A(n1376), .ZN(n1378) );
  AOI211_X1 U1490 ( .C1(n1464), .C2(n1380), .A(n1379), .B(n1378), .ZN(n1493)
         );
  NAND2_X1 U1491 ( .A1(n1515), .A2(n1493), .ZN(n1381) );
  AND3_X1 U1492 ( .A1(n1383), .A2(n1382), .A3(n1381), .ZN(n1384) );
  AND2_X1 U1493 ( .A1(n1578), .A2(n1384), .ZN(n1628) );
  INV_X1 U1494 ( .A(n1628), .ZN(n1392) );
  NOR2_X1 U1495 ( .A1(n1392), .A2(n1385), .ZN(n1386) );
  NOR2_X1 U1496 ( .A1(n1388), .A2(n1386), .ZN(n1389) );
  OAI22_X1 U1497 ( .A1(n1389), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__2_), .B1(n1388), .B2(n1387), .ZN(n1390) );
  OAI21_X1 U1498 ( .B1(n1621), .B2(n1391), .A(n1390), .ZN(n1393) );
  NAND2_X1 U1499 ( .A1(n1392), .A2(n1393), .ZN(n1584) );
  OAI211_X1 U1500 ( .C1(n1393), .C2(n1392), .A(n1584), .B(n1567), .ZN(n1394)
         );
  INV_X1 U1501 ( .A(n1394), .ZN(result_o[0]) );
  INV_X1 U1502 ( .A(n1762), .ZN(n1754) );
  NAND2_X1 U1503 ( .A1(n1744), .A2(n1395), .ZN(n1755) );
  INV_X1 U1504 ( .A(n1755), .ZN(n1398) );
  AOI221_X1 U1505 ( .B1(n1741), .B2(n1743), .C1(n1397), .C2(n1396), .A(n1744), 
        .ZN(n1753) );
  AOI22_X1 U1506 ( .A1(n1754), .A2(n1398), .B1(n1753), .B2(n1762), .ZN(n1773)
         );
  NOR2_X1 U1507 ( .A1(n1756), .A2(n1773), .ZN(n1813) );
  INV_X1 U1508 ( .A(n1810), .ZN(n1817) );
  NOR3_X1 U1509 ( .A1(n1811), .A2(n1813), .A3(n1817), .ZN(n1814) );
  NOR2_X1 U1510 ( .A1(n1762), .A2(n1756), .ZN(n1751) );
  INV_X1 U1511 ( .A(n1751), .ZN(n1760) );
  NAND2_X1 U1512 ( .A1(n1400), .A2(n1399), .ZN(n1801) );
  NAND2_X1 U1513 ( .A1(n1762), .A2(n1781), .ZN(n1746) );
  OAI22_X1 U1514 ( .A1(n1778), .A2(n1760), .B1(n1801), .B2(n1746), .ZN(n1816)
         );
  NOR2_X1 U1515 ( .A1(n1817), .A2(n1816), .ZN(n1815) );
  NAND2_X1 U1516 ( .A1(n1814), .A2(n1815), .ZN(intadd_0_CI) );
  INV_X1 U1517 ( .A(intadd_1_SUM_0_), .ZN(intadd_0_A_2_) );
  INV_X1 U1518 ( .A(intadd_1_SUM_1_), .ZN(intadd_0_A_3_) );
  INV_X1 U1519 ( .A(intadd_1_SUM_2_), .ZN(intadd_0_A_4_) );
  INV_X1 U1520 ( .A(intadd_1_SUM_3_), .ZN(intadd_0_A_5_) );
  INV_X1 U1521 ( .A(intadd_1_SUM_4_), .ZN(intadd_0_A_6_) );
  INV_X1 U1522 ( .A(intadd_1_SUM_5_), .ZN(intadd_0_A_7_) );
  INV_X1 U1523 ( .A(intadd_1_SUM_6_), .ZN(intadd_0_A_8_) );
  INV_X1 U1524 ( .A(intadd_1_SUM_7_), .ZN(intadd_0_A_9_) );
  INV_X1 U1525 ( .A(intadd_1_SUM_8_), .ZN(intadd_0_A_10_) );
  INV_X1 U1526 ( .A(intadd_1_SUM_9_), .ZN(intadd_0_A_11_) );
  INV_X1 U1527 ( .A(intadd_1_SUM_10_), .ZN(intadd_0_A_12_) );
  INV_X1 U1528 ( .A(intadd_1_SUM_11_), .ZN(intadd_0_A_13_) );
  NAND2_X1 U1529 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__1_), .A2(n1667), .ZN(n1736) );
  INV_X1 U1530 ( .A(n1736), .ZN(n1707) );
  NAND2_X1 U1531 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__0_), .A2(n1667), .ZN(n1735) );
  INV_X1 U1532 ( .A(n1735), .ZN(n1740) );
  NAND4_X1 U1533 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A3(n1707), .A4(n1740), .ZN(n1737) );
  INV_X1 U1534 ( .A(n1737), .ZN(intadd_1_CI) );
  NOR2_X1 U1535 ( .A1(intadd_3_n1), .A2(n2022), .ZN(n1404) );
  INV_X1 U1536 ( .A(n1401), .ZN(n1403) );
  INV_X1 U1537 ( .A(n1648), .ZN(n1402) );
  AOI21_X1 U1538 ( .B1(n1404), .B2(n1403), .A(n1402), .ZN(n1647) );
  INV_X1 U1539 ( .A(n1647), .ZN(intadd_2_A_7_) );
  INV_X1 U1540 ( .A(intadd_3_SUM_0_), .ZN(n1405) );
  NOR2_X1 U1541 ( .A1(n1406), .A2(n1405), .ZN(n1640) );
  INV_X1 U1542 ( .A(n1640), .ZN(intadd_2_B_0_) );
  INV_X1 U1543 ( .A(n1407), .ZN(n1615) );
  NAND2_X1 U1544 ( .A1(n1578), .A2(n1615), .ZN(n1574) );
  NAND2_X1 U1545 ( .A1(n1578), .A2(n1607), .ZN(n1528) );
  OAI222_X1 U1546 ( .A1(n1479), .A2(n1410), .B1(n1448), .B2(n1409), .C1(n1408), 
        .C2(n1450), .ZN(n1411) );
  INV_X1 U1547 ( .A(n1411), .ZN(n1412) );
  OR2_X1 U1548 ( .A1(n1412), .A2(n1485), .ZN(n1418) );
  OAI22_X1 U1549 ( .A1(n1415), .A2(n1414), .B1(n1473), .B2(n1413), .ZN(n1416)
         );
  INV_X1 U1550 ( .A(n1416), .ZN(n1417) );
  NAND2_X1 U1551 ( .A1(n1418), .A2(n1417), .ZN(n1505) );
  INV_X1 U1552 ( .A(n1419), .ZN(n1423) );
  NOR2_X1 U1553 ( .A1(n1475), .A2(n1485), .ZN(n1421) );
  AOI22_X1 U1554 ( .A1(n1423), .A2(n1422), .B1(n1421), .B2(n1420), .ZN(n1434)
         );
  OAI221_X1 U1555 ( .B1(n1475), .B2(n1425), .C1(n1443), .C2(n1424), .A(n1485), 
        .ZN(n1433) );
  OAI22_X1 U1556 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .A2(n1427), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .B2(n1426), .ZN(n1431) );
  OAI22_X1 U1557 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .A2(n1429), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_), .B2(n1428), .ZN(n1430) );
  OAI21_X1 U1558 ( .B1(n1431), .B2(n1430), .A(n1469), .ZN(n1432) );
  NAND3_X1 U1559 ( .A1(n1434), .A2(n1433), .A3(n1432), .ZN(n1517) );
  NOR2_X1 U1560 ( .A1(n1512), .A2(n1517), .ZN(n1458) );
  AOI22_X1 U1561 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_), .A2(n1438), .B1(n1437), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_), .ZN(n1436) );
  AOI22_X1 U1562 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .A2(n1440), .B1(n1439), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .ZN(n1435) );
  NAND2_X1 U1563 ( .A1(n1436), .A2(n1435), .ZN(n1445) );
  AOI22_X1 U1564 ( .A1(n1438), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .B1(n1437), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_), .ZN(n1442) );
  AOI22_X1 U1565 ( .A1(n1440), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .B1(n1439), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .ZN(n1441) );
  NAND2_X1 U1566 ( .A1(n1442), .A2(n1441), .ZN(n1477) );
  AOI221_X1 U1567 ( .B1(n1446), .B2(n1445), .C1(n1444), .C2(n1477), .A(n1443), 
        .ZN(n1447) );
  INV_X1 U1568 ( .A(n1447), .ZN(n1453) );
  OAI22_X1 U1569 ( .A1(n1480), .A2(n1450), .B1(n1449), .B2(n1448), .ZN(n1451)
         );
  INV_X1 U1570 ( .A(n1451), .ZN(n1452) );
  NAND2_X1 U1571 ( .A1(n1453), .A2(n1452), .ZN(n1455) );
  MUX2_X1 U1572 ( .A(n1455), .B(n1454), .S(n1485), .Z(n1513) );
  INV_X1 U1573 ( .A(n1513), .ZN(n1456) );
  AND2_X1 U1574 ( .A1(n1515), .A2(n1456), .ZN(n1457) );
  AOI211_X1 U1575 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .C2(n1505), .A(n1458), .B(n1457), .ZN(n1459) );
  AND2_X1 U1576 ( .A1(n1578), .A2(n1459), .ZN(n1622) );
  INV_X1 U1577 ( .A(n1460), .ZN(n1461) );
  AOI222_X1 U1578 ( .A1(n1466), .A2(n1465), .B1(n1464), .B2(n1463), .C1(n1462), 
        .C2(n1461), .ZN(n1471) );
  AOI22_X1 U1579 ( .A1(n1469), .A2(n1468), .B1(n1485), .B2(n1467), .ZN(n1470)
         );
  OAI21_X1 U1580 ( .B1(n1471), .B2(n1485), .A(n1470), .ZN(n1507) );
  INV_X1 U1581 ( .A(n1507), .ZN(n1501) );
  NAND2_X1 U1582 ( .A1(n1472), .A2(n1501), .ZN(n1491) );
  OAI21_X1 U1583 ( .B1(n1475), .B2(n1474), .A(n1473), .ZN(n1476) );
  INV_X1 U1584 ( .A(n1476), .ZN(n1483) );
  OAI22_X1 U1585 ( .A1(n1480), .A2(n1479), .B1(n1478), .B2(n1477), .ZN(n1481)
         );
  INV_X1 U1586 ( .A(n1481), .ZN(n1482) );
  AND2_X1 U1587 ( .A1(n1483), .A2(n1482), .ZN(n1488) );
  INV_X1 U1588 ( .A(n1484), .ZN(n1486) );
  AND2_X1 U1589 ( .A1(n1486), .A2(n1485), .ZN(n1487) );
  OR2_X1 U1590 ( .A1(n1488), .A2(n1487), .ZN(n1498) );
  NAND2_X1 U1591 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .A2(n1498), .ZN(n1490) );
  NAND2_X1 U1592 ( .A1(n1515), .A2(n1505), .ZN(n1489) );
  AND3_X1 U1593 ( .A1(n1491), .A2(n1490), .A3(n1489), .ZN(n1492) );
  AND2_X1 U1594 ( .A1(n1578), .A2(n1492), .ZN(n1605) );
  INV_X1 U1595 ( .A(n1493), .ZN(n1500) );
  NOR2_X1 U1596 ( .A1(n1512), .A2(n1500), .ZN(n1495) );
  AND2_X1 U1597 ( .A1(n1498), .A2(n1515), .ZN(n1494) );
  AOI211_X1 U1598 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .C2(n1496), .A(n1495), .B(n1494), .ZN(n1497) );
  AND2_X1 U1599 ( .A1(n1578), .A2(n1497), .ZN(n1629) );
  NOR2_X1 U1600 ( .A1(n1629), .A2(n1584), .ZN(n1585) );
  INV_X1 U1601 ( .A(n1498), .ZN(n1499) );
  OR2_X1 U1602 ( .A1(n1499), .A2(n1512), .ZN(n1504) );
  OR2_X1 U1603 ( .A1(n1500), .A2(n1516), .ZN(n1503) );
  NAND2_X1 U1604 ( .A1(n1515), .A2(n1501), .ZN(n1502) );
  NAND4_X1 U1605 ( .A1(n1578), .A2(n1504), .A3(n1503), .A4(n1502), .ZN(n1618)
         );
  NAND2_X1 U1606 ( .A1(n1585), .A2(n1618), .ZN(n1587) );
  NOR2_X1 U1607 ( .A1(n1605), .A2(n1587), .ZN(n1588) );
  INV_X1 U1608 ( .A(n1505), .ZN(n1506) );
  OR2_X1 U1609 ( .A1(n1506), .A2(n1512), .ZN(n1511) );
  OR2_X1 U1610 ( .A1(n1507), .A2(n1516), .ZN(n1510) );
  INV_X1 U1611 ( .A(n1517), .ZN(n1508) );
  NAND2_X1 U1612 ( .A1(n1515), .A2(n1508), .ZN(n1509) );
  NAND4_X1 U1613 ( .A1(n1578), .A2(n1511), .A3(n1510), .A4(n1509), .ZN(n1619)
         );
  NAND2_X1 U1614 ( .A1(n1588), .A2(n1619), .ZN(n1590) );
  NOR2_X1 U1615 ( .A1(n1622), .A2(n1590), .ZN(n1592) );
  OR2_X1 U1616 ( .A1(n1513), .A2(n1512), .ZN(n1520) );
  NAND2_X1 U1617 ( .A1(n1515), .A2(n1514), .ZN(n1519) );
  OR2_X1 U1618 ( .A1(n1517), .A2(n1516), .ZN(n1518) );
  NAND4_X1 U1619 ( .A1(n1578), .A2(n1520), .A3(n1519), .A4(n1518), .ZN(n1626)
         );
  NAND2_X1 U1620 ( .A1(n1592), .A2(n1626), .ZN(n1591) );
  NOR2_X1 U1621 ( .A1(n1528), .A2(n1591), .ZN(n1577) );
  INV_X1 U1622 ( .A(n1521), .ZN(n1522) );
  NAND2_X1 U1623 ( .A1(n1578), .A2(n1522), .ZN(n1606) );
  NAND2_X1 U1624 ( .A1(n1577), .A2(n1606), .ZN(n1576) );
  INV_X1 U1625 ( .A(n1576), .ZN(n1575) );
  NAND2_X1 U1626 ( .A1(n1574), .A2(n1575), .ZN(n1573) );
  INV_X1 U1627 ( .A(n1573), .ZN(n1526) );
  INV_X1 U1628 ( .A(n1525), .ZN(n1613) );
  AND2_X1 U1629 ( .A1(n1526), .A2(n1525), .ZN(n1570) );
  NAND2_X1 U1630 ( .A1(n1570), .A2(n1612), .ZN(n1531) );
  INV_X1 U1631 ( .A(n1534), .ZN(n1608) );
  AND2_X1 U1632 ( .A1(n1578), .A2(n1608), .ZN(n1523) );
  NAND2_X1 U1633 ( .A1(n1531), .A2(n1523), .ZN(n1571) );
  INV_X1 U1634 ( .A(n1571), .ZN(n1539) );
  INV_X1 U1635 ( .A(n1524), .ZN(n1609) );
  NOR2_X1 U1636 ( .A1(n1526), .A2(n1525), .ZN(n1527) );
  AND2_X1 U1637 ( .A1(n1578), .A2(n1527), .ZN(n1569) );
  XNOR2_X1 U1638 ( .A(n1591), .B(n1528), .ZN(n1595) );
  NAND2_X1 U1639 ( .A1(n1606), .A2(n1574), .ZN(n1529) );
  OR4_X1 U1640 ( .A1(n1609), .A2(n1569), .A3(n1595), .A4(n1529), .ZN(n1538) );
  INV_X1 U1641 ( .A(n1578), .ZN(n1530) );
  OR3_X1 U1642 ( .A1(n1530), .A2(n1612), .A3(n1570), .ZN(n1532) );
  AND2_X1 U1643 ( .A1(n1532), .A2(n1531), .ZN(n1583) );
  INV_X1 U1644 ( .A(n1583), .ZN(n1600) );
  INV_X1 U1645 ( .A(n1533), .ZN(n1611) );
  AND2_X1 U1646 ( .A1(n1578), .A2(n1611), .ZN(n1536) );
  AND2_X1 U1647 ( .A1(n1612), .A2(n1534), .ZN(n1535) );
  NAND2_X1 U1648 ( .A1(n1570), .A2(n1535), .ZN(n1572) );
  AND2_X1 U1649 ( .A1(n1536), .A2(n1572), .ZN(n1537) );
  NOR2_X1 U1650 ( .A1(n1611), .A2(n1572), .ZN(n1580) );
  OR2_X1 U1651 ( .A1(n1537), .A2(n1580), .ZN(n1602) );
  OR4_X1 U1652 ( .A1(n1539), .A2(n1538), .A3(n1600), .A4(n1602), .ZN(n1540) );
  NAND2_X1 U1653 ( .A1(n1540), .A2(n1578), .ZN(n1541) );
  AND2_X1 U1654 ( .A1(n1541), .A2(n1567), .ZN(status_o_OF_) );
  AND4_X1 U1655 ( .A1(n1544), .A2(n2014), .A3(n1543), .A4(n1542), .ZN(
        intadd_3_CI) );
  AND2_X1 U1656 ( .A1(out_valid_o), .A2(
        gen_operation_groups_0__i_opgroup_block_fmt_outputs_4__tag_), .ZN(
        tag_o) );
  INV_X1 U1657 ( .A(n1864), .ZN(n1545) );
  OR2_X1 U1658 ( .A1(n1545), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__exponent__7_), .ZN(n994) );
  NOR3_X1 U1659 ( .A1(n1547), .A2(n1987), .A3(n1546), .ZN(n1654) );
  NAND2_X1 U1660 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .A2(n1654), .ZN(n1550) );
  NAND2_X1 U1661 ( .A1(n1652), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .ZN(n1548) );
  XNOR2_X1 U1662 ( .A(n1550), .B(n1548), .ZN(intadd_2_B_2_) );
  INV_X1 U1663 ( .A(n1656), .ZN(n1564) );
  INV_X1 U1664 ( .A(intadd_2_A_2_), .ZN(n1641) );
  NAND2_X1 U1665 ( .A1(n1545), .A2(n1549), .ZN(n1658) );
  OAI222_X1 U1666 ( .A1(n2042), .A2(n1964), .B1(n1564), .B2(n1641), .C1(
        intadd_2_B_2_), .C2(n1658), .ZN(n904) );
  NOR2_X1 U1667 ( .A1(n1989), .A2(n1550), .ZN(n1552) );
  NAND2_X1 U1668 ( .A1(n1652), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .ZN(n1551) );
  XOR2_X1 U1669 ( .A(n1552), .B(n1551), .Z(intadd_2_B_3_) );
  INV_X1 U1670 ( .A(intadd_2_A_3_), .ZN(n1642) );
  OAI222_X1 U1671 ( .A1(n2044), .A2(n1964), .B1(n1564), .B2(n1642), .C1(
        intadd_2_B_3_), .C2(n1658), .ZN(n903) );
  NAND2_X1 U1672 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .A2(n1552), .ZN(n1554) );
  NAND2_X1 U1673 ( .A1(n1652), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .ZN(n1553) );
  XNOR2_X1 U1674 ( .A(n1554), .B(n1553), .ZN(intadd_2_B_4_) );
  INV_X1 U1675 ( .A(intadd_2_A_4_), .ZN(n1643) );
  OAI222_X1 U1676 ( .A1(n2045), .A2(n1964), .B1(n1564), .B2(n1643), .C1(
        intadd_2_B_4_), .C2(n1658), .ZN(n902) );
  NOR2_X1 U1677 ( .A1(n1990), .A2(n1554), .ZN(n1563) );
  AND2_X1 U1678 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .A2(n1563), .ZN(n1556) );
  NAND2_X1 U1679 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_), .A2(n1652), .ZN(n1555) );
  XOR2_X1 U1680 ( .A(n1556), .B(n1555), .Z(intadd_2_B_6_) );
  INV_X1 U1681 ( .A(intadd_2_A_6_), .ZN(n1646) );
  OAI222_X1 U1682 ( .A1(n2043), .A2(n1964), .B1(n1564), .B2(n1646), .C1(
        intadd_2_B_6_), .C2(n1658), .ZN(n900) );
  OAI222_X1 U1683 ( .A1(n2046), .A2(n1964), .B1(n1564), .B2(n1647), .C1(n2054), 
        .C2(n1658), .ZN(n899) );
  INV_X1 U1684 ( .A(n1649), .ZN(n1557) );
  OAI222_X1 U1685 ( .A1(n2047), .A2(n1964), .B1(n1564), .B2(n1650), .C1(n1557), 
        .C2(n1658), .ZN(n907) );
  NAND2_X1 U1686 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .A2(n1558), .ZN(n1561) );
  AOI21_X1 U1687 ( .B1(n1987), .B2(n1561), .A(n1559), .ZN(n1560) );
  OAI21_X1 U1688 ( .B1(n1987), .B2(n1561), .A(n1560), .ZN(intadd_2_CI) );
  OAI222_X1 U1689 ( .A1(n2041), .A2(n1964), .B1(n1564), .B2(n1640), .C1(
        intadd_2_CI), .C2(n1658), .ZN(n906) );
  NAND2_X1 U1690 ( .A1(n1652), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .ZN(n1562) );
  XOR2_X1 U1691 ( .A(n1563), .B(n1562), .Z(intadd_2_B_5_) );
  INV_X1 U1692 ( .A(intadd_2_A_5_), .ZN(n1645) );
  OAI222_X1 U1693 ( .A1(n2040), .A2(n1964), .B1(n1564), .B2(n1645), .C1(n1658), 
        .C2(intadd_2_B_5_), .ZN(n901) );
  NOR2_X1 U1694 ( .A1(n1566), .A2(n1565), .ZN(in_ready_o) );
  OR3_X1 U1695 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_), .A2(out_valid_o), .A3(n1637), .ZN(busy_o) );
  INV_X1 U1697 ( .A(n1567), .ZN(n1630) );
  INV_X1 U1698 ( .A(status_o_OF_), .ZN(n1568) );
  OAI21_X1 U1699 ( .B1(n1621), .B2(n1630), .A(n1568), .ZN(status_o_NX_) );
  NOR2_X1 U1700 ( .A1(n1570), .A2(n1569), .ZN(n1598) );
  NAND2_X1 U1701 ( .A1(n1572), .A2(n1571), .ZN(n1601) );
  OAI21_X1 U1702 ( .B1(n1575), .B2(n1574), .A(n1573), .ZN(n1597) );
  OAI21_X1 U1703 ( .B1(n1577), .B2(n1606), .A(n1576), .ZN(n1596) );
  NAND4_X1 U1704 ( .A1(n1595), .A2(n1601), .A3(n1597), .A4(n1596), .ZN(n1582)
         );
  NAND2_X1 U1705 ( .A1(n1578), .A2(n1609), .ZN(n1579) );
  XNOR2_X1 U1706 ( .A(n1580), .B(n1579), .ZN(n1604) );
  NAND3_X1 U1707 ( .A1(n1604), .A2(n1602), .A3(status_o_NX_), .ZN(n1581) );
  NOR4_X1 U1708 ( .A1(n1583), .A2(n1598), .A3(n1582), .A4(n1581), .ZN(
        status_o_UF_) );
  NAND2_X1 U1709 ( .A1(out_valid_o), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_1_), .ZN(n1635) );
  NOR2_X1 U1710 ( .A1(n1635), .A2(n2035), .ZN(status_o_NV_) );
  AOI211_X1 U1711 ( .C1(n1629), .C2(n1584), .A(n1585), .B(n1630), .ZN(
        result_o[1]) );
  OAI21_X1 U1712 ( .B1(n1585), .B2(n1618), .A(n1587), .ZN(n1586) );
  NOR2_X1 U1713 ( .A1(n1630), .A2(n1586), .ZN(result_o[2]) );
  AOI211_X1 U1714 ( .C1(n1605), .C2(n1587), .A(n1588), .B(n1630), .ZN(
        result_o[3]) );
  OAI21_X1 U1715 ( .B1(n1588), .B2(n1619), .A(n1590), .ZN(n1589) );
  NOR2_X1 U1716 ( .A1(n1630), .A2(n1589), .ZN(result_o[4]) );
  AOI211_X1 U1717 ( .C1(n1622), .C2(n1590), .A(n1592), .B(n1630), .ZN(
        result_o[5]) );
  OAI21_X1 U1718 ( .B1(n1592), .B2(n1626), .A(n1591), .ZN(n1593) );
  OAI22_X1 U1719 ( .A1(n1630), .A2(n1593), .B1(n1635), .B2(n2033), .ZN(
        result_o[6]) );
  INV_X1 U1720 ( .A(n1635), .ZN(n1594) );
  NAND2_X1 U1721 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__exponent__7_), .A2(n1594), .ZN(n1603) );
  OAI21_X1 U1722 ( .B1(n1595), .B2(n1630), .A(n1603), .ZN(result_o[7]) );
  OAI21_X1 U1723 ( .B1(n1596), .B2(n1630), .A(n1603), .ZN(result_o[8]) );
  OAI21_X1 U1724 ( .B1(n1597), .B2(n1630), .A(n1603), .ZN(result_o[9]) );
  INV_X1 U1725 ( .A(n1598), .ZN(n1599) );
  OAI21_X1 U1726 ( .B1(n1599), .B2(n1630), .A(n1603), .ZN(result_o[10]) );
  OAI21_X1 U1727 ( .B1(n1600), .B2(n1630), .A(n1603), .ZN(result_o[11]) );
  OAI21_X1 U1728 ( .B1(n1601), .B2(n1630), .A(n1603), .ZN(result_o[12]) );
  OAI21_X1 U1729 ( .B1(n1630), .B2(n1602), .A(n1603), .ZN(result_o[13]) );
  OAI21_X1 U1730 ( .B1(n1604), .B2(n1630), .A(n1603), .ZN(result_o[14]) );
  NOR3_X1 U1731 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__2_), .A3(n2030), .ZN(n1633) );
  INV_X1 U1732 ( .A(n1605), .ZN(n1625) );
  INV_X1 U1733 ( .A(n1606), .ZN(n1623) );
  INV_X1 U1734 ( .A(n1607), .ZN(n1610) );
  NAND4_X1 U1735 ( .A1(n1611), .A2(n1610), .A3(n1609), .A4(n1608), .ZN(n1617)
         );
  INV_X1 U1736 ( .A(n1612), .ZN(n1614) );
  NAND4_X1 U1737 ( .A1(n1615), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_1_), .A3(n1614), .A4(n1613), .ZN(n1616) );
  NOR4_X1 U1738 ( .A1(n1619), .A2(n1618), .A3(n1617), .A4(n1616), .ZN(n1620)
         );
  NAND4_X1 U1739 ( .A1(n1623), .A2(n1622), .A3(n1621), .A4(n1620), .ZN(n1624)
         );
  NOR3_X1 U1740 ( .A1(n1626), .A2(n1625), .A3(n1624), .ZN(n1627) );
  NAND3_X1 U1741 ( .A1(n1629), .A2(n1628), .A3(n1627), .ZN(n1632) );
  AOI21_X1 U1742 ( .B1(n2031), .B2(n1632), .A(n1630), .ZN(n1631) );
  OAI21_X1 U1743 ( .B1(n1633), .B2(n1632), .A(n1631), .ZN(n1634) );
  OAI21_X1 U1744 ( .B1(n1635), .B2(n2034), .A(n1634), .ZN(result_o[15]) );
  NAND2_X1 U1745 ( .A1(n1637), .A2(n1636), .ZN(n1638) );
  MUX2_X1 U1746 ( .A(operands_i[47]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__15_), .S(n1639), .Z(n993) );
  MUX2_X1 U1747 ( .A(operands_i[0]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__0_), .S(n1638), .Z(n992) );
  MUX2_X1 U1748 ( .A(operands_i[1]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__1_), .S(n1638), .Z(n991) );
  MUX2_X1 U1749 ( .A(operands_i[2]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__2_), .S(n1638), .Z(n990) );
  MUX2_X1 U1750 ( .A(operands_i[3]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__3_), .S(n1638), .Z(n989) );
  MUX2_X1 U1751 ( .A(operands_i[4]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__4_), .S(n1638), .Z(n988) );
  MUX2_X1 U1752 ( .A(operands_i[5]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__5_), .S(n1638), .Z(n987) );
  MUX2_X1 U1753 ( .A(operands_i[6]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_), .S(n1638), .Z(n986) );
  MUX2_X1 U1754 ( .A(operands_i[7]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_), .S(n1638), .Z(n985) );
  MUX2_X1 U1755 ( .A(operands_i[8]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_), .S(n1638), .Z(n984) );
  MUX2_X1 U1756 ( .A(operands_i[9]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_), .S(n1638), .Z(n983) );
  MUX2_X1 U1757 ( .A(operands_i[10]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_), .S(n1638), .Z(n982) );
  MUX2_X1 U1758 ( .A(operands_i[11]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_), .S(n1638), .Z(n981) );
  MUX2_X1 U1759 ( .A(operands_i[12]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_), .S(n1638), .Z(n980) );
  MUX2_X1 U1760 ( .A(operands_i[13]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_), .S(n1638), .Z(n979) );
  MUX2_X1 U1761 ( .A(operands_i[14]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .S(n1638), .Z(n978) );
  MUX2_X1 U1762 ( .A(operands_i[15]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__15_), .S(n1638), .Z(n977) );
  MUX2_X1 U1763 ( .A(operands_i[16]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .S(n1638), .Z(n976) );
  MUX2_X1 U1764 ( .A(operands_i[17]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .S(n1638), .Z(n975) );
  MUX2_X1 U1765 ( .A(operands_i[18]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .S(n1638), .Z(n974) );
  MUX2_X1 U1766 ( .A(operands_i[19]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_), .S(n1639), .Z(n973) );
  MUX2_X1 U1767 ( .A(operands_i[20]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__4_), .S(n1639), .Z(n972) );
  MUX2_X1 U1768 ( .A(operands_i[21]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__5_), .S(n1639), .Z(n971) );
  MUX2_X1 U1769 ( .A(operands_i[22]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__6_), .S(n1639), .Z(n970) );
  MUX2_X1 U1770 ( .A(operands_i[23]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_), .S(n1639), .Z(n969) );
  MUX2_X1 U1771 ( .A(operands_i[24]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_), .S(n1639), .Z(n968) );
  MUX2_X1 U1772 ( .A(operands_i[25]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_), .S(n1639), .Z(n967) );
  MUX2_X1 U1773 ( .A(operands_i[26]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__10_), .S(n1639), .Z(n966) );
  MUX2_X1 U1774 ( .A(operands_i[27]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__11_), .S(n1639), .Z(n965) );
  MUX2_X1 U1775 ( .A(operands_i[28]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_), .S(n1639), .Z(n964) );
  MUX2_X1 U1776 ( .A(operands_i[29]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_), .S(n1639), .Z(n963) );
  MUX2_X1 U1777 ( .A(operands_i[30]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .S(n1639), .Z(n962) );
  MUX2_X1 U1778 ( .A(operands_i[31]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__15_), .S(n1639), .Z(n961) );
  MUX2_X1 U1779 ( .A(operands_i[32]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .S(n1639), .Z(n960) );
  MUX2_X1 U1780 ( .A(operands_i[33]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_), .S(n1639), .Z(n959) );
  MUX2_X1 U1781 ( .A(operands_i[34]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_), .S(n1639), .Z(n958) );
  MUX2_X1 U1782 ( .A(operands_i[35]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_), .S(n1639), .Z(n957) );
  MUX2_X1 U1783 ( .A(operands_i[36]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_), .S(n1639), .Z(n956) );
  MUX2_X1 U1784 ( .A(operands_i[37]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_), .S(n1639), .Z(n955) );
  MUX2_X1 U1785 ( .A(operands_i[38]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .S(n1639), .Z(n954) );
  MUX2_X1 U1786 ( .A(operands_i[39]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .S(n1639), .Z(n953) );
  MUX2_X1 U1787 ( .A(operands_i[40]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_), .S(n1639), .Z(n952) );
  MUX2_X1 U1788 ( .A(operands_i[41]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .S(n1638), .Z(n951) );
  MUX2_X1 U1789 ( .A(operands_i[42]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .S(n1639), .Z(n950) );
  MUX2_X1 U1790 ( .A(operands_i[43]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .S(n1639), .Z(n949) );
  MUX2_X1 U1791 ( .A(operands_i[44]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .S(n1639), .Z(n948) );
  MUX2_X1 U1792 ( .A(operands_i[45]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .S(n1639), .Z(n947) );
  MUX2_X1 U1793 ( .A(operands_i[46]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_), .S(n1639), .Z(n946) );
  NAND2_X1 U1794 ( .A1(n2012), .A2(n1638), .ZN(n945) );
  MUX2_X1 U1795 ( .A(rnd_mode_i[2]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__2_), .S(n1639), .Z(n944) );
  MUX2_X1 U1796 ( .A(rnd_mode_i[0]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__0_), .S(n1639), .Z(n942) );
  MUX2_X1 U1797 ( .A(rnd_mode_i[1]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__1_), .S(n1639), .Z(n940) );
  MUX2_X1 U1798 ( .A(op_i[0]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_), .S(n1639), .Z(n937) );
  MUX2_X1 U1799 ( .A(op_i[1]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__1_), .S(n1639), .Z(n936) );
  MUX2_X1 U1800 ( .A(op_mod_i), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_1_), .S(n1639), .Z(n934) );
  AOI22_X1 U1801 ( .A1(n1964), .A2(n1650), .B1(n2025), .B2(n1864), .ZN(n933)
         );
  NOR2_X1 U1802 ( .A1(n1644), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_), .ZN(intadd_3_B_0_) );
  AOI22_X1 U1803 ( .A1(n1545), .A2(n1640), .B1(n1988), .B2(n1962), .ZN(n932)
         );
  NOR2_X1 U1804 ( .A1(n1644), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_), .ZN(intadd_3_B_1_) );
  NOR2_X1 U1805 ( .A1(n1644), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_), .ZN(intadd_3_B_2_) );
  AOI22_X1 U1806 ( .A1(n1964), .A2(n1641), .B1(n1972), .B2(n1962), .ZN(n930)
         );
  NOR2_X1 U1807 ( .A1(n1644), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_), .ZN(intadd_3_B_3_) );
  AOI22_X1 U1808 ( .A1(n1545), .A2(n1642), .B1(n1982), .B2(n1962), .ZN(n929)
         );
  NOR2_X1 U1809 ( .A1(n1644), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_), .ZN(intadd_3_B_4_) );
  AOI22_X1 U1810 ( .A1(n1964), .A2(n1643), .B1(n1973), .B2(n1962), .ZN(n928)
         );
  NOR2_X1 U1811 ( .A1(n1644), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_), .ZN(intadd_3_B_5_) );
  AOI22_X1 U1812 ( .A1(n1964), .A2(n1645), .B1(n2016), .B2(n1962), .ZN(n927)
         );
  AOI22_X1 U1813 ( .A1(n1545), .A2(n1646), .B1(n1985), .B2(n1962), .ZN(n926)
         );
  AOI22_X1 U1814 ( .A1(n1964), .A2(n1647), .B1(n2023), .B2(n1962), .ZN(n925)
         );
  AOI22_X1 U1815 ( .A1(n1545), .A2(n1648), .B1(n2019), .B2(n1962), .ZN(n924)
         );
  AOI21_X1 U1816 ( .B1(n1650), .B2(n1649), .A(intadd_2_A_0_), .ZN(n1651) );
  AOI22_X1 U1817 ( .A1(n1545), .A2(n1651), .B1(n2052), .B2(n1962), .ZN(n923)
         );
  NAND2_X1 U1818 ( .A1(n1652), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .ZN(n1653) );
  XOR2_X1 U1819 ( .A(n1654), .B(n1653), .Z(intadd_2_B_1_) );
  AOI22_X1 U1820 ( .A1(n1964), .A2(intadd_2_SUM_1_), .B1(n2003), .B2(n1962), 
        .ZN(n921) );
  AOI22_X1 U1821 ( .A1(n1545), .A2(intadd_2_SUM_2_), .B1(n2000), .B2(n1962), 
        .ZN(n920) );
  AOI22_X1 U1822 ( .A1(n1545), .A2(intadd_2_SUM_3_), .B1(n2001), .B2(n1962), 
        .ZN(n919) );
  AOI22_X1 U1823 ( .A1(n1545), .A2(intadd_2_SUM_4_), .B1(n2002), .B2(n1962), 
        .ZN(n918) );
  AOI22_X1 U1824 ( .A1(n1545), .A2(intadd_2_SUM_5_), .B1(n1999), .B2(n1962), 
        .ZN(n917) );
  AOI22_X1 U1825 ( .A1(n1545), .A2(intadd_2_SUM_6_), .B1(n2004), .B2(n1962), 
        .ZN(n916) );
  AOI22_X1 U1826 ( .A1(n1545), .A2(intadd_2_SUM_7_), .B1(n2005), .B2(n1962), 
        .ZN(n915) );
  AOI22_X1 U1827 ( .A1(n1545), .A2(n1655), .B1(n1998), .B2(n1864), .ZN(n913)
         );
  AOI22_X1 U1828 ( .A1(intadd_2_A_1_), .A2(n1656), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__2_), .B2(n1864), .ZN(n1657) );
  OAI21_X1 U1829 ( .B1(n1658), .B2(intadd_2_B_1_), .A(n1657), .ZN(n905) );
  NAND2_X1 U1830 ( .A1(n1659), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .ZN(n1660) );
  OAI21_X1 U1831 ( .B1(n1661), .B2(n1660), .A(n1667), .ZN(n1679) );
  INV_X1 U1832 ( .A(n1679), .ZN(n1731) );
  NOR2_X1 U1833 ( .A1(n1731), .A2(n2029), .ZN(intadd_7_A_0_) );
  NAND2_X1 U1834 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_), .A2(n1667), .ZN(n1727) );
  NOR2_X1 U1835 ( .A1(n2013), .A2(n1727), .ZN(intadd_7_B_0_) );
  OR3_X1 U1836 ( .A1(n1663), .A2(n1662), .A3(n2012), .ZN(n1732) );
  NAND2_X1 U1837 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__3_), .A2(n1667), .ZN(n1701) );
  NOR2_X1 U1838 ( .A1(n1732), .A2(n1701), .ZN(intadd_7_CI) );
  NAND2_X1 U1839 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__5_), .A2(n1667), .ZN(n1689) );
  NOR2_X1 U1840 ( .A1(n1984), .A2(n1689), .ZN(intadd_7_A_1_) );
  NOR2_X1 U1841 ( .A1(n1731), .A2(n2013), .ZN(n1666) );
  NOR2_X1 U1842 ( .A1(n2028), .A2(n1727), .ZN(n1665) );
  NAND2_X1 U1843 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__4_), .A2(n1667), .ZN(n1695) );
  NOR2_X1 U1844 ( .A1(n1732), .A2(n1695), .ZN(n1664) );
  FA_X1 U1845 ( .A(n1666), .B(n1665), .CI(n1664), .CO(intadd_7_A_2_), .S(
        intadd_7_B_1_) );
  NOR2_X1 U1846 ( .A1(n1731), .A2(n2028), .ZN(n1726) );
  NOR2_X1 U1847 ( .A1(n1984), .A2(n1727), .ZN(n1725) );
  NOR2_X1 U1848 ( .A1(n1732), .A2(n1689), .ZN(n1724) );
  NOR2_X1 U1849 ( .A1(n2029), .A2(n1689), .ZN(intadd_4_A_0_) );
  NOR2_X1 U1850 ( .A1(n1732), .A2(n1736), .ZN(intadd_4_B_0_) );
  NOR2_X1 U1851 ( .A1(n2013), .A2(n1695), .ZN(intadd_4_CI) );
  NOR4_X1 U1852 ( .A1(n1731), .A2(n1993), .A3(n1975), .A4(n1727), .ZN(
        intadd_4_B_1_) );
  NOR2_X1 U1853 ( .A1(n2028), .A2(n1689), .ZN(n1670) );
  NOR2_X1 U1854 ( .A1(n1731), .A2(n1975), .ZN(n1678) );
  NOR2_X1 U1855 ( .A1(n2029), .A2(n1727), .ZN(n1677) );
  NAND2_X1 U1856 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__2_), .A2(n1667), .ZN(n1706) );
  NOR2_X1 U1857 ( .A1(n1732), .A2(n1706), .ZN(n1676) );
  NOR2_X1 U1858 ( .A1(n1984), .A2(n1695), .ZN(n1668) );
  FA_X1 U1859 ( .A(n1670), .B(n1669), .CI(n1668), .CO(intadd_4_B_3_), .S(
        intadd_5_A_3_) );
  NAND2_X1 U1860 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1679), .ZN(n1672) );
  INV_X1 U1861 ( .A(n1727), .ZN(n1688) );
  NAND2_X1 U1862 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .A2(n1688), .ZN(n1671) );
  AOI21_X1 U1863 ( .B1(n1672), .B2(n1671), .A(intadd_4_B_1_), .ZN(
        intadd_5_A_1_) );
  NOR2_X1 U1864 ( .A1(n1975), .A2(n1689), .ZN(intadd_5_A_0_) );
  NOR2_X1 U1865 ( .A1(n1984), .A2(n1736), .ZN(intadd_5_B_0_) );
  NOR2_X1 U1866 ( .A1(n1732), .A2(n1735), .ZN(intadd_5_CI) );
  NOR2_X1 U1867 ( .A1(n2013), .A2(n1689), .ZN(n1675) );
  NOR2_X1 U1868 ( .A1(n2028), .A2(n1695), .ZN(n1674) );
  NOR2_X1 U1869 ( .A1(n1984), .A2(n1701), .ZN(n1673) );
  FA_X1 U1870 ( .A(n1675), .B(n1674), .CI(n1673), .CO(intadd_4_A_2_), .S(
        intadd_5_A_2_) );
  FA_X1 U1871 ( .A(n1678), .B(n1677), .CI(n1676), .CO(n1669), .S(intadd_5_B_2_) );
  NAND2_X1 U1872 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1679), .ZN(n1681) );
  NAND2_X1 U1873 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1688), .ZN(n1680) );
  NOR4_X1 U1874 ( .A1(n1731), .A2(n1993), .A3(n2027), .A4(n1727), .ZN(n1683)
         );
  AOI21_X1 U1875 ( .B1(n1681), .B2(n1680), .A(n1683), .ZN(intadd_6_A_1_) );
  NOR2_X1 U1876 ( .A1(n1975), .A2(n1695), .ZN(intadd_6_A_0_) );
  NOR2_X1 U1877 ( .A1(n2028), .A2(n1736), .ZN(intadd_6_B_0_) );
  NOR2_X1 U1878 ( .A1(n1984), .A2(n1735), .ZN(intadd_6_CI) );
  NOR4_X1 U1879 ( .A1(n2027), .A2(n1993), .A3(n1727), .A4(n1689), .ZN(
        intadd_6_B_1_) );
  NOR2_X1 U1880 ( .A1(n2028), .A2(n1701), .ZN(n1684) );
  NOR2_X1 U1881 ( .A1(n1984), .A2(n1706), .ZN(n1682) );
  FA_X1 U1882 ( .A(n1684), .B(n1683), .CI(n1682), .CO(intadd_4_A_1_), .S(
        intadd_6_A_2_) );
  NOR2_X1 U1883 ( .A1(n2029), .A2(n1701), .ZN(intadd_8_A_0_) );
  NOR4_X1 U1884 ( .A1(n2027), .A2(n1993), .A3(n1695), .A4(n1689), .ZN(
        intadd_8_B_0_) );
  NOR2_X1 U1885 ( .A1(n2013), .A2(n1706), .ZN(intadd_8_CI) );
  NOR2_X1 U1886 ( .A1(n2013), .A2(n1701), .ZN(n1687) );
  NOR2_X1 U1887 ( .A1(n2028), .A2(n1706), .ZN(n1686) );
  NOR2_X1 U1888 ( .A1(n2029), .A2(n1695), .ZN(n1685) );
  FA_X1 U1889 ( .A(n1687), .B(n1686), .CI(n1685), .CO(intadd_5_B_1_), .S(
        intadd_8_A_1_) );
  NAND2_X1 U1890 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1688), .ZN(n1691) );
  INV_X1 U1891 ( .A(n1689), .ZN(n1692) );
  NAND2_X1 U1892 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1692), .ZN(n1690) );
  AOI21_X1 U1893 ( .B1(n1691), .B2(n1690), .A(intadd_6_B_1_), .ZN(
        intadd_9_A_1_) );
  NOR2_X1 U1894 ( .A1(n1975), .A2(n1701), .ZN(intadd_9_A_0_) );
  NOR2_X1 U1895 ( .A1(n2029), .A2(n1706), .ZN(intadd_9_B_0_) );
  NOR2_X1 U1896 ( .A1(n2028), .A2(n1735), .ZN(intadd_9_CI) );
  NAND2_X1 U1897 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1692), .ZN(n1694) );
  INV_X1 U1898 ( .A(n1695), .ZN(n1710) );
  NAND2_X1 U1899 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1710), .ZN(n1693) );
  AOI21_X1 U1900 ( .B1(n1694), .B2(n1693), .A(intadd_8_B_0_), .ZN(n1698) );
  NOR2_X1 U1901 ( .A1(n2013), .A2(n1736), .ZN(n1697) );
  NOR4_X1 U1902 ( .A1(n2027), .A2(n1993), .A3(n1701), .A4(n1695), .ZN(n1712)
         );
  FA_X1 U1903 ( .A(n1696), .B(intadd_9_SUM_1_), .CI(intadd_8_SUM_0_), .CO(
        intadd_1_B_5_), .S(intadd_1_A_4_) );
  NOR2_X1 U1904 ( .A1(n1975), .A2(n1706), .ZN(n1723) );
  NOR2_X1 U1905 ( .A1(n2029), .A2(n1736), .ZN(n1722) );
  NOR2_X1 U1906 ( .A1(n2013), .A2(n1735), .ZN(n1721) );
  FA_X1 U1907 ( .A(n1698), .B(n1697), .CI(n1712), .CO(n1696), .S(n1699) );
  FA_X1 U1908 ( .A(n1700), .B(n1699), .CI(intadd_9_SUM_0_), .CO(intadd_1_B_4_), 
        .S(intadd_1_A_3_) );
  INV_X1 U1909 ( .A(n1701), .ZN(n1711) );
  NAND2_X1 U1910 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1711), .ZN(n1703) );
  OR2_X1 U1911 ( .A1(n1993), .A2(n1706), .ZN(n1702) );
  NOR4_X1 U1912 ( .A1(n2027), .A2(n1993), .A3(n1706), .A4(n1701), .ZN(n1719)
         );
  AOI21_X1 U1913 ( .B1(n1703), .B2(n1702), .A(n1719), .ZN(intadd_1_A_1_) );
  NAND2_X1 U1914 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1707), .ZN(n1705) );
  NAND2_X1 U1915 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .A2(n1740), .ZN(n1704) );
  NAND4_X1 U1916 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A3(n1707), .A4(n1740), .ZN(n1717) );
  INV_X1 U1917 ( .A(n1717), .ZN(n1708) );
  AOI21_X1 U1918 ( .B1(n1705), .B2(n1704), .A(n1708), .ZN(intadd_1_A_0_) );
  NOR2_X1 U1919 ( .A1(n2027), .A2(n1706), .ZN(intadd_1_B_0_) );
  NAND2_X1 U1920 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_), .A2(n1740), .ZN(n1716) );
  NAND2_X1 U1921 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .A2(n1707), .ZN(n1715) );
  XNOR2_X1 U1922 ( .A(n1715), .B(n1708), .ZN(n1709) );
  XNOR2_X1 U1923 ( .A(n1716), .B(n1709), .ZN(intadd_1_B_1_) );
  NAND2_X1 U1924 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1710), .ZN(n1714) );
  NAND2_X1 U1925 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1711), .ZN(n1713) );
  AOI21_X1 U1926 ( .B1(n1714), .B2(n1713), .A(n1712), .ZN(n1720) );
  AOI21_X1 U1927 ( .B1(n1717), .B2(n1716), .A(n1715), .ZN(n1718) );
  FA_X1 U1928 ( .A(n1720), .B(n1719), .CI(n1718), .CO(intadd_1_B_3_), .S(
        intadd_1_A_2_) );
  FA_X1 U1929 ( .A(n1723), .B(n1722), .CI(n1721), .CO(n1700), .S(intadd_1_B_2_) );
  NOR2_X1 U1930 ( .A1(n1731), .A2(n1984), .ZN(n1730) );
  FA_X1 U1931 ( .A(n1726), .B(n1725), .CI(n1724), .CO(n1729), .S(intadd_7_B_2_) );
  NOR2_X1 U1932 ( .A1(n1732), .A2(n1727), .ZN(n1728) );
  FA_X1 U1933 ( .A(n1730), .B(n1729), .CI(n1728), .CO(n1775), .S(
        intadd_1_A_11_) );
  NOR2_X1 U1934 ( .A1(n1732), .A2(n1731), .ZN(n1777) );
  OAI21_X1 U1935 ( .B1(n1775), .B2(intadd_1_n1), .A(n1777), .ZN(intadd_0_A_15_) );
  INV_X1 U1936 ( .A(n1733), .ZN(n1789) );
  NOR2_X1 U1937 ( .A1(n1781), .A2(n1754), .ZN(n1770) );
  NAND2_X1 U1938 ( .A1(n1789), .A2(n1770), .ZN(n1734) );
  XOR2_X1 U1939 ( .A(n1810), .B(n1734), .Z(intadd_0_B_10_) );
  NOR2_X1 U1940 ( .A1(n1993), .A2(n1735), .ZN(n1739) );
  NOR2_X1 U1941 ( .A1(n2027), .A2(n1736), .ZN(n1738) );
  OAI21_X1 U1942 ( .B1(n1739), .B2(n1738), .A(n1737), .ZN(intadd_0_A_1_) );
  NAND2_X1 U1943 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1740), .ZN(intadd_0_A_0_) );
  OR3_X1 U1944 ( .A1(n1744), .A2(n1743), .A3(n1741), .ZN(n1790) );
  OAI22_X1 U1945 ( .A1(n1791), .A2(n1760), .B1(n1790), .B2(n1746), .ZN(n1742)
         );
  XOR2_X1 U1946 ( .A(n1817), .B(n1742), .Z(intadd_0_B_0_) );
  NOR3_X1 U1947 ( .A1(n1745), .A2(n1744), .A3(n1743), .ZN(n1806) );
  INV_X1 U1948 ( .A(n1806), .ZN(n1804) );
  OAI22_X1 U1949 ( .A1(n1804), .A2(n1746), .B1(n1794), .B2(n1760), .ZN(n1747)
         );
  XOR2_X1 U1950 ( .A(n1817), .B(n1747), .Z(intadd_0_B_1_) );
  NAND2_X1 U1951 ( .A1(n1789), .A2(n1751), .ZN(n1748) );
  XOR2_X1 U1952 ( .A(n1810), .B(n1748), .Z(intadd_0_B_2_) );
  INV_X1 U1953 ( .A(n1796), .ZN(n1763) );
  AOI22_X1 U1954 ( .A1(n1763), .A2(n1751), .B1(n1770), .B2(n1764), .ZN(n1749)
         );
  XOR2_X1 U1955 ( .A(n1749), .B(n1810), .Z(intadd_0_B_3_) );
  AOI22_X1 U1956 ( .A1(n1767), .A2(n1770), .B1(n1751), .B2(n1766), .ZN(n1750)
         );
  XOR2_X1 U1957 ( .A(n1750), .B(n1810), .Z(intadd_0_B_4_) );
  AOI22_X1 U1958 ( .A1(n1771), .A2(n1770), .B1(n1751), .B2(n1769), .ZN(n1752)
         );
  XOR2_X1 U1959 ( .A(n1752), .B(n1810), .Z(intadd_0_B_5_) );
  NAND2_X1 U1960 ( .A1(n1754), .A2(n1753), .ZN(n1782) );
  INV_X1 U1961 ( .A(n1770), .ZN(n1793) );
  OAI22_X1 U1962 ( .A1(n1756), .A2(n1782), .B1(n1755), .B2(n1793), .ZN(n1757)
         );
  XOR2_X1 U1963 ( .A(n1817), .B(n1757), .Z(intadd_0_B_6_) );
  OAI22_X1 U1964 ( .A1(n1778), .A2(n1793), .B1(n1801), .B2(n1760), .ZN(n1758)
         );
  XOR2_X1 U1965 ( .A(n1817), .B(n1758), .Z(intadd_0_B_7_) );
  OAI22_X1 U1966 ( .A1(n1791), .A2(n1793), .B1(n1790), .B2(n1760), .ZN(n1759)
         );
  XOR2_X1 U1967 ( .A(n1817), .B(n1759), .Z(intadd_0_B_8_) );
  OAI22_X1 U1968 ( .A1(n1804), .A2(n1760), .B1(n1794), .B2(n1793), .ZN(n1761)
         );
  XOR2_X1 U1969 ( .A(n1817), .B(n1761), .Z(intadd_0_B_9_) );
  NOR2_X1 U1970 ( .A1(n1762), .A2(n1781), .ZN(n1786) );
  AOI22_X1 U1971 ( .A1(n1786), .A2(n1764), .B1(n1763), .B2(n1770), .ZN(n1765)
         );
  XOR2_X1 U1972 ( .A(n1765), .B(n1810), .Z(intadd_0_B_11_) );
  AOI22_X1 U1973 ( .A1(n1786), .A2(n1767), .B1(n1770), .B2(n1766), .ZN(n1768)
         );
  XOR2_X1 U1974 ( .A(n1768), .B(n1810), .Z(intadd_0_B_12_) );
  AOI22_X1 U1975 ( .A1(n1786), .A2(n1771), .B1(n1770), .B2(n1769), .ZN(n1772)
         );
  XOR2_X1 U1976 ( .A(n1772), .B(n1810), .Z(intadd_0_B_13_) );
  NOR2_X1 U1977 ( .A1(n1781), .A2(n1773), .ZN(n1774) );
  XOR2_X1 U1978 ( .A(n1774), .B(n1817), .Z(intadd_0_A_14_) );
  XNOR2_X1 U1979 ( .A(n1775), .B(intadd_1_n1), .ZN(n1776) );
  XOR2_X1 U1980 ( .A(n1777), .B(n1776), .Z(intadd_0_B_14_) );
  INV_X1 U1981 ( .A(n1786), .ZN(n1798) );
  OAI22_X1 U1982 ( .A1(n1778), .A2(n1798), .B1(n1801), .B2(n1793), .ZN(n1779)
         );
  XOR2_X1 U1983 ( .A(n1817), .B(n1779), .Z(intadd_0_B_15_) );
  INV_X1 U1984 ( .A(n1950), .ZN(n1809) );
  NOR2_X1 U1985 ( .A1(n1790), .A2(n1798), .ZN(n1780) );
  XOR2_X1 U1986 ( .A(n1780), .B(n1817), .Z(n1931) );
  NOR2_X1 U1987 ( .A1(n1782), .A2(n1781), .ZN(n1783) );
  XOR2_X1 U1988 ( .A(n1783), .B(n1817), .Z(n1920) );
  NAND2_X1 U1989 ( .A1(n1817), .A2(n1786), .ZN(n1805) );
  NAND2_X1 U1990 ( .A1(n1798), .A2(n1810), .ZN(n1803) );
  OAI21_X1 U1991 ( .B1(n1805), .B2(n1785), .A(n1803), .ZN(n1784) );
  AOI21_X1 U1992 ( .B1(n1785), .B2(n1810), .A(n1784), .ZN(n1907) );
  INV_X1 U1993 ( .A(n1805), .ZN(n1788) );
  AOI21_X1 U1994 ( .B1(n1786), .B2(n1789), .A(n1817), .ZN(n1787) );
  AOI21_X1 U1995 ( .B1(n1789), .B2(n1788), .A(n1787), .ZN(n1894) );
  OAI22_X1 U1996 ( .A1(n1791), .A2(n1798), .B1(n1790), .B2(n1793), .ZN(n1792)
         );
  XOR2_X1 U1997 ( .A(n1817), .B(n1792), .Z(n1882) );
  NOR2_X1 U1998 ( .A1(n1882), .A2(intadd_0_n1), .ZN(n1885) );
  OAI22_X1 U1999 ( .A1(n1798), .A2(n1794), .B1(n1804), .B2(n1793), .ZN(n1795)
         );
  XOR2_X1 U2000 ( .A(n1810), .B(n1795), .Z(n1886) );
  NAND2_X1 U2001 ( .A1(n1885), .A2(n1886), .ZN(n1893) );
  NOR2_X1 U2002 ( .A1(n1894), .A2(n1893), .ZN(n1899) );
  NOR2_X1 U2003 ( .A1(n1798), .A2(n1796), .ZN(n1797) );
  OAI22_X1 U2004 ( .A1(n1817), .A2(n1797), .B1(n1805), .B2(n1796), .ZN(n1898)
         );
  NAND2_X1 U2005 ( .A1(n1899), .A2(n1898), .ZN(n1906) );
  NOR2_X1 U2006 ( .A1(n1907), .A2(n1906), .ZN(n1910) );
  NOR2_X1 U2007 ( .A1(n1798), .A2(n1799), .ZN(n1800) );
  OAI22_X1 U2008 ( .A1(n1817), .A2(n1800), .B1(n1799), .B2(n1805), .ZN(n1911)
         );
  NAND2_X1 U2009 ( .A1(n1910), .A2(n1911), .ZN(n1919) );
  NOR2_X1 U2010 ( .A1(n1920), .A2(n1919), .ZN(n1923) );
  INV_X1 U2011 ( .A(n1801), .ZN(n1802) );
  OAI221_X1 U2012 ( .B1(n1802), .B2(n1817), .C1(n1801), .C2(n1805), .A(n1803), 
        .ZN(n1924) );
  NAND2_X1 U2013 ( .A1(n1923), .A2(n1924), .ZN(n1930) );
  NOR2_X1 U2014 ( .A1(n1931), .A2(n1930), .ZN(n1939) );
  OAI221_X1 U2015 ( .B1(n1817), .B2(n1806), .C1(n1805), .C2(n1804), .A(n1803), 
        .ZN(n1940) );
  NAND2_X1 U2016 ( .A1(n1939), .A2(n1940), .ZN(n1807) );
  NAND2_X1 U2017 ( .A1(n1810), .A2(n1807), .ZN(n1918) );
  NAND2_X1 U2018 ( .A1(n1964), .A2(n1918), .ZN(n1941) );
  INV_X1 U2019 ( .A(n1918), .ZN(n1927) );
  NAND2_X1 U2020 ( .A1(n1545), .A2(n1927), .ZN(n1947) );
  INV_X1 U2021 ( .A(n1947), .ZN(n1934) );
  AOI22_X1 U2022 ( .A1(n1934), .A2(n1809), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_1_), .B2(n1864), .ZN(n1808) );
  OAI21_X1 U2023 ( .B1(n1809), .B2(n1941), .A(n1808), .ZN(n896) );
  NAND2_X1 U2024 ( .A1(n1811), .A2(n1810), .ZN(n1812) );
  XOR2_X1 U2025 ( .A(n1813), .B(n1812), .Z(n1820) );
  AOI22_X1 U2026 ( .A1(n1545), .A2(n1820), .B1(n2018), .B2(n1962), .ZN(n895)
         );
  INV_X1 U2027 ( .A(intadd_0_CI), .ZN(n1819) );
  AOI211_X1 U2028 ( .C1(n1817), .C2(n1816), .A(n1815), .B(n1814), .ZN(n1818)
         );
  NOR2_X1 U2029 ( .A1(n1819), .A2(n1818), .ZN(n1824) );
  INV_X1 U2030 ( .A(n1820), .ZN(n1823) );
  NAND2_X1 U2031 ( .A1(n1927), .A2(n1823), .ZN(n1821) );
  XOR2_X1 U2032 ( .A(n1824), .B(n1821), .Z(n1822) );
  AOI22_X1 U2033 ( .A1(n1897), .A2(n1822), .B1(n1981), .B2(n1962), .ZN(n894)
         );
  NOR2_X1 U2034 ( .A1(n1824), .A2(n1823), .ZN(n1827) );
  NOR2_X1 U2035 ( .A1(n1827), .A2(n1918), .ZN(n1825) );
  XOR2_X1 U2036 ( .A(intadd_0_SUM_0_), .B(n1825), .Z(n1826) );
  AOI22_X1 U2037 ( .A1(n1897), .A2(n1826), .B1(n2008), .B2(n1962), .ZN(n893)
         );
  INV_X1 U2038 ( .A(intadd_0_SUM_1_), .ZN(n1831) );
  NAND2_X1 U2039 ( .A1(intadd_0_SUM_0_), .A2(n1827), .ZN(n1830) );
  NAND2_X1 U2040 ( .A1(n1927), .A2(n1830), .ZN(n1828) );
  XOR2_X1 U2041 ( .A(n1831), .B(n1828), .Z(n1829) );
  AOI22_X1 U2042 ( .A1(n1897), .A2(n1829), .B1(n2039), .B2(n1962), .ZN(n892)
         );
  NOR2_X1 U2043 ( .A1(n1831), .A2(n1830), .ZN(n1834) );
  NOR2_X1 U2044 ( .A1(n1834), .A2(n1918), .ZN(n1832) );
  XOR2_X1 U2045 ( .A(intadd_0_SUM_2_), .B(n1832), .Z(n1833) );
  AOI22_X1 U2046 ( .A1(n1897), .A2(n1833), .B1(n2037), .B2(n1864), .ZN(n891)
         );
  INV_X1 U2047 ( .A(intadd_0_SUM_3_), .ZN(n1838) );
  NAND2_X1 U2048 ( .A1(intadd_0_SUM_2_), .A2(n1834), .ZN(n1837) );
  NAND2_X1 U2049 ( .A1(n1927), .A2(n1837), .ZN(n1835) );
  XOR2_X1 U2050 ( .A(n1838), .B(n1835), .Z(n1836) );
  AOI22_X1 U2051 ( .A1(n1897), .A2(n1836), .B1(n2006), .B2(n1864), .ZN(n890)
         );
  NOR2_X1 U2052 ( .A1(n1838), .A2(n1837), .ZN(n1841) );
  NOR2_X1 U2053 ( .A1(n1841), .A2(n1918), .ZN(n1839) );
  XOR2_X1 U2054 ( .A(intadd_0_SUM_4_), .B(n1839), .Z(n1840) );
  AOI22_X1 U2055 ( .A1(n1897), .A2(n1840), .B1(n2036), .B2(n1864), .ZN(n889)
         );
  INV_X1 U2056 ( .A(intadd_0_SUM_5_), .ZN(n1845) );
  NAND2_X1 U2057 ( .A1(intadd_0_SUM_4_), .A2(n1841), .ZN(n1844) );
  NAND2_X1 U2058 ( .A1(n1927), .A2(n1844), .ZN(n1842) );
  XOR2_X1 U2059 ( .A(n1845), .B(n1842), .Z(n1843) );
  AOI22_X1 U2060 ( .A1(n1897), .A2(n1843), .B1(n2038), .B2(n1864), .ZN(n888)
         );
  NOR2_X1 U2061 ( .A1(n1845), .A2(n1844), .ZN(n1848) );
  NOR2_X1 U2062 ( .A1(n1848), .A2(n1918), .ZN(n1846) );
  XOR2_X1 U2063 ( .A(intadd_0_SUM_6_), .B(n1846), .Z(n1847) );
  AOI22_X1 U2064 ( .A1(n1897), .A2(n1847), .B1(n2007), .B2(n1864), .ZN(n887)
         );
  INV_X1 U2065 ( .A(intadd_0_SUM_7_), .ZN(n1852) );
  NAND2_X1 U2066 ( .A1(intadd_0_SUM_6_), .A2(n1848), .ZN(n1851) );
  NAND2_X1 U2067 ( .A1(n1927), .A2(n1851), .ZN(n1849) );
  XOR2_X1 U2068 ( .A(n1852), .B(n1849), .Z(n1850) );
  AOI22_X1 U2069 ( .A1(n1897), .A2(n1850), .B1(n1995), .B2(n1864), .ZN(n886)
         );
  NOR2_X1 U2070 ( .A1(n1852), .A2(n1851), .ZN(n1855) );
  NOR2_X1 U2071 ( .A1(n1855), .A2(n1918), .ZN(n1853) );
  XOR2_X1 U2072 ( .A(intadd_0_SUM_8_), .B(n1853), .Z(n1854) );
  AOI22_X1 U2073 ( .A1(n1897), .A2(n1854), .B1(n1978), .B2(n1962), .ZN(n885)
         );
  INV_X1 U2074 ( .A(intadd_0_SUM_9_), .ZN(n1859) );
  NAND2_X1 U2075 ( .A1(intadd_0_SUM_8_), .A2(n1855), .ZN(n1858) );
  NAND2_X1 U2076 ( .A1(n1927), .A2(n1858), .ZN(n1856) );
  XOR2_X1 U2077 ( .A(n1859), .B(n1856), .Z(n1857) );
  AOI22_X1 U2078 ( .A1(n1897), .A2(n1857), .B1(n1977), .B2(n1962), .ZN(n884)
         );
  NOR2_X1 U2079 ( .A1(n1859), .A2(n1858), .ZN(n1862) );
  NOR2_X1 U2080 ( .A1(n1862), .A2(n1918), .ZN(n1860) );
  XOR2_X1 U2081 ( .A(intadd_0_SUM_10_), .B(n1860), .Z(n1861) );
  AOI22_X1 U2082 ( .A1(n1897), .A2(n1861), .B1(n1971), .B2(n1962), .ZN(n883)
         );
  INV_X1 U2083 ( .A(intadd_0_SUM_11_), .ZN(n1867) );
  NAND2_X1 U2084 ( .A1(intadd_0_SUM_10_), .A2(n1862), .ZN(n1866) );
  NAND2_X1 U2085 ( .A1(n1927), .A2(n1866), .ZN(n1863) );
  XOR2_X1 U2086 ( .A(n1867), .B(n1863), .Z(n1865) );
  AOI22_X1 U2087 ( .A1(n1964), .A2(n1865), .B1(n1970), .B2(n1864), .ZN(n882)
         );
  NOR2_X1 U2088 ( .A1(n1867), .A2(n1866), .ZN(n1870) );
  NOR2_X1 U2089 ( .A1(n1870), .A2(n1918), .ZN(n1868) );
  XOR2_X1 U2090 ( .A(intadd_0_SUM_12_), .B(n1868), .Z(n1869) );
  AOI22_X1 U2091 ( .A1(n1897), .A2(n1869), .B1(n1976), .B2(n1962), .ZN(n881)
         );
  INV_X1 U2092 ( .A(intadd_0_SUM_13_), .ZN(n1874) );
  NAND2_X1 U2093 ( .A1(intadd_0_SUM_12_), .A2(n1870), .ZN(n1873) );
  NAND2_X1 U2094 ( .A1(n1927), .A2(n1873), .ZN(n1871) );
  XOR2_X1 U2095 ( .A(n1874), .B(n1871), .Z(n1872) );
  AOI22_X1 U2096 ( .A1(n1897), .A2(n1872), .B1(n1996), .B2(n1962), .ZN(n880)
         );
  NOR2_X1 U2097 ( .A1(n1874), .A2(n1873), .ZN(n1877) );
  NOR2_X1 U2098 ( .A1(n1877), .A2(n1918), .ZN(n1875) );
  XOR2_X1 U2099 ( .A(intadd_0_SUM_14_), .B(n1875), .Z(n1876) );
  AOI22_X1 U2100 ( .A1(n1897), .A2(n1876), .B1(n1980), .B2(n1962), .ZN(n879)
         );
  INV_X1 U2101 ( .A(intadd_0_SUM_15_), .ZN(n1881) );
  NAND2_X1 U2102 ( .A1(intadd_0_SUM_14_), .A2(n1877), .ZN(n1880) );
  NAND2_X1 U2103 ( .A1(n1927), .A2(n1880), .ZN(n1878) );
  XOR2_X1 U2104 ( .A(n1881), .B(n1878), .Z(n1879) );
  AOI22_X1 U2105 ( .A1(n1897), .A2(n1879), .B1(n1979), .B2(n1962), .ZN(n878)
         );
  NOR2_X1 U2106 ( .A1(n1881), .A2(n1880), .ZN(n1888) );
  NOR2_X1 U2107 ( .A1(n1888), .A2(n1918), .ZN(n1883) );
  XNOR2_X1 U2108 ( .A(n1882), .B(intadd_0_n1), .ZN(n1887) );
  XOR2_X1 U2109 ( .A(n1883), .B(n1887), .Z(n1884) );
  AOI22_X1 U2110 ( .A1(n1897), .A2(n1884), .B1(n1974), .B2(n1962), .ZN(n877)
         );
  XOR2_X1 U2111 ( .A(n1886), .B(n1885), .Z(n1892) );
  NAND2_X1 U2112 ( .A1(n1888), .A2(n1887), .ZN(n1891) );
  NAND2_X1 U2113 ( .A1(n1927), .A2(n1891), .ZN(n1889) );
  XOR2_X1 U2114 ( .A(n1892), .B(n1889), .Z(n1890) );
  AOI22_X1 U2115 ( .A1(n1897), .A2(n1890), .B1(n1997), .B2(n1962), .ZN(n876)
         );
  NOR2_X1 U2116 ( .A1(n1892), .A2(n1891), .ZN(n1901) );
  NOR2_X1 U2117 ( .A1(n1901), .A2(n1918), .ZN(n1895) );
  XNOR2_X1 U2118 ( .A(n1894), .B(n1893), .ZN(n1900) );
  XOR2_X1 U2119 ( .A(n1895), .B(n1900), .Z(n1896) );
  AOI22_X1 U2120 ( .A1(n1897), .A2(n1896), .B1(n1991), .B2(n1962), .ZN(n875)
         );
  XOR2_X1 U2121 ( .A(n1899), .B(n1898), .Z(n1905) );
  NAND2_X1 U2122 ( .A1(n1901), .A2(n1900), .ZN(n1904) );
  NAND2_X1 U2123 ( .A1(n1927), .A2(n1904), .ZN(n1902) );
  XOR2_X1 U2124 ( .A(n1905), .B(n1902), .Z(n1903) );
  AOI22_X1 U2125 ( .A1(n1964), .A2(n1903), .B1(n2048), .B2(n1962), .ZN(n874)
         );
  NOR2_X1 U2126 ( .A1(n1905), .A2(n1904), .ZN(n1913) );
  NOR2_X1 U2127 ( .A1(n1913), .A2(n1918), .ZN(n1908) );
  XNOR2_X1 U2128 ( .A(n1907), .B(n1906), .ZN(n1912) );
  XOR2_X1 U2129 ( .A(n1908), .B(n1912), .Z(n1909) );
  AOI22_X1 U2130 ( .A1(n1964), .A2(n1909), .B1(n2050), .B2(n1864), .ZN(n873)
         );
  XOR2_X1 U2131 ( .A(n1911), .B(n1910), .Z(n1917) );
  NAND2_X1 U2132 ( .A1(n1913), .A2(n1912), .ZN(n1916) );
  NAND2_X1 U2133 ( .A1(n1927), .A2(n1916), .ZN(n1914) );
  XOR2_X1 U2134 ( .A(n1917), .B(n1914), .Z(n1915) );
  AOI22_X1 U2135 ( .A1(n1964), .A2(n1915), .B1(n2051), .B2(n1962), .ZN(n872)
         );
  NOR2_X1 U2136 ( .A1(n1917), .A2(n1916), .ZN(n1926) );
  NOR2_X1 U2137 ( .A1(n1926), .A2(n1918), .ZN(n1921) );
  XNOR2_X1 U2138 ( .A(n1920), .B(n1919), .ZN(n1925) );
  XOR2_X1 U2139 ( .A(n1921), .B(n1925), .Z(n1922) );
  AOI22_X1 U2140 ( .A1(n1964), .A2(n1922), .B1(n2024), .B2(n1864), .ZN(n871)
         );
  XOR2_X1 U2141 ( .A(n1924), .B(n1923), .Z(n1933) );
  NAND2_X1 U2142 ( .A1(n1926), .A2(n1925), .ZN(n1932) );
  NAND2_X1 U2143 ( .A1(n1927), .A2(n1932), .ZN(n1928) );
  XOR2_X1 U2144 ( .A(n1933), .B(n1928), .Z(n1929) );
  AOI22_X1 U2145 ( .A1(n1964), .A2(n1929), .B1(n2049), .B2(n1864), .ZN(n870)
         );
  XOR2_X1 U2146 ( .A(n1931), .B(n1930), .Z(n1943) );
  INV_X1 U2147 ( .A(n1943), .ZN(n1938) );
  NOR2_X1 U2148 ( .A1(n1933), .A2(n1932), .ZN(n1935) );
  NAND2_X1 U2149 ( .A1(n1934), .A2(n1935), .ZN(n1942) );
  NOR3_X1 U2150 ( .A1(n1943), .A2(n1935), .A3(n1947), .ZN(n1936) );
  AOI21_X1 U2151 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_), .B2(n1962), .A(n1936), .ZN(n1937) );
  OAI221_X1 U2152 ( .B1(n1938), .B2(n1942), .C1(n1938), .C2(n1941), .A(n1937), 
        .ZN(n869) );
  XOR2_X1 U2153 ( .A(n1940), .B(n1939), .Z(n1948) );
  OAI21_X1 U2154 ( .B1(n1943), .B2(n1942), .A(n1941), .ZN(n1944) );
  NAND2_X1 U2155 ( .A1(n1948), .A2(n1944), .ZN(n1946) );
  NAND2_X1 U2156 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_), .A2(n1962), .ZN(n1945) );
  OAI211_X1 U2157 ( .C1(n1948), .C2(n1947), .A(n1946), .B(n1945), .ZN(n868) );
  AOI22_X1 U2158 ( .A1(n1952), .A2(n1951), .B1(n1950), .B2(n1949), .ZN(n1954)
         );
  OAI22_X1 U2159 ( .A1(n1545), .A2(n2034), .B1(n1954), .B2(n1953), .ZN(n866)
         );
  OAI222_X1 U2160 ( .A1(n1957), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__6_), .B1(n1956), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_), .C1(n1955), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .ZN(n1961) );
  NOR2_X1 U2161 ( .A1(n1966), .A2(n1958), .ZN(n1960) );
  AOI211_X1 U2162 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .C2(n1961), .A(n1960), .B(n1959), .ZN(n1963) );
  AOI22_X1 U2163 ( .A1(n1964), .A2(n1963), .B1(n2035), .B2(n1962), .ZN(n865)
         );
  OAI21_X1 U2164 ( .B1(n1966), .B2(n1965), .A(n1964), .ZN(n1967) );
  OAI21_X1 U2165 ( .B1(n1545), .B2(n2053), .A(n1967), .ZN(n864) );
  MUX2_X1 U2166 ( .A(tag_i), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_tag_q_1_), .S(n1639), .Z(n863) );
  MUX2_X1 U2167 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_tag_q_1_), .B(gen_operation_groups_0__i_opgroup_block_fmt_outputs_4__tag_), .S(n1962), 
        .Z(n862) );
endmodule

