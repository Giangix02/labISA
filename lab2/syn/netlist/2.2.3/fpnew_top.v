/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Mon Nov 17 15:38:06 2025
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
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__1_,
         gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__2_,
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
         C178_DATA3_6, C178_DATA3_7, C178_DATA3_8, n859, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n936, n937, n939, n940, n941, n942, n943,
         n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976,
         n977, n978, n979, n980, n981, n982, n983, n984, n985, n986, n987,
         n988, n989, n990, n991, n992, n993, n994, DP_OP_218J3_126_2335_n9,
         DP_OP_218J3_126_2335_n8, DP_OP_218J3_126_2335_n7,
         DP_OP_218J3_126_2335_n6, DP_OP_218J3_126_2335_n5,
         DP_OP_218J3_126_2335_n4, DP_OP_218J3_126_2335_n3,
         DP_OP_218J3_126_2335_n2, intadd_20_A_15_, intadd_20_A_14_,
         intadd_20_A_13_, intadd_20_A_12_, intadd_20_A_11_, intadd_20_A_10_,
         intadd_20_A_9_, intadd_20_A_8_, intadd_20_A_7_, intadd_20_A_6_,
         intadd_20_A_5_, intadd_20_A_4_, intadd_20_A_3_, intadd_20_A_2_,
         intadd_20_A_1_, intadd_20_A_0_, intadd_20_B_15_, intadd_20_B_14_,
         intadd_20_B_13_, intadd_20_B_12_, intadd_20_B_11_, intadd_20_B_10_,
         intadd_20_B_9_, intadd_20_B_8_, intadd_20_B_7_, intadd_20_B_6_,
         intadd_20_B_5_, intadd_20_B_4_, intadd_20_B_3_, intadd_20_B_2_,
         intadd_20_B_1_, intadd_20_B_0_, intadd_20_CI, intadd_20_SUM_15_,
         intadd_20_SUM_14_, intadd_20_SUM_13_, intadd_20_SUM_12_,
         intadd_20_SUM_11_, intadd_20_SUM_10_, intadd_20_SUM_9_,
         intadd_20_SUM_8_, intadd_20_SUM_7_, intadd_20_SUM_6_,
         intadd_20_SUM_5_, intadd_20_SUM_4_, intadd_20_SUM_3_,
         intadd_20_SUM_2_, intadd_20_SUM_1_, intadd_20_SUM_0_, intadd_20_n16,
         intadd_20_n15, intadd_20_n14, intadd_20_n13, intadd_20_n12,
         intadd_20_n11, intadd_20_n10, intadd_20_n9, intadd_20_n8,
         intadd_20_n7, intadd_20_n6, intadd_20_n5, intadd_20_n4, intadd_20_n3,
         intadd_20_n2, intadd_20_n1, intadd_21_A_11_, intadd_21_A_10_,
         intadd_21_A_9_, intadd_21_A_8_, intadd_21_A_7_, intadd_21_A_6_,
         intadd_21_A_5_, intadd_21_A_4_, intadd_21_A_3_, intadd_21_A_2_,
         intadd_21_A_1_, intadd_21_A_0_, intadd_21_B_5_, intadd_21_B_4_,
         intadd_21_B_3_, intadd_21_B_2_, intadd_21_B_1_, intadd_21_B_0_,
         intadd_21_CI, intadd_21_SUM_11_, intadd_21_SUM_10_, intadd_21_SUM_9_,
         intadd_21_SUM_8_, intadd_21_SUM_7_, intadd_21_SUM_6_,
         intadd_21_SUM_5_, intadd_21_SUM_4_, intadd_21_SUM_3_,
         intadd_21_SUM_2_, intadd_21_SUM_1_, intadd_21_SUM_0_, intadd_21_n12,
         intadd_21_n11, intadd_21_n10, intadd_21_n9, intadd_21_n8,
         intadd_21_n7, intadd_21_n6, intadd_21_n5, intadd_21_n4, intadd_21_n3,
         intadd_21_n2, intadd_21_n1, intadd_22_A_7_, intadd_22_A_6_,
         intadd_22_A_5_, intadd_22_A_4_, intadd_22_A_3_, intadd_22_A_2_,
         intadd_22_A_1_, intadd_22_A_0_, intadd_22_B_6_, intadd_22_B_5_,
         intadd_22_B_4_, intadd_22_B_3_, intadd_22_B_2_, intadd_22_B_1_,
         intadd_22_B_0_, intadd_22_CI, intadd_22_SUM_7_, intadd_22_SUM_6_,
         intadd_22_SUM_5_, intadd_22_SUM_4_, intadd_22_SUM_3_,
         intadd_22_SUM_2_, intadd_22_SUM_1_, intadd_22_SUM_0_, intadd_22_n8,
         intadd_22_n7, intadd_22_n6, intadd_22_n5, intadd_22_n4, intadd_22_n3,
         intadd_22_n2, intadd_22_n1, intadd_23_B_5_, intadd_23_B_4_,
         intadd_23_B_3_, intadd_23_B_2_, intadd_23_B_1_, intadd_23_B_0_,
         intadd_23_CI, intadd_23_SUM_5_, intadd_23_SUM_4_, intadd_23_SUM_3_,
         intadd_23_SUM_2_, intadd_23_SUM_1_, intadd_23_SUM_0_, intadd_23_n6,
         intadd_23_n5, intadd_23_n4, intadd_23_n3, intadd_23_n2, intadd_23_n1,
         intadd_24_A_3_, intadd_24_A_2_, intadd_24_A_1_, intadd_24_A_0_,
         intadd_24_B_3_, intadd_24_B_2_, intadd_24_B_1_, intadd_24_B_0_,
         intadd_24_CI, intadd_24_SUM_2_, intadd_24_SUM_1_, intadd_24_SUM_0_,
         intadd_24_n4, intadd_24_n3, intadd_24_n2, intadd_24_n1,
         intadd_25_A_3_, intadd_25_A_2_, intadd_25_A_1_, intadd_25_A_0_,
         intadd_25_B_2_, intadd_25_B_1_, intadd_25_B_0_, intadd_25_CI,
         intadd_25_SUM_2_, intadd_25_SUM_1_, intadd_25_SUM_0_, intadd_25_n4,
         intadd_25_n3, intadd_25_n2, intadd_25_n1, intadd_26_A_2_,
         intadd_26_A_1_, intadd_26_A_0_, intadd_26_B_1_, intadd_26_B_0_,
         intadd_26_CI, intadd_26_SUM_2_, intadd_26_SUM_1_, intadd_26_SUM_0_,
         intadd_26_n4, intadd_26_n3, intadd_26_n2, intadd_26_n1,
         intadd_27_A_2_, intadd_27_A_1_, intadd_27_A_0_, intadd_27_B_2_,
         intadd_27_B_1_, intadd_27_B_0_, intadd_27_CI, intadd_27_n3,
         intadd_27_n2, intadd_27_n1, intadd_28_A_1_, intadd_28_A_0_,
         intadd_28_B_0_, intadd_28_CI, intadd_28_SUM_1_, intadd_28_SUM_0_,
         intadd_28_n3, intadd_28_n2, intadd_28_n1, intadd_29_A_1_,
         intadd_29_A_0_, intadd_29_B_0_, intadd_29_CI, intadd_29_SUM_1_,
         intadd_29_SUM_0_, intadd_29_n3, intadd_29_n2, intadd_29_n1, n997,
         n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007,
         n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017,
         n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027,
         n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037,
         n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047,
         n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057,
         n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067,
         n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077,
         n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087,
         n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097,
         n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107,
         n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117,
         n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127,
         n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137,
         n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147,
         n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157,
         n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167,
         n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177,
         n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187,
         n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197,
         n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207,
         n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217,
         n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227,
         n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237,
         n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247,
         n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257,
         n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267,
         n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277,
         n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287,
         n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297,
         n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307,
         n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317,
         n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327,
         n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337,
         n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347,
         n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357,
         n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367,
         n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377,
         n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387,
         n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397,
         n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407,
         n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417,
         n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427,
         n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437,
         n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447,
         n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457,
         n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467,
         n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477,
         n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487,
         n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497,
         n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507,
         n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517,
         n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527,
         n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537,
         n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547,
         n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557,
         n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567,
         n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577,
         n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587,
         n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597,
         n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607,
         n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617,
         n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627,
         n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637,
         n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647,
         n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657,
         n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667,
         n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677,
         n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687,
         n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696, n1697,
         n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706, n1707,
         n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717,
         n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727,
         n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736, n1737,
         n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746, n1747,
         n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757,
         n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766, n1767,
         n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776, n1777,
         n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786, n1787,
         n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796, n1797,
         n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806, n1807,
         n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1815, n1816, n1817,
         n1818, n1819, n1820, n1821, n1822, n1823, n1824, n1825, n1826, n1827,
         n1828, n1829, n1830, n1831, n1832, n1833, n1834, n1835, n1836, n1837,
         n1838, n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846, n1847,
         n1848, n1849, n1850, n1851, n1852, n1853, n1854, n1855, n1856, n1857,
         n1858, n1859, n1860, n1861, n1862, n1863, n1864, n1865, n1866, n1867,
         n1868, n1869, n1870, n1871, n1872, n1873, n1874, n1875, n1876, n1877,
         n1878, n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886, n1887,
         n1888, n1889, n1890, n1891, n1892, n1893, n1894, n1895, n1896, n1897,
         n1898, n1899, n1900, n1901, n1902, n1903, n1904, n1905, n1906, n1907,
         n1908, n1909, n1910, n1911, n1912, n1913, n1914, n1915, n1916, n1917,
         n1918, n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926, n1927,
         n1928, n1929, n1930, n1931, n1932, n1933, n1934, n1935, n1936, n1937,
         n1938, n1939, n1940, n1941, n1942, n1943, n1944, n1945, n1946, n1947,
         n1948, n1949, n1950, n1951, n1952, n1953, n1954, n1955, n1956, n1957,
         n1958, n1959, n1960, n1961, n1962, n1963, n1964, n1965, n1966, n1967,
         n1968, n1969, n1970, n1971, n1972, n1973, n1974, n1975, n1976, n1977,
         n1978, n1979, n1980, n1981, n1982, n1983, n1984, n1985, n1986, n1987,
         n1988, n1989, n1990, n1991, n1992, n1993, n1994, n1995, n1996, n1997,
         n1998, n1999, n2000, n2001, n2002, n2003, n2004, n2005, n2006, n2007,
         n2008, n2009, n2010, n2011, n2012, n2013, n2014, n2015, n2016, n2017,
         n2018, n2019, n2020, n2021, n2022, n2023, n2024, n2025, n2026, n2027,
         n2028, n2029, n2030, n2031, n2032, n2033, n2034, n2035, n2036, n2037,
         n2038, n2039, n2040, n2041;
  wire  
         [8:0] gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent
;
  assign status_o_DZ_ = 1'b0;

  SDFFS_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_reg_1_ ( 
        .D(flush_i), .SI(1'b1), .SE(n861), .CK(clk_i), .SN(rst_ni), .QN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_) );
  SDFFS_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_valid_q_reg_1_ ( 
        .D(flush_i), .SI(1'b1), .SE(n859), .CK(clk_i), .SN(rst_ni), .Q(n2026), 
        .QN(out_valid_o) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__15_ ( 
        .D(n993), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__15_), .QN(n1981) );
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
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .QN(n2021) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__1_ ( 
        .D(n975), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .QN(n1982) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__2_ ( 
        .D(n974), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .QN(n1963) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__3_ ( 
        .D(n973), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_), .QN(n2023) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__4_ ( 
        .D(n972), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__4_), .QN(n2002) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__5_ ( 
        .D(n971), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__5_), .QN(n2022) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__6_ ( 
        .D(n970), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__6_), .QN(n1972) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__7_ ( 
        .D(n969), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_), .QN(n2003) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__8_ ( 
        .D(n968), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_), .QN(n2004) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__9_ ( 
        .D(n967), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_), .QN(n2006) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__10_ ( 
        .D(n966), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__10_), .QN(n2000) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__11_ ( 
        .D(n965), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__11_), .QN(n1970) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__12_ ( 
        .D(n964), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_), .QN(n2009) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__13_ ( 
        .D(n963), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_), .QN(n2010) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__1__14_ ( 
        .D(n962), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .QN(n2011) );
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
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_), .QN(n1974) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__9_ ( 
        .D(n951), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__10_ ( 
        .D(n950), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .QN(n1975) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__11_ ( 
        .D(n949), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__12_ ( 
        .D(n948), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .QN(n1977) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__13_ ( 
        .D(n947), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_reg_1__2__14_ ( 
        .D(n946), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_reg_1__1_ ( 
        .D(n945), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .QN(n2001) );
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
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__1_), .QN(n1999) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_reg_1_ ( 
        .D(n934), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_1_), .QN(n2020) );
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
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_), .QN(n1983) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_reg_1__1_ ( 
        .D(n939), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__1_), .QN(n2024) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__0_ ( 
        .D(n933), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N309), .QN(n2018) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__1_ ( 
        .D(n932), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .QN(n1976) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__2_ ( 
        .D(n931), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_), .QN(n1998) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__3_ ( 
        .D(n930), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__3_), .QN(n1960) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__4_ ( 
        .D(n929), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__4_), .QN(n1971) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__5_ ( 
        .D(n928), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .QN(n1973) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__6_ ( 
        .D(n927), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .QN(n2005) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__7_ ( 
        .D(n926), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .QN(n1961) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__8_ ( 
        .D(n925), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_), .QN(n1978) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_reg_1__9_ ( 
        .D(n924), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__9_), .QN(n2007) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__0_ ( 
        .D(n923), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__0_), .QN(n2039) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__1_ ( 
        .D(n922), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__2_ ( 
        .D(n921), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__2_), .QN(n1988) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__3_ ( 
        .D(n920), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__3_), .QN(n1991) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__4_ ( 
        .D(n919), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__4_), .QN(n1992) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__5_ ( 
        .D(n918), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__5_), .QN(n1993) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__6_ ( 
        .D(n917), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__6_), .QN(n1989) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__7_ ( 
        .D(n916), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__7_), .QN(n1994) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__8_ ( 
        .D(n915), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__8_), .QN(n1990) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_reg_1__9_ ( 
        .D(n914), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__9_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_reg_1__0_ ( 
        .D(n913), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__0_), .QN(n1987) );
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
        .D(n907), .CK(clk_i), .RN(rst_ni), .QN(n2019) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__1_ ( 
        .D(n906), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__1_), .QN(n2034) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__2_ ( 
        .D(n905), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__2_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__3_ ( 
        .D(n904), .CK(clk_i), .RN(rst_ni), .QN(n2014) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__4_ ( 
        .D(n903), .CK(clk_i), .RN(rst_ni), .QN(n2017) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__5_ ( 
        .D(n902), .CK(clk_i), .RN(rst_ni), .QN(n2015) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__6_ ( 
        .D(n901), .CK(clk_i), .RN(rst_ni), .QN(n2016) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__7_ ( 
        .D(n900), .CK(clk_i), .RN(rst_ni), .QN(n2013) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_reg_1__8_ ( 
        .D(n899), .CK(clk_i), .RN(rst_ni), .QN(n1980) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_reg_1_ ( 
        .D(n896), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_1_), .QN(n2025) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__0_ ( 
        .D(n895), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__0_), .QN(n2008) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__1_ ( 
        .D(n894), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .QN(n1969) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__2_ ( 
        .D(n893), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_), .QN(n1997) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__3_ ( 
        .D(n892), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .QN(n2033) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__4_ ( 
        .D(n891), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .QN(n2031) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__5_ ( 
        .D(n890), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .QN(n1995) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__6_ ( 
        .D(n889), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .QN(n2030) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__7_ ( 
        .D(n888), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .QN(n2032) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__8_ ( 
        .D(n887), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .QN(n1996) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__9_ ( 
        .D(n886), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .QN(n1984) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__10_ ( 
        .D(n885), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .QN(n1966) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__11_ ( 
        .D(n884), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .QN(n1965) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__12_ ( 
        .D(n883), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_), .QN(n1959) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__13_ ( 
        .D(n882), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .QN(n1958) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__14_ ( 
        .D(n881), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .QN(n1964) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__15_ ( 
        .D(n880), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .QN(n1985) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__16_ ( 
        .D(n879), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .QN(n1968) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__17_ ( 
        .D(n878), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .QN(n1967) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__18_ ( 
        .D(n877), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .QN(n1962) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__19_ ( 
        .D(n876), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .QN(n1986) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__20_ ( 
        .D(n875), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_), .QN(n1979) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__21_ ( 
        .D(n874), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .QN(n2035) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__22_ ( 
        .D(n873), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .QN(n2037) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__23_ ( 
        .D(n872), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .QN(n2038) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__24_ ( 
        .D(n871), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_), .QN(n2012) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__25_ ( 
        .D(n870), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .QN(n2036) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__26_ ( 
        .D(n869), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_reg_1__27_ ( 
        .D(n868), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_reg_1__mantissa__6_ ( 
        .D(n867), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__mantissa__6_), .QN(n2027) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_reg_1__sign_ ( 
        .D(n866), .CK(clk_i), .RN(rst_ni), .QN(n2028) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_stat_q_reg_1__NV_ ( 
        .D(n865), .CK(clk_i), .RN(rst_ni), .QN(n2029) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_reg_1_ ( 
        .D(n864), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_1_), .QN(n2040) );
  DFFR_X1 gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tag_q_reg_1_ ( 
        .D(n862), .CK(clk_i), .RN(rst_ni), .Q(
        gen_operation_groups_0__i_opgroup_block_fmt_outputs_4__tag_) );
  FA_X1 DP_OP_218J3_126_2335_U10 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[1]), .CI(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[0]), .CO(DP_OP_218J3_126_2335_n9), .S(C178_DATA3_1) );
  FA_X1 DP_OP_218J3_126_2335_U9 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[2]), .CI(DP_OP_218J3_126_2335_n9), .CO(DP_OP_218J3_126_2335_n8), .S(C178_DATA3_2)
         );
  FA_X1 DP_OP_218J3_126_2335_U8 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[3]), .CI(DP_OP_218J3_126_2335_n8), .CO(DP_OP_218J3_126_2335_n7), .S(C178_DATA3_3)
         );
  FA_X1 DP_OP_218J3_126_2335_U7 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[4]), .CI(DP_OP_218J3_126_2335_n7), .CO(DP_OP_218J3_126_2335_n6), .S(C178_DATA3_4)
         );
  FA_X1 DP_OP_218J3_126_2335_U6 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[5]), .CI(DP_OP_218J3_126_2335_n6), .CO(DP_OP_218J3_126_2335_n5), .S(C178_DATA3_5)
         );
  FA_X1 DP_OP_218J3_126_2335_U5 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[6]), .CI(DP_OP_218J3_126_2335_n5), .CO(DP_OP_218J3_126_2335_n4), .S(C178_DATA3_6)
         );
  FA_X1 DP_OP_218J3_126_2335_U4 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[7]), .CI(DP_OP_218J3_126_2335_n4), .CO(DP_OP_218J3_126_2335_n3), .S(C178_DATA3_7)
         );
  FA_X1 DP_OP_218J3_126_2335_U3 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[8]), .CI(DP_OP_218J3_126_2335_n3), .CO(DP_OP_218J3_126_2335_n2), .S(C178_DATA3_8)
         );
  FA_X1 intadd_20_U17 ( .A(intadd_20_A_0_), .B(intadd_20_B_0_), .CI(
        intadd_20_CI), .CO(intadd_20_n16), .S(intadd_20_SUM_0_) );
  FA_X1 intadd_20_U16 ( .A(intadd_20_A_1_), .B(intadd_20_B_1_), .CI(
        intadd_20_n16), .CO(intadd_20_n15), .S(intadd_20_SUM_1_) );
  FA_X1 intadd_20_U15 ( .A(intadd_20_A_2_), .B(intadd_20_B_2_), .CI(
        intadd_20_n15), .CO(intadd_20_n14), .S(intadd_20_SUM_2_) );
  FA_X1 intadd_20_U14 ( .A(intadd_20_A_3_), .B(intadd_20_B_3_), .CI(
        intadd_20_n14), .CO(intadd_20_n13), .S(intadd_20_SUM_3_) );
  FA_X1 intadd_20_U13 ( .A(intadd_20_A_4_), .B(intadd_20_B_4_), .CI(
        intadd_20_n13), .CO(intadd_20_n12), .S(intadd_20_SUM_4_) );
  FA_X1 intadd_20_U12 ( .A(intadd_20_A_5_), .B(intadd_20_B_5_), .CI(
        intadd_20_n12), .CO(intadd_20_n11), .S(intadd_20_SUM_5_) );
  FA_X1 intadd_20_U11 ( .A(intadd_20_A_6_), .B(intadd_20_B_6_), .CI(
        intadd_20_n11), .CO(intadd_20_n10), .S(intadd_20_SUM_6_) );
  FA_X1 intadd_20_U10 ( .A(intadd_20_A_7_), .B(intadd_20_B_7_), .CI(
        intadd_20_n10), .CO(intadd_20_n9), .S(intadd_20_SUM_7_) );
  FA_X1 intadd_20_U9 ( .A(intadd_20_A_8_), .B(intadd_20_B_8_), .CI(
        intadd_20_n9), .CO(intadd_20_n8), .S(intadd_20_SUM_8_) );
  FA_X1 intadd_20_U8 ( .A(intadd_20_A_9_), .B(intadd_20_B_9_), .CI(
        intadd_20_n8), .CO(intadd_20_n7), .S(intadd_20_SUM_9_) );
  FA_X1 intadd_20_U7 ( .A(intadd_20_A_10_), .B(intadd_20_B_10_), .CI(
        intadd_20_n7), .CO(intadd_20_n6), .S(intadd_20_SUM_10_) );
  FA_X1 intadd_20_U6 ( .A(intadd_20_A_11_), .B(intadd_20_B_11_), .CI(
        intadd_20_n6), .CO(intadd_20_n5), .S(intadd_20_SUM_11_) );
  FA_X1 intadd_20_U5 ( .A(intadd_20_A_12_), .B(intadd_20_B_12_), .CI(
        intadd_20_n5), .CO(intadd_20_n4), .S(intadd_20_SUM_12_) );
  FA_X1 intadd_20_U4 ( .A(intadd_20_A_13_), .B(intadd_20_B_13_), .CI(
        intadd_20_n4), .CO(intadd_20_n3), .S(intadd_20_SUM_13_) );
  FA_X1 intadd_20_U3 ( .A(intadd_20_A_14_), .B(intadd_20_B_14_), .CI(
        intadd_20_n3), .CO(intadd_20_n2), .S(intadd_20_SUM_14_) );
  FA_X1 intadd_20_U2 ( .A(intadd_20_A_15_), .B(intadd_20_B_15_), .CI(
        intadd_20_n2), .CO(intadd_20_n1), .S(intadd_20_SUM_15_) );
  FA_X1 intadd_21_U13 ( .A(intadd_21_A_0_), .B(intadd_21_B_0_), .CI(
        intadd_21_CI), .CO(intadd_21_n12), .S(intadd_21_SUM_0_) );
  FA_X1 intadd_21_U12 ( .A(intadd_21_A_1_), .B(intadd_21_B_1_), .CI(
        intadd_21_n12), .CO(intadd_21_n11), .S(intadd_21_SUM_1_) );
  FA_X1 intadd_21_U11 ( .A(intadd_21_A_2_), .B(intadd_21_B_2_), .CI(
        intadd_21_n11), .CO(intadd_21_n10), .S(intadd_21_SUM_2_) );
  FA_X1 intadd_21_U10 ( .A(intadd_21_A_3_), .B(intadd_21_B_3_), .CI(
        intadd_21_n10), .CO(intadd_21_n9), .S(intadd_21_SUM_3_) );
  FA_X1 intadd_21_U9 ( .A(intadd_21_A_4_), .B(intadd_21_B_4_), .CI(
        intadd_21_n9), .CO(intadd_21_n8), .S(intadd_21_SUM_4_) );
  FA_X1 intadd_21_U8 ( .A(intadd_21_A_5_), .B(intadd_21_B_5_), .CI(
        intadd_21_n8), .CO(intadd_21_n7), .S(intadd_21_SUM_5_) );
  FA_X1 intadd_21_U7 ( .A(intadd_21_A_6_), .B(intadd_29_n1), .CI(intadd_21_n7), 
        .CO(intadd_21_n6), .S(intadd_21_SUM_6_) );
  FA_X1 intadd_21_U6 ( .A(intadd_21_A_7_), .B(intadd_28_n1), .CI(intadd_21_n6), 
        .CO(intadd_21_n5), .S(intadd_21_SUM_7_) );
  FA_X1 intadd_21_U5 ( .A(intadd_21_A_8_), .B(intadd_26_n1), .CI(intadd_21_n5), 
        .CO(intadd_21_n4), .S(intadd_21_SUM_8_) );
  FA_X1 intadd_21_U4 ( .A(intadd_21_A_9_), .B(intadd_25_n1), .CI(intadd_21_n4), 
        .CO(intadd_21_n3), .S(intadd_21_SUM_9_) );
  FA_X1 intadd_21_U3 ( .A(intadd_21_A_10_), .B(intadd_24_n1), .CI(intadd_21_n3), .CO(intadd_21_n2), .S(intadd_21_SUM_10_) );
  FA_X1 intadd_21_U2 ( .A(intadd_21_A_11_), .B(intadd_27_n1), .CI(intadd_21_n2), .CO(intadd_21_n1), .S(intadd_21_SUM_11_) );
  FA_X1 intadd_22_U9 ( .A(intadd_22_A_0_), .B(intadd_22_B_0_), .CI(
        intadd_22_CI), .CO(intadd_22_n8), .S(intadd_22_SUM_0_) );
  FA_X1 intadd_22_U8 ( .A(intadd_22_A_1_), .B(intadd_22_B_1_), .CI(
        intadd_22_n8), .CO(intadd_22_n7), .S(intadd_22_SUM_1_) );
  FA_X1 intadd_22_U7 ( .A(intadd_22_A_2_), .B(intadd_22_B_2_), .CI(
        intadd_22_n7), .CO(intadd_22_n6), .S(intadd_22_SUM_2_) );
  FA_X1 intadd_22_U6 ( .A(intadd_22_A_3_), .B(intadd_22_B_3_), .CI(
        intadd_22_n6), .CO(intadd_22_n5), .S(intadd_22_SUM_3_) );
  FA_X1 intadd_22_U5 ( .A(intadd_22_A_4_), .B(intadd_22_B_4_), .CI(
        intadd_22_n5), .CO(intadd_22_n4), .S(intadd_22_SUM_4_) );
  FA_X1 intadd_22_U4 ( .A(intadd_22_A_5_), .B(intadd_22_B_5_), .CI(
        intadd_22_n4), .CO(intadd_22_n3), .S(intadd_22_SUM_5_) );
  FA_X1 intadd_22_U3 ( .A(intadd_22_A_6_), .B(intadd_22_B_6_), .CI(
        intadd_22_n3), .CO(intadd_22_n2), .S(intadd_22_SUM_6_) );
  FA_X1 intadd_22_U2 ( .A(intadd_22_A_7_), .B(n2041), .CI(intadd_22_n2), .CO(
        intadd_22_n1), .S(intadd_22_SUM_7_) );
  FA_X1 intadd_23_U7 ( .A(n2004), .B(intadd_23_B_0_), .CI(intadd_23_CI), .CO(
        intadd_23_n6), .S(intadd_23_SUM_0_) );
  FA_X1 intadd_23_U6 ( .A(n2006), .B(intadd_23_B_1_), .CI(intadd_23_n6), .CO(
        intadd_23_n5), .S(intadd_23_SUM_1_) );
  FA_X1 intadd_23_U5 ( .A(n2000), .B(intadd_23_B_2_), .CI(intadd_23_n5), .CO(
        intadd_23_n4), .S(intadd_23_SUM_2_) );
  FA_X1 intadd_23_U4 ( .A(n1970), .B(intadd_23_B_3_), .CI(intadd_23_n4), .CO(
        intadd_23_n3), .S(intadd_23_SUM_3_) );
  FA_X1 intadd_23_U3 ( .A(n2009), .B(intadd_23_B_4_), .CI(intadd_23_n3), .CO(
        intadd_23_n2), .S(intadd_23_SUM_4_) );
  FA_X1 intadd_23_U2 ( .A(n2010), .B(intadd_23_B_5_), .CI(intadd_23_n2), .CO(
        intadd_23_n1), .S(intadd_23_SUM_5_) );
  FA_X1 intadd_24_U5 ( .A(intadd_24_A_0_), .B(intadd_24_B_0_), .CI(
        intadd_24_CI), .CO(intadd_24_n4), .S(intadd_24_SUM_0_) );
  FA_X1 intadd_24_U4 ( .A(intadd_24_A_1_), .B(intadd_24_B_1_), .CI(
        intadd_24_n4), .CO(intadd_24_n3), .S(intadd_24_SUM_1_) );
  FA_X1 intadd_24_U3 ( .A(intadd_24_A_2_), .B(intadd_24_B_2_), .CI(
        intadd_24_n3), .CO(intadd_24_n2), .S(intadd_24_SUM_2_) );
  FA_X1 intadd_24_U2 ( .A(intadd_24_A_3_), .B(intadd_24_B_3_), .CI(
        intadd_24_n2), .CO(intadd_24_n1), .S(intadd_21_A_9_) );
  FA_X1 intadd_25_U5 ( .A(intadd_25_A_0_), .B(intadd_25_B_0_), .CI(
        intadd_25_CI), .CO(intadd_25_n4), .S(intadd_25_SUM_0_) );
  FA_X1 intadd_25_U4 ( .A(intadd_25_A_1_), .B(intadd_25_B_1_), .CI(
        intadd_25_n4), .CO(intadd_25_n3), .S(intadd_25_SUM_1_) );
  FA_X1 intadd_25_U3 ( .A(intadd_25_A_2_), .B(intadd_25_B_2_), .CI(
        intadd_25_n3), .CO(intadd_25_n2), .S(intadd_25_SUM_2_) );
  FA_X1 intadd_25_U2 ( .A(intadd_25_A_3_), .B(intadd_24_SUM_2_), .CI(
        intadd_25_n2), .CO(intadd_25_n1), .S(intadd_21_A_8_) );
  FA_X1 intadd_26_U5 ( .A(intadd_26_A_0_), .B(intadd_26_B_0_), .CI(
        intadd_26_CI), .CO(intadd_26_n4), .S(intadd_26_SUM_0_) );
  FA_X1 intadd_26_U4 ( .A(intadd_26_A_1_), .B(intadd_26_B_1_), .CI(
        intadd_26_n4), .CO(intadd_26_n3), .S(intadd_26_SUM_1_) );
  FA_X1 intadd_26_U3 ( .A(intadd_26_A_2_), .B(intadd_24_SUM_0_), .CI(
        intadd_26_n3), .CO(intadd_26_n2), .S(intadd_26_SUM_2_) );
  FA_X1 intadd_26_U2 ( .A(intadd_25_SUM_2_), .B(intadd_24_SUM_1_), .CI(
        intadd_26_n2), .CO(intadd_26_n1), .S(intadd_21_A_7_) );
  FA_X1 intadd_27_U4 ( .A(intadd_27_A_0_), .B(intadd_27_B_0_), .CI(
        intadd_27_CI), .CO(intadd_27_n3), .S(intadd_24_B_2_) );
  FA_X1 intadd_27_U3 ( .A(intadd_27_A_1_), .B(intadd_27_B_1_), .CI(
        intadd_27_n3), .CO(intadd_27_n2), .S(intadd_24_A_3_) );
  FA_X1 intadd_27_U2 ( .A(intadd_27_A_2_), .B(intadd_27_B_2_), .CI(
        intadd_27_n2), .CO(intadd_27_n1), .S(intadd_21_A_10_) );
  FA_X1 intadd_28_U4 ( .A(intadd_28_A_0_), .B(intadd_28_B_0_), .CI(
        intadd_28_CI), .CO(intadd_28_n3), .S(intadd_28_SUM_0_) );
  FA_X1 intadd_28_U3 ( .A(intadd_28_A_1_), .B(intadd_25_SUM_0_), .CI(
        intadd_28_n3), .CO(intadd_28_n2), .S(intadd_28_SUM_1_) );
  FA_X1 intadd_28_U2 ( .A(intadd_25_SUM_1_), .B(intadd_26_SUM_2_), .CI(
        intadd_28_n2), .CO(intadd_28_n1), .S(intadd_21_A_6_) );
  FA_X1 intadd_29_U4 ( .A(intadd_29_A_0_), .B(intadd_29_B_0_), .CI(
        intadd_29_CI), .CO(intadd_29_n3), .S(intadd_29_SUM_0_) );
  FA_X1 intadd_29_U3 ( .A(intadd_29_A_1_), .B(intadd_26_SUM_0_), .CI(
        intadd_29_n3), .CO(intadd_29_n2), .S(intadd_29_SUM_1_) );
  FA_X1 intadd_29_U2 ( .A(intadd_26_SUM_1_), .B(intadd_28_SUM_1_), .CI(
        intadd_29_n2), .CO(intadd_29_n1), .S(intadd_21_A_5_) );
  INV_X1 U938 ( .A(n1188), .ZN(n997) );
  INV_X1 U939 ( .A(n997), .ZN(n998) );
  NOR2_X2 U940 ( .A1(n1258), .A2(n1256), .ZN(n1422) );
  OAI21_X2 U941 ( .B1(intadd_22_SUM_1_), .B2(n1048), .A(n1047), .ZN(n1731) );
  XOR2_X2 U942 ( .A(n1937), .B(n1938), .Z(n1797) );
  AOI211_X4 U943 ( .C1(n1199), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__2_), .A(n1186), .B(n1185), .ZN(n1430) );
  CLKBUF_X2 U944 ( .A(n1625), .Z(n1626) );
  OAI21_X2 U945 ( .B1(out_ready_i), .B2(n2026), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_), .ZN(n1851) );
  INV_X1 U946 ( .A(n1851), .ZN(n1884) );
  INV_X1 U947 ( .A(n1851), .ZN(n1951) );
  CLKBUF_X2 U948 ( .A(n1851), .Z(n1949) );
  NOR3_X1 U949 ( .A1(dst_fmt_i[0]), .A2(dst_fmt_i[1]), .A3(n1553), .ZN(n1956)
         );
  NOR2_X1 U950 ( .A1(n1999), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_), .ZN(n1631) );
  INV_X1 U951 ( .A(n1631), .ZN(n1654) );
  AOI21_X1 U952 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .B2(n1654), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .ZN(n1035) );
  NOR4_X1 U953 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__5_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_), .ZN(n999) );
  NAND4_X1 U954 ( .A1(n999), .A2(n2002), .A3(n1972), .A4(n1963), .ZN(n1028) );
  NOR4_X1 U955 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_), .ZN(n1000) );
  NAND3_X1 U956 ( .A1(n1000), .A2(n2000), .A3(n1970), .ZN(n1001) );
  NOR3_X1 U957 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_), .A3(n1001), .ZN(n1650) );
  NAND2_X1 U958 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .A2(n1650), .ZN(n1530) );
  NOR4_X1 U959 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_), .ZN(n1003) );
  NOR4_X1 U960 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_), .ZN(n1002) );
  NAND2_X1 U961 ( .A1(n1003), .A2(n1002), .ZN(n1646) );
  OR4_X1 U962 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__0_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__5_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__1_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__4_), .ZN(n1004) );
  OR4_X1 U963 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__3_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__2_), .A4(n1004), .ZN(n1024) );
  NOR3_X1 U964 ( .A1(n2001), .A2(n1024), .A3(n1631), .ZN(n1021) );
  INV_X1 U965 ( .A(n1021), .ZN(n1022) );
  OAI22_X1 U966 ( .A1(n1028), .A2(n1530), .B1(n1646), .B2(n1022), .ZN(n1399)
         );
  AOI21_X1 U967 ( .B1(intadd_23_n1), .B2(n1035), .A(n1399), .ZN(n1635) );
  NAND2_X1 U968 ( .A1(intadd_22_n1), .A2(n1635), .ZN(n1536) );
  NOR2_X1 U969 ( .A1(n1949), .A2(n1536), .ZN(n1643) );
  AOI21_X1 U970 ( .B1(n1949), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__9_), .A(n1643), .ZN(n1005) );
  INV_X1 U971 ( .A(n1005), .ZN(n914) );
  NAND2_X1 U972 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_), .A2(n1999), .ZN(n1007) );
  NAND3_X1 U973 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__15_), .A2(n1654), .A3(n1007), .ZN(n1006) );
  OAI21_X1 U974 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__15_), .B2(n1007), .A(n1006), .ZN(n1008) );
  XOR2_X1 U975 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__15_), .B(n1008), .Z(n1937) );
  NAND2_X1 U976 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__1_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_), .ZN(n1639) );
  OAI221_X1 U977 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_1_), .B2(n1981), .C1(n2020), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__15_), .A(n1639), .ZN(n1938) );
  OAI22_X1 U978 ( .A1(n1949), .A2(n1797), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_1_), .B2(n1884), .ZN(n1009) );
  INV_X1 U979 ( .A(n1009), .ZN(n897) );
  NOR2_X1 U980 ( .A1(intadd_23_SUM_1_), .A2(n1399), .ZN(intadd_22_A_1_) );
  OAI22_X1 U981 ( .A1(n1949), .A2(intadd_22_A_1_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_), .B2(n1884), .ZN(n1010) );
  INV_X1 U982 ( .A(n1010), .ZN(n931) );
  OAI22_X1 U983 ( .A1(n1949), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__1_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__1_), .B2(n1884), .ZN(n1011) );
  INV_X1 U984 ( .A(n1011), .ZN(n939) );
  OAI22_X1 U985 ( .A1(n1949), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__0_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_), .B2(n1532), .ZN(n1012) );
  INV_X1 U986 ( .A(n1012), .ZN(n941) );
  INV_X1 U987 ( .A(intadd_22_SUM_0_), .ZN(n1041) );
  OAI22_X1 U988 ( .A1(n1949), .A2(n1041), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_), .B2(n1884), .ZN(n1013) );
  INV_X1 U989 ( .A(n1013), .ZN(n922) );
  OAI22_X1 U990 ( .A1(n1949), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__2_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__2_), .B2(n1532), .ZN(n1014) );
  INV_X1 U991 ( .A(n1014), .ZN(n943) );
  NAND4_X1 U992 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_), .ZN(n1016) );
  NAND4_X1 U993 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .ZN(n1015) );
  NOR2_X1 U994 ( .A1(n1016), .A2(n1015), .ZN(n1050) );
  NAND2_X1 U995 ( .A1(n1050), .A2(n1639), .ZN(n2041) );
  NAND4_X1 U996 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_), .ZN(n1018) );
  NAND4_X1 U997 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_), .ZN(n1017) );
  NOR2_X1 U998 ( .A1(n1018), .A2(n1017), .ZN(n1648) );
  NAND4_X1 U999 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_), .ZN(n1020) );
  NAND4_X1 U1000 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__10_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__11_), .ZN(n1019) );
  NOR2_X1 U1001 ( .A1(n1020), .A2(n1019), .ZN(n1649) );
  AOI21_X1 U1002 ( .B1(n1021), .B2(n1648), .A(n1649), .ZN(n1939) );
  INV_X1 U1003 ( .A(n1646), .ZN(n1054) );
  AOI22_X1 U1004 ( .A1(n1650), .A2(n1648), .B1(n1054), .B2(n1649), .ZN(n1023)
         );
  NOR3_X1 U1005 ( .A1(n1023), .A2(n1022), .A3(n1028), .ZN(n1946) );
  INV_X1 U1006 ( .A(n1946), .ZN(n1027) );
  NAND3_X1 U1007 ( .A1(n1648), .A2(n1654), .A3(n1024), .ZN(n1943) );
  OR4_X1 U1008 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_), .ZN(n1025) );
  OR4_X1 U1009 ( .A1(n1025), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .ZN(n1026) );
  NAND3_X1 U1010 ( .A1(n1050), .A2(n1639), .A3(n1026), .ZN(n1942) );
  AND3_X1 U1011 ( .A1(n1027), .A2(n1943), .A3(n1942), .ZN(n1029) );
  NAND2_X1 U1012 ( .A1(n1649), .A2(n1028), .ZN(n1944) );
  NAND3_X1 U1013 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .A2(n1029), .A3(n1944), .ZN(n1953) );
  AOI21_X1 U1014 ( .B1(n1939), .B2(n2041), .A(n1953), .ZN(n1952) );
  INV_X1 U1015 ( .A(n1939), .ZN(n1936) );
  NAND4_X1 U1016 ( .A1(n1797), .A2(n1050), .A3(n1639), .A4(n1936), .ZN(n1945)
         );
  NAND3_X1 U1017 ( .A1(n1532), .A2(n1952), .A3(n1945), .ZN(n1940) );
  OAI21_X1 U1018 ( .B1(n1532), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__mantissa__6_), .A(n1940), .ZN(n1030) );
  INV_X1 U1019 ( .A(n1030), .ZN(n867) );
  NOR2_X1 U1020 ( .A1(intadd_22_SUM_2_), .A2(intadd_22_SUM_1_), .ZN(n1044) );
  OR2_X1 U1021 ( .A1(n1536), .A2(n1044), .ZN(n1033) );
  OR4_X1 U1022 ( .A1(intadd_22_SUM_6_), .A2(intadd_22_SUM_4_), .A3(
        intadd_22_SUM_3_), .A4(intadd_22_SUM_5_), .ZN(n1032) );
  INV_X1 U1023 ( .A(n1536), .ZN(n1031) );
  OAI21_X1 U1024 ( .B1(n1032), .B2(intadd_22_SUM_7_), .A(n1031), .ZN(n1047) );
  NAND2_X1 U1025 ( .A1(n1033), .A2(n1047), .ZN(n1768) );
  OAI22_X1 U1026 ( .A1(n1949), .A2(n1768), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__4_), .B2(n1951), .ZN(n1034) );
  INV_X1 U1027 ( .A(n1034), .ZN(n909) );
  NOR2_X1 U1028 ( .A1(intadd_23_SUM_2_), .A2(n1399), .ZN(intadd_22_A_2_) );
  NOR2_X1 U1029 ( .A1(intadd_23_SUM_3_), .A2(n1399), .ZN(intadd_22_A_3_) );
  NOR2_X1 U1030 ( .A1(intadd_23_SUM_4_), .A2(n1399), .ZN(intadd_22_A_4_) );
  NAND2_X1 U1031 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .A2(n1654), .ZN(n1394) );
  INV_X1 U1032 ( .A(n1035), .ZN(n1036) );
  OAI21_X1 U1033 ( .B1(n1394), .B2(n2011), .A(n1036), .ZN(n1038) );
  AOI21_X1 U1034 ( .B1(intadd_23_n1), .B2(n1038), .A(n1399), .ZN(n1037) );
  OAI21_X1 U1035 ( .B1(intadd_23_n1), .B2(n1038), .A(n1037), .ZN(
        intadd_22_A_6_) );
  NOR2_X1 U1036 ( .A1(intadd_23_SUM_5_), .A2(n1399), .ZN(intadd_22_A_5_) );
  NAND4_X1 U1037 ( .A1(intadd_22_SUM_7_), .A2(intadd_22_SUM_6_), .A3(
        intadd_22_SUM_3_), .A4(intadd_22_SUM_5_), .ZN(n1040) );
  OAI21_X1 U1038 ( .B1(intadd_22_SUM_2_), .B2(intadd_22_SUM_1_), .A(
        intadd_22_SUM_4_), .ZN(n1039) );
  OAI21_X1 U1039 ( .B1(n1040), .B2(n1039), .A(n1536), .ZN(n1043) );
  NAND2_X1 U1040 ( .A1(n1047), .A2(n1043), .ZN(n1058) );
  NOR2_X1 U1041 ( .A1(n1058), .A2(n1041), .ZN(n1730) );
  OAI22_X1 U1042 ( .A1(n1949), .A2(n1730), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__1_), .B2(n1951), .ZN(n1042) );
  INV_X1 U1043 ( .A(n1042), .ZN(n912) );
  INV_X1 U1044 ( .A(n1043), .ZN(n1048) );
  AOI21_X1 U1045 ( .B1(intadd_22_SUM_1_), .B2(intadd_22_SUM_2_), .A(n1044), 
        .ZN(n1045) );
  OAI21_X1 U1046 ( .B1(n1048), .B2(n1045), .A(n1047), .ZN(n1749) );
  OAI22_X1 U1047 ( .A1(n1949), .A2(n1749), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__3_), .B2(n1884), .ZN(n1046) );
  INV_X1 U1048 ( .A(n1046), .ZN(n910) );
  OAI22_X1 U1049 ( .A1(n1949), .A2(n1731), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__2_), .B2(n1532), .ZN(n1049) );
  INV_X1 U1050 ( .A(n1049), .ZN(n911) );
  NOR4_X1 U1051 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_), .ZN(n1052) );
  NOR4_X1 U1052 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .ZN(n1051) );
  AOI21_X1 U1053 ( .B1(n1052), .B2(n1051), .A(n1050), .ZN(n1053) );
  NAND3_X1 U1054 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .A2(n1053), .A3(n1639), .ZN(n1545) );
  INV_X1 U1055 ( .A(n1545), .ZN(n1534) );
  NAND2_X1 U1056 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .A2(n1639), .ZN(n1533) );
  XOR2_X1 U1057 ( .A(n1534), .B(n1533), .Z(n1636) );
  NOR2_X1 U1058 ( .A1(n1631), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_), .ZN(n1531) );
  XOR2_X1 U1059 ( .A(n1531), .B(n1530), .Z(n1057) );
  NAND3_X1 U1060 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .A2(n1054), .A3(n1654), .ZN(n1529) );
  XOR2_X1 U1061 ( .A(n2003), .B(n1529), .Z(n1056) );
  NOR2_X1 U1062 ( .A1(n1057), .A2(n1056), .ZN(n1055) );
  AOI211_X1 U1063 ( .C1(n1057), .C2(n1056), .A(n1399), .B(n1055), .ZN(n1637)
         );
  NOR2_X1 U1064 ( .A1(n1636), .A2(n1637), .ZN(intadd_22_A_0_) );
  INV_X1 U1065 ( .A(n1730), .ZN(n1389) );
  AOI211_X1 U1066 ( .C1(n1637), .C2(n1636), .A(intadd_22_A_0_), .B(n1058), 
        .ZN(n1063) );
  INV_X1 U1067 ( .A(n1063), .ZN(n1642) );
  OAI221_X1 U1068 ( .B1(n1642), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_), .C1(n1063), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_), .A(n1639), .ZN(n1070) );
  INV_X1 U1069 ( .A(n1639), .ZN(n1546) );
  NOR2_X1 U1070 ( .A1(n1642), .A2(n1546), .ZN(n1062) );
  NAND2_X1 U1071 ( .A1(n1062), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .ZN(n1059) );
  OAI22_X1 U1072 ( .A1(n1389), .A2(n1070), .B1(n1059), .B2(n1730), .ZN(n1079)
         );
  AND2_X1 U1073 ( .A1(n1731), .A2(n1079), .ZN(n1758) );
  OAI221_X1 U1074 ( .B1(n1642), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_), .C1(n1063), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .A(n1639), .ZN(n1065) );
  NOR2_X1 U1075 ( .A1(n1389), .A2(n1065), .ZN(n1074) );
  AND2_X1 U1076 ( .A1(n1731), .A2(n1074), .ZN(n1754) );
  INV_X1 U1077 ( .A(n1731), .ZN(n1393) );
  NAND3_X1 U1078 ( .A1(n1730), .A2(n1062), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .ZN(n1075) );
  NOR2_X1 U1079 ( .A1(n1393), .A2(n1075), .ZN(n1751) );
  NOR3_X1 U1080 ( .A1(n1758), .A2(n1754), .A3(n1751), .ZN(n1084) );
  NOR2_X1 U1081 ( .A1(n1546), .A2(n1063), .ZN(n1061) );
  AOI22_X1 U1082 ( .A1(n1061), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_), .B2(n1062), .ZN(n1390) );
  AOI22_X1 U1083 ( .A1(n1061), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_), .B1(n1062), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_), .ZN(n1066) );
  AOI22_X1 U1084 ( .A1(n1730), .A2(n1390), .B1(n1066), .B2(n1389), .ZN(n1073)
         );
  INV_X1 U1085 ( .A(n1073), .ZN(n1060) );
  NAND2_X1 U1086 ( .A1(n1389), .A2(n1731), .ZN(n1067) );
  AOI22_X1 U1087 ( .A1(n1534), .A2(n1063), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .B2(n1061), .ZN(n1728) );
  OAI22_X1 U1088 ( .A1(n1731), .A2(n1060), .B1(n1067), .B2(n1728), .ZN(n1753)
         );
  INV_X1 U1089 ( .A(n1753), .ZN(n1772) );
  NAND2_X1 U1090 ( .A1(n1642), .A2(n1534), .ZN(n1732) );
  AOI22_X1 U1091 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .A2(n1062), .B1(n1061), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_), .ZN(n1072) );
  OAI221_X1 U1092 ( .B1(n1063), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_), .C1(n1642), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_), .A(n1639), .ZN(n1071) );
  AOI22_X1 U1093 ( .A1(n1730), .A2(n1072), .B1(n1071), .B2(n1389), .ZN(n1078)
         );
  INV_X1 U1094 ( .A(n1078), .ZN(n1064) );
  OAI22_X1 U1095 ( .A1(n1732), .A2(n1067), .B1(n1731), .B2(n1064), .ZN(n1756)
         );
  INV_X1 U1096 ( .A(n1756), .ZN(n1786) );
  NOR2_X1 U1097 ( .A1(n1728), .A2(n1389), .ZN(n1069) );
  AOI22_X1 U1098 ( .A1(n1730), .A2(n1066), .B1(n1065), .B2(n1389), .ZN(n1388)
         );
  NOR2_X1 U1099 ( .A1(n1390), .A2(n1067), .ZN(n1068) );
  AOI221_X1 U1100 ( .B1(n1069), .B2(n1731), .C1(n1388), .C2(n1393), .A(n1068), 
        .ZN(n1720) );
  AOI22_X1 U1101 ( .A1(n1730), .A2(n1071), .B1(n1070), .B2(n1389), .ZN(n1076)
         );
  AOI22_X1 U1102 ( .A1(n1730), .A2(n1732), .B1(n1072), .B2(n1389), .ZN(n1392)
         );
  AOI22_X1 U1103 ( .A1(n1393), .A2(n1076), .B1(n1392), .B2(n1731), .ZN(n1783)
         );
  NAND4_X1 U1104 ( .A1(n1772), .A2(n1786), .A3(n1720), .A4(n1783), .ZN(n1082)
         );
  INV_X1 U1105 ( .A(n1388), .ZN(n1080) );
  AOI22_X1 U1106 ( .A1(n1393), .A2(n1074), .B1(n1073), .B2(n1731), .ZN(n1778)
         );
  INV_X1 U1107 ( .A(n1075), .ZN(n1077) );
  AOI22_X1 U1108 ( .A1(n1393), .A2(n1077), .B1(n1076), .B2(n1731), .ZN(n1765)
         );
  AOI22_X1 U1109 ( .A1(n1393), .A2(n1079), .B1(n1078), .B2(n1731), .ZN(n1781)
         );
  NAND4_X1 U1110 ( .A1(n1080), .A2(n1778), .A3(n1765), .A4(n1781), .ZN(n1081)
         );
  OAI21_X1 U1111 ( .B1(n1082), .B2(n1081), .A(n1749), .ZN(n1083) );
  INV_X1 U1112 ( .A(n1768), .ZN(n1743) );
  AOI21_X1 U1113 ( .B1(n1084), .B2(n1083), .A(n1743), .ZN(n1798) );
  OAI22_X1 U1114 ( .A1(n1949), .A2(n1798), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sticky_q_1_), .B2(n1884), .ZN(n1085) );
  INV_X1 U1115 ( .A(n1085), .ZN(n908) );
  NOR2_X1 U1116 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__0_), .ZN(n1088) );
  NOR4_X1 U1117 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__6_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__5_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__4_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__3_), .ZN(n1087) );
  NAND2_X1 U1118 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__1_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__0_), .ZN(n1086) );
  OAI211_X1 U1119 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_1_), .C2(n1088), .A(n1087), .B(n1086), .ZN(n1089) );
  NOR4_X1 U1120 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__8_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__7_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__2_), .A4(n1089), .ZN(n1090) );
  OR2_X1 U1121 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_diff_q_1__9_), .A2(n1090), .ZN(n1248) );
  NOR2_X1 U1122 ( .A1(n1248), .A2(n2017), .ZN(n1131) );
  NOR4_X1 U1123 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .ZN(n1105) );
  NAND2_X1 U1124 ( .A1(n1964), .A2(n1958), .ZN(n1097) );
  INV_X1 U1125 ( .A(n1097), .ZN(n1091) );
  NAND4_X1 U1126 ( .A1(n1959), .A2(n1965), .A3(n1105), .A4(n1091), .ZN(n1093)
         );
  INV_X1 U1127 ( .A(n1093), .ZN(n1201) );
  NOR2_X1 U1128 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .ZN(n1094) );
  NOR4_X1 U1129 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .ZN(n1101) );
  NAND3_X1 U1130 ( .A1(n1201), .A2(n1094), .A3(n1101), .ZN(n1092) );
  NOR3_X1 U1131 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .A3(n1092), .ZN(n1109) );
  NAND2_X1 U1132 ( .A1(n1109), .A2(n1997), .ZN(n1107) );
  NOR2_X1 U1133 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .A2(n1107), .ZN(n1123) );
  NAND2_X1 U1134 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .ZN(n1120) );
  NOR2_X1 U1135 ( .A1(n1971), .A2(n1109), .ZN(n1138) );
  INV_X1 U1136 ( .A(n1138), .ZN(n1119) );
  AOI21_X1 U1137 ( .B1(n1971), .B2(n1109), .A(n1138), .ZN(n1128) );
  NOR2_X1 U1138 ( .A1(n1109), .A2(n1093), .ZN(n1115) );
  AOI22_X1 U1139 ( .A1(n1093), .A2(n1105), .B1(n1101), .B2(n1115), .ZN(n1184)
         );
  INV_X1 U1140 ( .A(n1184), .ZN(n1100) );
  NOR2_X1 U1141 ( .A1(n1100), .A2(n1998), .ZN(n1117) );
  INV_X1 U1142 ( .A(n1094), .ZN(n1095) );
  AOI211_X1 U1143 ( .C1(n1101), .C2(n1095), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .ZN(n1099) );
  NAND2_X1 U1144 ( .A1(n1962), .A2(n1967), .ZN(n1096) );
  AOI211_X1 U1145 ( .C1(n1105), .C2(n1097), .A(n1201), .B(n1096), .ZN(n1098)
         );
  AOI211_X1 U1146 ( .C1(n1115), .C2(n1099), .A(n1123), .B(n1098), .ZN(n1188)
         );
  AOI21_X1 U1147 ( .B1(n1100), .B2(n1998), .A(n1117), .ZN(n1132) );
  NOR2_X1 U1148 ( .A1(n998), .A2(n1132), .ZN(n1112) );
  OAI21_X1 U1149 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .B2(n1959), .A(n1964), .ZN(n1104) );
  OAI221_X1 U1150 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .C2(n1995), .A(n1101), .ZN(n1102) );
  OAI211_X1 U1151 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .C2(n1996), .A(n1966), .B(n1102), .ZN(n1103) );
  AOI22_X1 U1152 ( .A1(n1105), .A2(n1104), .B1(n1201), .B2(n1103), .ZN(n1106)
         );
  OAI211_X1 U1153 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .C2(n1968), .A(n1106), .B(n1962), .ZN(n1108) );
  OAI22_X1 U1154 ( .A1(n1109), .A2(n1108), .B1(n1969), .B2(n1107), .ZN(n1249)
         );
  INV_X1 U1155 ( .A(n1249), .ZN(n1110) );
  AND2_X1 U1156 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N309), .A2(n1110), .ZN(n1251) );
  OR2_X1 U1157 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .A2(n1251), .ZN(n1157) );
  NAND2_X1 U1158 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .A2(n1251), .ZN(n1158) );
  NAND2_X1 U1159 ( .A1(n998), .A2(n1158), .ZN(n1111) );
  NAND2_X1 U1160 ( .A1(n1157), .A2(n1111), .ZN(n1134) );
  OR2_X1 U1161 ( .A1(n1112), .A2(n1134), .ZN(n1114) );
  NAND2_X1 U1162 ( .A1(n1132), .A2(n998), .ZN(n1113) );
  NAND2_X1 U1163 ( .A1(n1114), .A2(n1113), .ZN(n1116) );
  NOR2_X1 U1164 ( .A1(n1117), .A2(n1116), .ZN(n1163) );
  INV_X1 U1165 ( .A(n1115), .ZN(n1178) );
  AOI22_X1 U1166 ( .A1(n1115), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__3_), .B1(n1960), .B2(n1178), .ZN(n1166) );
  NAND2_X1 U1167 ( .A1(n1117), .A2(n1116), .ZN(n1162) );
  NAND2_X1 U1168 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__3_), .A2(n1178), .ZN(n1118) );
  OAI211_X1 U1169 ( .C1(n1163), .C2(n1166), .A(n1162), .B(n1118), .ZN(n1126)
         );
  NOR2_X1 U1170 ( .A1(n1162), .A2(n1118), .ZN(n1124) );
  AOI21_X1 U1171 ( .B1(n1128), .B2(n1126), .A(n1124), .ZN(n1139) );
  FA_X1 U1172 ( .A(n1119), .B(n1139), .CI(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .CO(n1153) );
  OR4_X1 U1173 ( .A1(n1973), .A2(n2005), .A3(n1120), .A4(n1153), .ZN(n1221) );
  NAND4_X1 U1174 ( .A1(n1153), .A2(n1961), .A3(n2005), .A4(n1973), .ZN(n1121)
         );
  OAI21_X1 U1175 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_), .B2(n1121), .A(n2007), .ZN(n1122) );
  AOI22_X1 U1176 ( .A1(n2008), .A2(n1123), .B1(n1221), .B2(n1122), .ZN(n1176)
         );
  AND2_X1 U1177 ( .A1(n1176), .A2(n1248), .ZN(n1253) );
  INV_X1 U1178 ( .A(n1124), .ZN(n1125) );
  NAND2_X1 U1179 ( .A1(n1126), .A2(n1125), .ZN(n1127) );
  XNOR2_X1 U1180 ( .A(n1128), .B(n1127), .ZN(n1129) );
  AND2_X1 U1181 ( .A1(n1253), .A2(n1129), .ZN(n1130) );
  OR2_X1 U1182 ( .A1(n1131), .A2(n1130), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[4]) );
  XOR2_X1 U1183 ( .A(n998), .B(n1132), .Z(n1133) );
  XNOR2_X1 U1184 ( .A(n1134), .B(n1133), .ZN(n1135) );
  NAND2_X1 U1185 ( .A1(n1135), .A2(n1253), .ZN(n1137) );
  INV_X1 U1186 ( .A(n1248), .ZN(n1199) );
  NAND2_X1 U1187 ( .A1(n1199), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__2_), .ZN(n1136) );
  NAND2_X1 U1188 ( .A1(n1137), .A2(n1136), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[2]) );
  NOR2_X1 U1189 ( .A1(n1248), .A2(n2015), .ZN(n1142) );
  FA_X1 U1190 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .B(n1139), .CI(n1138), .S(n1140) );
  AND2_X1 U1191 ( .A1(n1253), .A2(n1140), .ZN(n1141) );
  OR2_X1 U1192 ( .A1(n1142), .A2(n1141), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[5]) );
  NOR2_X1 U1193 ( .A1(n1248), .A2(n1980), .ZN(n1150) );
  AOI22_X1 U1194 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__8_), .A2(n1961), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .B2(n1978), .ZN(n1147) );
  AND2_X1 U1195 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .A2(n1973), .ZN(n1143) );
  NOR2_X1 U1196 ( .A1(n1143), .A2(n1153), .ZN(n1144) );
  AOI21_X1 U1197 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .B2(n2005), .A(n1144), .ZN(n1170) );
  OAI21_X1 U1198 ( .B1(n1144), .B2(n1961), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .ZN(n1145) );
  OAI21_X1 U1199 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .B2(n1170), .A(n1145), .ZN(n1146) );
  XOR2_X1 U1200 ( .A(n1147), .B(n1146), .Z(n1148) );
  AND2_X1 U1201 ( .A1(n1253), .A2(n1148), .ZN(n1149) );
  OR2_X1 U1202 ( .A1(n1150), .A2(n1149), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[8]) );
  NOR2_X1 U1203 ( .A1(n1248), .A2(n2016), .ZN(n1156) );
  AOI22_X1 U1204 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__5_), .B1(n1973), .B2(n2005), .ZN(n1151) );
  INV_X1 U1205 ( .A(n1151), .ZN(n1152) );
  XNOR2_X1 U1206 ( .A(n1153), .B(n1152), .ZN(n1154) );
  AND2_X1 U1207 ( .A1(n1253), .A2(n1154), .ZN(n1155) );
  OR2_X1 U1208 ( .A1(n1156), .A2(n1155), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[6]) );
  NAND2_X1 U1209 ( .A1(n1158), .A2(n1157), .ZN(n1159) );
  XNOR2_X1 U1210 ( .A(n998), .B(n1159), .ZN(n1161) );
  INV_X1 U1211 ( .A(n1253), .ZN(n1183) );
  NAND2_X1 U1212 ( .A1(n1199), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__1_), .ZN(n1160) );
  OAI21_X1 U1213 ( .B1(n1161), .B2(n1183), .A(n1160), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[1]) );
  NOR2_X1 U1214 ( .A1(n1248), .A2(n2014), .ZN(n1169) );
  INV_X1 U1215 ( .A(n1162), .ZN(n1164) );
  NOR2_X1 U1216 ( .A1(n1164), .A2(n1163), .ZN(n1165) );
  XNOR2_X1 U1217 ( .A(n1166), .B(n1165), .ZN(n1167) );
  AND2_X1 U1218 ( .A1(n1253), .A2(n1167), .ZN(n1168) );
  OR2_X1 U1219 ( .A1(n1169), .A2(n1168), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[3]) );
  NOR2_X1 U1220 ( .A1(n1248), .A2(n2013), .ZN(n1174) );
  AOI22_X1 U1221 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__7_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__6_), .B1(n2005), .B2(n1961), .ZN(n1171) );
  XOR2_X1 U1222 ( .A(n1171), .B(n1170), .Z(n1172) );
  AND2_X1 U1223 ( .A1(n1253), .A2(n1172), .ZN(n1173) );
  OR2_X1 U1224 ( .A1(n1174), .A2(n1173), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[7]) );
  AND2_X1 U1225 ( .A1(n1199), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__3_), .ZN(n1182) );
  NAND2_X1 U1226 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .ZN(n1175) );
  OAI21_X1 U1227 ( .B1(n1998), .B2(n1976), .A(n1960), .ZN(n1197) );
  OAI21_X1 U1228 ( .B1(n1175), .B2(n1960), .A(n1197), .ZN(n1177) );
  NOR2_X1 U1229 ( .A1(n1199), .A2(n1176), .ZN(n1187) );
  AND2_X1 U1230 ( .A1(n1177), .A2(n1187), .ZN(n1181) );
  NOR2_X1 U1231 ( .A1(n1184), .A2(n998), .ZN(n1200) );
  XOR2_X1 U1232 ( .A(n1178), .B(n1200), .Z(n1179) );
  AND2_X1 U1233 ( .A1(n1253), .A2(n1179), .ZN(n1180) );
  OR3_X1 U1234 ( .A1(n1182), .A2(n1181), .A3(n1180), .ZN(n1427) );
  AOI211_X1 U1235 ( .C1(n1184), .C2(n998), .A(n1200), .B(n1183), .ZN(n1186) );
  INV_X1 U1236 ( .A(n1187), .ZN(n1196) );
  AOI221_X1 U1237 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__2_), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .C1(n1998), .C2(n1976), .A(n1196), .ZN(n1185) );
  NOR2_X1 U1238 ( .A1(n1427), .A2(n1430), .ZN(n1460) );
  AOI222_X1 U1239 ( .A1(n1249), .A2(n1253), .B1(n1187), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N309), .C1(n1199), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__0_), .ZN(n1259) );
  INV_X1 U1240 ( .A(n1259), .ZN(n1258) );
  AOI22_X1 U1241 ( .A1(n1199), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__1_), .B1(n1253), .B2(n998), .ZN(n1189) );
  OAI21_X1 U1242 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__1_), .B2(n1196), .A(n1189), .ZN(n1256) );
  INV_X1 U1243 ( .A(n1256), .ZN(n1257) );
  NAND2_X1 U1244 ( .A1(n1258), .A2(n1257), .ZN(n1411) );
  INV_X1 U1245 ( .A(n1411), .ZN(n1424) );
  NAND2_X1 U1246 ( .A1(n1258), .A2(n1256), .ZN(n1412) );
  NAND2_X1 U1247 ( .A1(n1256), .A2(n1259), .ZN(n1409) );
  INV_X1 U1248 ( .A(n1409), .ZN(n1421) );
  AOI22_X1 U1249 ( .A1(n1422), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .B1(n1421), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .ZN(n1190) );
  OAI21_X1 U1250 ( .B1(n1412), .B2(n1979), .A(n1190), .ZN(n1191) );
  AOI21_X1 U1251 ( .B1(n1424), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .A(n1191), .ZN(n1462) );
  NAND2_X1 U1252 ( .A1(n1427), .A2(n1430), .ZN(n1437) );
  INV_X1 U1253 ( .A(n1437), .ZN(n1458) );
  AOI22_X1 U1254 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .A2(n1421), .B1(n1422), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .ZN(n1192) );
  OAI21_X1 U1255 ( .B1(n1968), .B2(n1412), .A(n1192), .ZN(n1193) );
  AOI21_X1 U1256 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .B2(n1424), .A(n1193), .ZN(n1459) );
  INV_X1 U1257 ( .A(n1430), .ZN(n1428) );
  NAND2_X1 U1258 ( .A1(n1427), .A2(n1428), .ZN(n1440) );
  INV_X1 U1259 ( .A(n1440), .ZN(n1456) );
  AOI22_X1 U1260 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .A2(n1422), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .B2(n1421), .ZN(n1194) );
  OAI21_X1 U1261 ( .B1(n1959), .B2(n1412), .A(n1194), .ZN(n1195) );
  AOI21_X1 U1262 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .B2(n1424), .A(n1195), .ZN(n1457) );
  AOI222_X1 U1263 ( .A1(n1460), .A2(n1462), .B1(n1458), .B2(n1459), .C1(n1456), 
        .C2(n1457), .ZN(n1218) );
  INV_X1 U1264 ( .A(n1197), .ZN(n1198) );
  AOI221_X1 U1265 ( .B1(n1198), .B2(n1971), .C1(n1197), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__4_), .A(n1196), .ZN(n1205) );
  AND2_X1 U1266 ( .A1(n1199), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_add_shamt_q_1__4_), .ZN(n1204) );
  OR2_X1 U1267 ( .A1(n1201), .A2(n1200), .ZN(n1202) );
  AND2_X1 U1268 ( .A1(n1253), .A2(n1202), .ZN(n1203) );
  OR3_X1 U1269 ( .A1(n1205), .A2(n1204), .A3(n1203), .ZN(n1477) );
  AOI22_X1 U1270 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .A2(n1421), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .B2(n1422), .ZN(n1206) );
  OAI21_X1 U1271 ( .B1(n2008), .B2(n1412), .A(n1206), .ZN(n1207) );
  AOI21_X1 U1272 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_), .B2(n1424), .A(n1207), .ZN(n1300) );
  NOR2_X1 U1273 ( .A1(n1427), .A2(n1428), .ZN(n1307) );
  AOI22_X1 U1274 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .A2(n1422), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .B2(n1421), .ZN(n1209) );
  INV_X1 U1275 ( .A(n1412), .ZN(n1423) );
  AOI22_X1 U1276 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .A2(n1424), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .B2(n1423), .ZN(n1208) );
  NAND2_X1 U1277 ( .A1(n1209), .A2(n1208), .ZN(n1454) );
  AOI22_X1 U1278 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .A2(n1421), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .B2(n1422), .ZN(n1211) );
  AOI22_X1 U1279 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .A2(n1424), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .B2(n1423), .ZN(n1210) );
  NAND2_X1 U1280 ( .A1(n1211), .A2(n1210), .ZN(n1289) );
  AOI22_X1 U1281 ( .A1(n1307), .A2(n1454), .B1(n1460), .B2(n1289), .ZN(n1279)
         );
  OAI21_X1 U1282 ( .B1(n1300), .B2(n1437), .A(n1279), .ZN(n1212) );
  INV_X1 U1283 ( .A(n1212), .ZN(n1213) );
  NAND2_X1 U1284 ( .A1(n1477), .A2(n1213), .ZN(n1217) );
  INV_X1 U1285 ( .A(n1422), .ZN(n1410) );
  OAI22_X1 U1286 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .A2(n1409), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_), .B2(n1410), .ZN(n1215) );
  OAI22_X1 U1287 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_), .A2(n1411), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_), .B2(n1412), .ZN(n1214) );
  INV_X1 U1288 ( .A(n1477), .ZN(n1470) );
  NAND2_X1 U1289 ( .A1(n1307), .A2(n1470), .ZN(n1445) );
  INV_X1 U1290 ( .A(n1445), .ZN(n1463) );
  OAI21_X1 U1291 ( .B1(n1215), .B2(n1214), .A(n1463), .ZN(n1216) );
  OAI211_X1 U1292 ( .C1(n1218), .C2(n1477), .A(n1217), .B(n1216), .ZN(n1318)
         );
  INV_X1 U1293 ( .A(n1318), .ZN(n1503) );
  NOR4_X1 U1294 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[4]), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[2]), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[5]), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[8]), .ZN(n1220) );
  NOR4_X1 U1295 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[6]), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[1]), .A3(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[3]), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[7]), .ZN(n1219) );
  AND2_X1 U1296 ( .A1(n1220), .A2(n1219), .ZN(n1223) );
  NOR2_X1 U1297 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_exp_prod_q_1__9_), .A2(n1221), .ZN(n1222) );
  NAND2_X1 U1298 ( .A1(n1253), .A2(n1222), .ZN(n1322) );
  INV_X1 U1299 ( .A(n1322), .ZN(n1316) );
  OR2_X1 U1300 ( .A1(n1223), .A2(n1316), .ZN(n1319) );
  AOI22_X1 U1301 ( .A1(n1423), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .B1(n1421), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .ZN(n1224) );
  OAI21_X1 U1302 ( .B1(n1410), .B2(n2012), .A(n1224), .ZN(n1225) );
  AOI21_X1 U1303 ( .B1(n1424), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .A(n1225), .ZN(n1446) );
  AOI222_X1 U1304 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_), .A2(n1424), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .B2(n1423), .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_), .C2(n1421), .ZN(n1226) );
  INV_X1 U1305 ( .A(n1427), .ZN(n1472) );
  OAI221_X1 U1306 ( .B1(n1430), .B2(n1446), .C1(n1428), .C2(n1226), .A(n1472), 
        .ZN(n1227) );
  INV_X1 U1307 ( .A(n1227), .ZN(n1234) );
  OAI22_X1 U1308 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .A2(n1409), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .B2(n1410), .ZN(n1228) );
  AOI21_X1 U1309 ( .B1(n1423), .B2(n1958), .A(n1228), .ZN(n1229) );
  OAI21_X1 U1310 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .B2(n1411), .A(n1229), .ZN(n1438) );
  OAI22_X1 U1311 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .A2(n1409), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_), .B2(n1410), .ZN(n1230) );
  AOI21_X1 U1312 ( .B1(n1423), .B2(n1967), .A(n1230), .ZN(n1231) );
  OAI21_X1 U1313 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .B2(n1411), .A(n1231), .ZN(n1441) );
  AOI22_X1 U1314 ( .A1(n1456), .A2(n1438), .B1(n1458), .B2(n1441), .ZN(n1232)
         );
  INV_X1 U1315 ( .A(n1232), .ZN(n1233) );
  NOR3_X1 U1316 ( .A1(n1234), .A2(n1233), .A3(n1477), .ZN(n1247) );
  OAI22_X1 U1317 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .A2(n1410), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .B2(n1412), .ZN(n1235) );
  AOI21_X1 U1318 ( .B1(n1421), .B2(n1997), .A(n1235), .ZN(n1236) );
  OAI21_X1 U1319 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .B2(n1411), .A(n1236), .ZN(n1281) );
  NAND2_X1 U1320 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__0_), .A2(n1422), .ZN(n1297) );
  AOI22_X1 U1321 ( .A1(n1430), .A2(n1281), .B1(n1297), .B2(n1428), .ZN(n1354)
         );
  INV_X1 U1322 ( .A(n1354), .ZN(n1237) );
  NAND2_X1 U1323 ( .A1(n1427), .A2(n1237), .ZN(n1245) );
  INV_X1 U1324 ( .A(n1307), .ZN(n1467) );
  OAI22_X1 U1325 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .A2(n1409), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_), .B2(n1410), .ZN(n1239) );
  OAI22_X1 U1326 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .A2(n1412), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .B2(n1411), .ZN(n1238) );
  NOR2_X1 U1327 ( .A1(n1239), .A2(n1238), .ZN(n1355) );
  OR2_X1 U1328 ( .A1(n1467), .A2(n1355), .ZN(n1243) );
  INV_X1 U1329 ( .A(n1460), .ZN(n1468) );
  OAI22_X1 U1330 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .A2(n1410), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .B2(n1409), .ZN(n1241) );
  OAI22_X1 U1331 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .A2(n1411), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .B2(n1412), .ZN(n1240) );
  NOR2_X1 U1332 ( .A1(n1241), .A2(n1240), .ZN(n1356) );
  OR2_X1 U1333 ( .A1(n1468), .A2(n1356), .ZN(n1242) );
  AND2_X1 U1334 ( .A1(n1243), .A2(n1242), .ZN(n1244) );
  NAND2_X1 U1335 ( .A1(n1245), .A2(n1244), .ZN(n1265) );
  NOR2_X1 U1336 ( .A1(n1265), .A2(n1470), .ZN(n1246) );
  OR2_X1 U1337 ( .A1(n1247), .A2(n1246), .ZN(n1504) );
  OR3_X1 U1338 ( .A1(n1503), .A2(n1319), .A3(n1504), .ZN(n1507) );
  INV_X1 U1339 ( .A(n1507), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358) );
  NOR2_X1 U1340 ( .A1(n1248), .A2(n2019), .ZN(n1255) );
  AND2_X1 U1341 ( .A1(n1249), .A2(n2018), .ZN(n1250) );
  NOR2_X1 U1342 ( .A1(n1251), .A2(n1250), .ZN(n1252) );
  AND2_X1 U1343 ( .A1(n1253), .A2(n1252), .ZN(n1254) );
  OR2_X1 U1344 ( .A1(n1255), .A2(n1254), .ZN(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[0]) );
  AOI221_X1 U1345 ( .B1(n1259), .B2(n1969), .C1(n1258), .C2(n2008), .A(n1256), 
        .ZN(n1277) );
  NAND2_X1 U1346 ( .A1(n1430), .A2(n1277), .ZN(n1408) );
  INV_X1 U1347 ( .A(n1408), .ZN(n1295) );
  OAI221_X1 U1348 ( .B1(n1259), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__1_), .C1(n1258), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_), .A(n1257), .ZN(n1260) );
  OAI21_X1 U1349 ( .B1(n1409), .B2(n2008), .A(n1260), .ZN(n1308) );
  AOI22_X1 U1350 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .A2(n1422), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .B2(n1421), .ZN(n1262) );
  AOI22_X1 U1351 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .A2(n1423), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__8_), .B2(n1424), .ZN(n1261) );
  NAND2_X1 U1352 ( .A1(n1262), .A2(n1261), .ZN(n1368) );
  AOI22_X1 U1353 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__5_), .A2(n1422), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .B2(n1421), .ZN(n1264) );
  AOI22_X1 U1354 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__2_), .A2(n1423), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .B2(n1424), .ZN(n1263) );
  NAND2_X1 U1355 ( .A1(n1264), .A2(n1263), .ZN(n1278) );
  AOI22_X1 U1356 ( .A1(n1430), .A2(n1368), .B1(n1278), .B2(n1428), .ZN(n1407)
         );
  NAND4_X1 U1357 ( .A1(n1300), .A2(n1281), .A3(n1265), .A4(n1407), .ZN(n1294)
         );
  OAI22_X1 U1358 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .A2(n1410), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_), .B2(n1409), .ZN(n1267) );
  OAI22_X1 U1359 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .A2(n1411), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .B2(n1412), .ZN(n1266) );
  NOR2_X1 U1360 ( .A1(n1267), .A2(n1266), .ZN(n1431) );
  INV_X1 U1361 ( .A(n1431), .ZN(n1312) );
  OAI22_X1 U1362 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__7_), .A2(n1412), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .B2(n1410), .ZN(n1268) );
  AOI21_X1 U1363 ( .B1(n1421), .B2(n1996), .A(n1268), .ZN(n1269) );
  OAI21_X1 U1364 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__9_), .B2(n1411), .A(n1269), .ZN(n1288) );
  AOI22_X1 U1365 ( .A1(n1430), .A2(n1312), .B1(n1288), .B2(n1428), .ZN(n1471)
         );
  AOI22_X1 U1366 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .A2(n1421), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .B2(n1422), .ZN(n1271) );
  AOI22_X1 U1367 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .A2(n1424), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__14_), .B2(n1423), .ZN(n1270) );
  NAND2_X1 U1368 ( .A1(n1271), .A2(n1270), .ZN(n1371) );
  AOI22_X1 U1369 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__11_), .A2(n1421), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__13_), .B2(n1422), .ZN(n1273) );
  AOI22_X1 U1370 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__12_), .A2(n1424), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__10_), .B2(n1423), .ZN(n1272) );
  NAND2_X1 U1371 ( .A1(n1273), .A2(n1272), .ZN(n1296) );
  AOI22_X1 U1372 ( .A1(n1430), .A2(n1371), .B1(n1296), .B2(n1428), .ZN(n1403)
         );
  INV_X1 U1373 ( .A(n1403), .ZN(n1274) );
  OR3_X1 U1374 ( .A1(n1354), .A2(n1471), .A3(n1274), .ZN(n1286) );
  OAI22_X1 U1375 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__4_), .A2(n1409), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__6_), .B2(n1410), .ZN(n1275) );
  AOI21_X1 U1376 ( .B1(n1424), .B2(n1995), .A(n1275), .ZN(n1276) );
  OAI21_X1 U1377 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__3_), .B2(n1412), .A(n1276), .ZN(n1287) );
  INV_X1 U1378 ( .A(n1287), .ZN(n1291) );
  NOR3_X1 U1379 ( .A1(n1356), .A2(n1291), .A3(n1289), .ZN(n1280) );
  OAI22_X1 U1380 ( .A1(n1428), .A2(n1278), .B1(n1277), .B2(n1430), .ZN(n1369)
         );
  OAI211_X1 U1381 ( .C1(n1280), .C2(n1437), .A(n1279), .B(n1369), .ZN(n1285)
         );
  NOR3_X1 U1382 ( .A1(n1355), .A2(n1454), .A3(n1368), .ZN(n1283) );
  AOI22_X1 U1383 ( .A1(n1427), .A2(n1297), .B1(n1428), .B2(n1281), .ZN(n1282)
         );
  OAI211_X1 U1384 ( .C1(n1356), .C2(n1467), .A(n1282), .B(n1440), .ZN(n1444)
         );
  OAI21_X1 U1385 ( .B1(n1283), .B2(n1468), .A(n1444), .ZN(n1284) );
  AOI211_X1 U1386 ( .C1(n1472), .C2(n1286), .A(n1285), .B(n1284), .ZN(n1292)
         );
  AOI22_X1 U1387 ( .A1(n1430), .A2(n1288), .B1(n1287), .B2(n1428), .ZN(n1309)
         );
  OAI221_X1 U1388 ( .B1(n1472), .B2(n1308), .C1(n1427), .C2(n1309), .A(n1440), 
        .ZN(n1418) );
  INV_X1 U1389 ( .A(n1289), .ZN(n1304) );
  AOI221_X1 U1390 ( .B1(n1428), .B2(n1300), .C1(n1430), .C2(n1304), .A(n1427), 
        .ZN(n1290) );
  INV_X1 U1391 ( .A(n1290), .ZN(n1461) );
  OAI221_X1 U1392 ( .B1(n1430), .B2(n1308), .C1(n1428), .C2(n1291), .A(n1472), 
        .ZN(n1475) );
  NAND4_X1 U1393 ( .A1(n1292), .A2(n1418), .A3(n1461), .A4(n1475), .ZN(n1293)
         );
  NOR4_X1 U1394 ( .A1(n1295), .A2(n1308), .A3(n1294), .A4(n1293), .ZN(n1315)
         );
  INV_X1 U1395 ( .A(n1296), .ZN(n1374) );
  NAND3_X1 U1396 ( .A1(n1457), .A2(n1374), .A3(n1438), .ZN(n1299) );
  OAI22_X1 U1397 ( .A1(n1427), .A2(n1408), .B1(n1297), .B2(n1467), .ZN(n1298)
         );
  AOI211_X1 U1398 ( .C1(n1463), .C2(n1299), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sticky_q_1_), .B(n1298), .ZN(n1314) );
  AOI22_X1 U1399 ( .A1(n1460), .A2(n1457), .B1(n1459), .B2(n1463), .ZN(n1302)
         );
  OAI21_X1 U1400 ( .B1(n1300), .B2(n1467), .A(n1477), .ZN(n1301) );
  OAI211_X1 U1401 ( .C1(n1454), .C2(n1437), .A(n1302), .B(n1301), .ZN(n1303)
         );
  AOI21_X1 U1402 ( .B1(n1456), .B2(n1304), .A(n1303), .ZN(n1363) );
  NAND2_X1 U1403 ( .A1(n1460), .A2(n1470), .ZN(n1402) );
  OAI22_X1 U1404 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__18_), .A2(n1410), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__16_), .B2(n1409), .ZN(n1306) );
  OAI22_X1 U1405 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__17_), .A2(n1411), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__15_), .B2(n1412), .ZN(n1305) );
  NOR2_X1 U1406 ( .A1(n1306), .A2(n1305), .ZN(n1469) );
  OAI221_X1 U1407 ( .B1(n1470), .B2(n1308), .C1(n1477), .C2(n1469), .A(n1307), 
        .ZN(n1311) );
  NAND3_X1 U1408 ( .A1(n1470), .A2(n1427), .A3(n1309), .ZN(n1310) );
  OAI211_X1 U1409 ( .C1(n1402), .C2(n1312), .A(n1311), .B(n1310), .ZN(n1352)
         );
  AOI22_X1 U1410 ( .A1(n1363), .A2(n1504), .B1(n1507), .B2(n1352), .ZN(n1313)
         );
  OAI211_X1 U1411 ( .C1(n1315), .C2(n1477), .A(n1314), .B(n1313), .ZN(n1378)
         );
  XOR2_X1 U1412 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_N358), .B(n1316), .Z(n1317) );
  XNOR2_X1 U1413 ( .A(DP_OP_218J3_126_2335_n2), .B(n1317), .ZN(n1323) );
  OR2_X1 U1414 ( .A1(n1318), .A2(n1504), .ZN(n1344) );
  INV_X1 U1415 ( .A(n1319), .ZN(n1320) );
  OR2_X1 U1416 ( .A1(n1320), .A2(n1504), .ZN(n1321) );
  NAND2_X1 U1417 ( .A1(n1344), .A2(n1321), .ZN(n1502) );
  OAI22_X1 U1418 ( .A1(n1323), .A2(n1502), .B1(n1322), .B2(n1344), .ZN(n1324)
         );
  INV_X1 U1419 ( .A(n1324), .ZN(n1351) );
  INV_X1 U1420 ( .A(C178_DATA3_6), .ZN(n1326) );
  INV_X1 U1421 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[6]), .ZN(n1325) );
  OAI22_X1 U1422 ( .A1(n1326), .A2(n1502), .B1(n1325), .B2(n1344), .ZN(n1524)
         );
  INV_X1 U1423 ( .A(C178_DATA3_2), .ZN(n1328) );
  INV_X1 U1424 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[2]), .ZN(n1327) );
  OAI22_X1 U1425 ( .A1(n1328), .A2(n1502), .B1(n1327), .B2(n1344), .ZN(n1600)
         );
  AND2_X1 U1426 ( .A1(n1524), .A2(n1600), .ZN(n1343) );
  INV_X1 U1427 ( .A(C178_DATA3_7), .ZN(n1330) );
  INV_X1 U1428 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[7]), .ZN(n1329) );
  OAI22_X1 U1429 ( .A1(n1330), .A2(n1502), .B1(n1329), .B2(n1344), .ZN(n1400)
         );
  INV_X1 U1430 ( .A(C178_DATA3_4), .ZN(n1332) );
  INV_X1 U1431 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[4]), .ZN(n1331) );
  OAI22_X1 U1432 ( .A1(n1332), .A2(n1502), .B1(n1331), .B2(n1344), .ZN(n1598)
         );
  AND2_X1 U1433 ( .A1(n1400), .A2(n1598), .ZN(n1342) );
  INV_X1 U1434 ( .A(C178_DATA3_3), .ZN(n1334) );
  INV_X1 U1435 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[3]), .ZN(n1333) );
  OAI22_X1 U1436 ( .A1(n1334), .A2(n1502), .B1(n1333), .B2(n1344), .ZN(n1599)
         );
  INV_X1 U1437 ( .A(C178_DATA3_5), .ZN(n1336) );
  INV_X1 U1438 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[5]), .ZN(n1335) );
  OAI22_X1 U1439 ( .A1(n1336), .A2(n1502), .B1(n1335), .B2(n1344), .ZN(n1593)
         );
  AND2_X1 U1440 ( .A1(n1599), .A2(n1593), .ZN(n1341) );
  INV_X1 U1441 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[0]), .ZN(n1337) );
  OAI22_X1 U1442 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[0]), .A2(n1502), .B1(n1337), .B2(n1344), .ZN(n1401) );
  INV_X1 U1443 ( .A(C178_DATA3_1), .ZN(n1339) );
  INV_X1 U1444 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[1]), .ZN(n1338) );
  OAI22_X1 U1445 ( .A1(n1339), .A2(n1502), .B1(n1338), .B2(n1344), .ZN(n1511)
         );
  AND2_X1 U1446 ( .A1(n1401), .A2(n1511), .ZN(n1340) );
  NAND4_X1 U1447 ( .A1(n1343), .A2(n1342), .A3(n1341), .A4(n1340), .ZN(n1349)
         );
  INV_X1 U1448 ( .A(C178_DATA3_8), .ZN(n1346) );
  INV_X1 U1449 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_normalized_exponent[8]), .ZN(n1345) );
  OAI22_X1 U1450 ( .A1(n1346), .A2(n1502), .B1(n1345), .B2(n1344), .ZN(n1347)
         );
  INV_X1 U1451 ( .A(n1347), .ZN(n1348) );
  NAND2_X1 U1452 ( .A1(n1349), .A2(n1348), .ZN(n1350) );
  AND2_X1 U1453 ( .A1(n1351), .A2(n1350), .ZN(n1522) );
  INV_X1 U1454 ( .A(n1522), .ZN(n1564) );
  NAND2_X1 U1455 ( .A1(n1502), .A2(n1363), .ZN(n1362) );
  INV_X1 U1456 ( .A(n1352), .ZN(n1353) );
  OR2_X1 U1457 ( .A1(n1507), .A2(n1353), .ZN(n1361) );
  NAND3_X1 U1458 ( .A1(n1472), .A2(n1354), .A3(n1477), .ZN(n1359) );
  INV_X1 U1459 ( .A(n1355), .ZN(n1439) );
  OAI22_X1 U1460 ( .A1(n1439), .A2(n1437), .B1(n1468), .B2(n1438), .ZN(n1357)
         );
  OAI221_X1 U1461 ( .B1(n1357), .B2(n1356), .C1(n1357), .C2(n1456), .A(n1470), 
        .ZN(n1358) );
  OAI211_X1 U1462 ( .C1(n1445), .C2(n1441), .A(n1359), .B(n1358), .ZN(n1483)
         );
  NAND2_X1 U1463 ( .A1(n1504), .A2(n1483), .ZN(n1360) );
  NAND4_X1 U1464 ( .A1(n1564), .A2(n1362), .A3(n1361), .A4(n1360), .ZN(n1380)
         );
  NOR2_X1 U1465 ( .A1(n1378), .A2(n1380), .ZN(n1609) );
  OAI221_X1 U1466 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_1_), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_), .C1(n2025), .C2(n1983), .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__1_), .ZN(n1384) );
  NAND2_X1 U1467 ( .A1(n2024), .A2(n1983), .ZN(n1381) );
  AND2_X1 U1468 ( .A1(n1502), .A2(n1483), .ZN(n1377) );
  INV_X1 U1469 ( .A(n1363), .ZN(n1364) );
  NOR2_X1 U1470 ( .A1(n1364), .A2(n1507), .ZN(n1376) );
  AOI22_X1 U1471 ( .A1(n1422), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .B1(n1421), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .ZN(n1365) );
  OAI21_X1 U1472 ( .B1(n1962), .B2(n1412), .A(n1365), .ZN(n1366) );
  AOI21_X1 U1473 ( .B1(n1424), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_), .A(n1366), .ZN(n1405) );
  INV_X1 U1474 ( .A(n1405), .ZN(n1367) );
  OAI22_X1 U1475 ( .A1(n1440), .A2(n1368), .B1(n1445), .B2(n1367), .ZN(n1373)
         );
  OAI21_X1 U1476 ( .B1(n1427), .B2(n1369), .A(n1477), .ZN(n1370) );
  OAI21_X1 U1477 ( .B1(n1402), .B2(n1371), .A(n1370), .ZN(n1372) );
  AOI211_X1 U1478 ( .C1(n1458), .C2(n1374), .A(n1373), .B(n1372), .ZN(n1490)
         );
  AND2_X1 U1479 ( .A1(n1504), .A2(n1490), .ZN(n1375) );
  NOR4_X1 U1480 ( .A1(n1377), .A2(n1376), .A3(n1375), .A4(n1522), .ZN(n1616)
         );
  INV_X1 U1481 ( .A(n1616), .ZN(n1385) );
  NOR2_X1 U1482 ( .A1(n1385), .A2(n1378), .ZN(n1379) );
  NOR2_X1 U1483 ( .A1(n1381), .A2(n1379), .ZN(n1382) );
  OAI22_X1 U1484 ( .A1(n1382), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__2_), .B1(n1381), .B2(n1380), .ZN(n1383) );
  OAI21_X1 U1485 ( .B1(n1609), .B2(n1384), .A(n1383), .ZN(n1386) );
  NAND2_X1 U1486 ( .A1(n1385), .A2(n1386), .ZN(n1570) );
  NOR2_X1 U1487 ( .A1(n2026), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_1_), .ZN(n1527) );
  OAI211_X1 U1488 ( .C1(n1386), .C2(n1385), .A(n1570), .B(n1527), .ZN(n1387)
         );
  INV_X1 U1489 ( .A(n1387), .ZN(result_o[0]) );
  INV_X1 U1490 ( .A(n1749), .ZN(n1741) );
  NAND2_X1 U1491 ( .A1(n1731), .A2(n1388), .ZN(n1742) );
  INV_X1 U1492 ( .A(n1742), .ZN(n1391) );
  AOI221_X1 U1493 ( .B1(n1728), .B2(n1730), .C1(n1390), .C2(n1389), .A(n1731), 
        .ZN(n1740) );
  AOI22_X1 U1494 ( .A1(n1741), .A2(n1391), .B1(n1740), .B2(n1749), .ZN(n1760)
         );
  NOR2_X1 U1495 ( .A1(n1743), .A2(n1760), .ZN(n1800) );
  INV_X1 U1496 ( .A(n1797), .ZN(n1804) );
  NOR3_X1 U1497 ( .A1(n1798), .A2(n1800), .A3(n1804), .ZN(n1801) );
  NOR2_X1 U1498 ( .A1(n1749), .A2(n1743), .ZN(n1738) );
  INV_X1 U1499 ( .A(n1738), .ZN(n1747) );
  NAND2_X1 U1500 ( .A1(n1393), .A2(n1392), .ZN(n1788) );
  NAND2_X1 U1501 ( .A1(n1749), .A2(n1768), .ZN(n1733) );
  OAI22_X1 U1502 ( .A1(n1765), .A2(n1747), .B1(n1788), .B2(n1733), .ZN(n1803)
         );
  NOR2_X1 U1503 ( .A1(n1804), .A2(n1803), .ZN(n1802) );
  NAND2_X1 U1504 ( .A1(n1801), .A2(n1802), .ZN(intadd_20_CI) );
  INV_X1 U1505 ( .A(intadd_21_SUM_0_), .ZN(intadd_20_A_2_) );
  INV_X1 U1506 ( .A(intadd_21_SUM_1_), .ZN(intadd_20_A_3_) );
  INV_X1 U1507 ( .A(intadd_21_SUM_2_), .ZN(intadd_20_A_4_) );
  INV_X1 U1508 ( .A(intadd_21_SUM_3_), .ZN(intadd_20_A_5_) );
  INV_X1 U1509 ( .A(intadd_21_SUM_4_), .ZN(intadd_20_A_6_) );
  INV_X1 U1510 ( .A(intadd_21_SUM_5_), .ZN(intadd_20_A_7_) );
  INV_X1 U1511 ( .A(intadd_21_SUM_6_), .ZN(intadd_20_A_8_) );
  INV_X1 U1512 ( .A(intadd_21_SUM_7_), .ZN(intadd_20_A_9_) );
  INV_X1 U1513 ( .A(intadd_21_SUM_8_), .ZN(intadd_20_A_10_) );
  INV_X1 U1514 ( .A(intadd_21_SUM_9_), .ZN(intadd_20_A_11_) );
  INV_X1 U1515 ( .A(intadd_21_SUM_10_), .ZN(intadd_20_A_12_) );
  INV_X1 U1516 ( .A(intadd_21_SUM_11_), .ZN(intadd_20_A_13_) );
  NAND2_X1 U1517 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__1_), .A2(n1654), .ZN(n1723) );
  INV_X1 U1518 ( .A(n1723), .ZN(n1694) );
  NAND2_X1 U1519 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__0_), .A2(n1654), .ZN(n1722) );
  INV_X1 U1520 ( .A(n1722), .ZN(n1727) );
  NAND4_X1 U1521 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A3(n1694), .A4(n1727), .ZN(n1724) );
  INV_X1 U1522 ( .A(n1724), .ZN(intadd_21_CI) );
  NOR2_X1 U1523 ( .A1(intadd_23_n1), .A2(n2011), .ZN(n1397) );
  INV_X1 U1524 ( .A(n1394), .ZN(n1396) );
  INV_X1 U1525 ( .A(n1635), .ZN(n1395) );
  AOI21_X1 U1526 ( .B1(n1397), .B2(n1396), .A(n1395), .ZN(n1634) );
  INV_X1 U1527 ( .A(n1634), .ZN(intadd_22_A_7_) );
  INV_X1 U1528 ( .A(intadd_23_SUM_0_), .ZN(n1398) );
  NOR2_X1 U1529 ( .A1(n1399), .A2(n1398), .ZN(n1627) );
  INV_X1 U1530 ( .A(n1627), .ZN(intadd_22_B_0_) );
  INV_X1 U1531 ( .A(n1400), .ZN(n1596) );
  OR2_X1 U1532 ( .A1(n1600), .A2(n1522), .ZN(n1560) );
  INV_X1 U1533 ( .A(n1401), .ZN(n1594) );
  OR2_X1 U1534 ( .A1(n1594), .A2(n1522), .ZN(n1512) );
  INV_X1 U1535 ( .A(n1402), .ZN(n1406) );
  NOR2_X1 U1536 ( .A1(n1472), .A2(n1477), .ZN(n1404) );
  AOI22_X1 U1537 ( .A1(n1406), .A2(n1405), .B1(n1404), .B2(n1403), .ZN(n1417)
         );
  OAI221_X1 U1538 ( .B1(n1472), .B2(n1408), .C1(n1427), .C2(n1407), .A(n1477), 
        .ZN(n1416) );
  OAI22_X1 U1539 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .A2(n1410), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .B2(n1409), .ZN(n1414) );
  OAI22_X1 U1540 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .A2(n1412), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_), .B2(n1411), .ZN(n1413) );
  OAI21_X1 U1541 ( .B1(n1414), .B2(n1413), .A(n1463), .ZN(n1415) );
  AND3_X1 U1542 ( .A1(n1417), .A2(n1416), .A3(n1415), .ZN(n1505) );
  AND2_X1 U1543 ( .A1(n1505), .A2(n1502), .ZN(n1453) );
  NAND2_X1 U1544 ( .A1(n1477), .A2(n1418), .ZN(n1436) );
  AOI22_X1 U1545 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_), .A2(n1422), .B1(n1421), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__24_), .ZN(n1420) );
  AOI22_X1 U1546 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__25_), .A2(n1424), .B1(n1423), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__23_), .ZN(n1419) );
  NAND2_X1 U1547 ( .A1(n1420), .A2(n1419), .ZN(n1429) );
  AOI22_X1 U1548 ( .A1(n1422), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__22_), .B1(n1421), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__20_), .ZN(n1426) );
  AOI22_X1 U1549 ( .A1(n1424), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__21_), .B1(n1423), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__19_), .ZN(n1425) );
  NAND2_X1 U1550 ( .A1(n1426), .A2(n1425), .ZN(n1466) );
  AOI221_X1 U1551 ( .B1(n1430), .B2(n1429), .C1(n1428), .C2(n1466), .A(n1427), 
        .ZN(n1433) );
  OAI22_X1 U1552 ( .A1(n1469), .A2(n1437), .B1(n1431), .B2(n1440), .ZN(n1432)
         );
  OR2_X1 U1553 ( .A1(n1433), .A2(n1432), .ZN(n1434) );
  NAND2_X1 U1554 ( .A1(n1470), .A2(n1434), .ZN(n1435) );
  AND2_X1 U1555 ( .A1(n1436), .A2(n1435), .ZN(n1501) );
  AND2_X1 U1556 ( .A1(n1501), .A2(n1504), .ZN(n1452) );
  OAI222_X1 U1557 ( .A1(n1468), .A2(n1441), .B1(n1440), .B2(n1439), .C1(n1438), 
        .C2(n1437), .ZN(n1442) );
  INV_X1 U1558 ( .A(n1442), .ZN(n1443) );
  OR2_X1 U1559 ( .A1(n1443), .A2(n1477), .ZN(n1449) );
  OAI22_X1 U1560 ( .A1(n1446), .A2(n1445), .B1(n1470), .B2(n1444), .ZN(n1447)
         );
  INV_X1 U1561 ( .A(n1447), .ZN(n1448) );
  NAND2_X1 U1562 ( .A1(n1449), .A2(n1448), .ZN(n1496) );
  INV_X1 U1563 ( .A(n1496), .ZN(n1450) );
  NOR2_X1 U1564 ( .A1(n1450), .A2(n1507), .ZN(n1451) );
  NOR4_X1 U1565 ( .A1(n1453), .A2(n1452), .A3(n1451), .A4(n1522), .ZN(n1610)
         );
  INV_X1 U1566 ( .A(n1454), .ZN(n1455) );
  AOI222_X1 U1567 ( .A1(n1460), .A2(n1459), .B1(n1458), .B2(n1457), .C1(n1456), 
        .C2(n1455), .ZN(n1465) );
  AOI22_X1 U1568 ( .A1(n1463), .A2(n1462), .B1(n1477), .B2(n1461), .ZN(n1464)
         );
  OAI21_X1 U1569 ( .B1(n1465), .B2(n1477), .A(n1464), .ZN(n1497) );
  INV_X1 U1570 ( .A(n1497), .ZN(n1492) );
  AND2_X1 U1571 ( .A1(n1502), .A2(n1492), .ZN(n1482) );
  OAI22_X1 U1572 ( .A1(n1469), .A2(n1468), .B1(n1467), .B2(n1466), .ZN(n1474)
         );
  OAI21_X1 U1573 ( .B1(n1472), .B2(n1471), .A(n1470), .ZN(n1473) );
  OR2_X1 U1574 ( .A1(n1474), .A2(n1473), .ZN(n1479) );
  INV_X1 U1575 ( .A(n1475), .ZN(n1476) );
  NAND2_X1 U1576 ( .A1(n1477), .A2(n1476), .ZN(n1478) );
  AND2_X1 U1577 ( .A1(n1479), .A2(n1478), .ZN(n1485) );
  NOR2_X1 U1578 ( .A1(n1485), .A2(n1507), .ZN(n1481) );
  AND2_X1 U1579 ( .A1(n1504), .A2(n1496), .ZN(n1480) );
  NOR4_X1 U1580 ( .A1(n1482), .A2(n1481), .A3(n1480), .A4(n1522), .ZN(n1591)
         );
  AND2_X1 U1581 ( .A1(n1490), .A2(n1502), .ZN(n1488) );
  INV_X1 U1582 ( .A(n1483), .ZN(n1484) );
  NOR2_X1 U1583 ( .A1(n1484), .A2(n1507), .ZN(n1487) );
  INV_X1 U1584 ( .A(n1485), .ZN(n1489) );
  AND2_X1 U1585 ( .A1(n1489), .A2(n1504), .ZN(n1486) );
  NOR4_X1 U1586 ( .A1(n1488), .A2(n1487), .A3(n1486), .A4(n1522), .ZN(n1617)
         );
  NOR2_X1 U1587 ( .A1(n1617), .A2(n1570), .ZN(n1571) );
  NAND2_X1 U1588 ( .A1(n1502), .A2(n1489), .ZN(n1495) );
  INV_X1 U1589 ( .A(n1490), .ZN(n1491) );
  OR2_X1 U1590 ( .A1(n1507), .A2(n1491), .ZN(n1494) );
  NAND2_X1 U1591 ( .A1(n1504), .A2(n1492), .ZN(n1493) );
  NAND4_X1 U1592 ( .A1(n1564), .A2(n1495), .A3(n1494), .A4(n1493), .ZN(n1606)
         );
  NAND2_X1 U1593 ( .A1(n1571), .A2(n1606), .ZN(n1573) );
  NOR2_X1 U1594 ( .A1(n1591), .A2(n1573), .ZN(n1574) );
  NAND2_X1 U1595 ( .A1(n1502), .A2(n1496), .ZN(n1500) );
  OR2_X1 U1596 ( .A1(n1507), .A2(n1497), .ZN(n1499) );
  NAND2_X1 U1597 ( .A1(n1504), .A2(n1505), .ZN(n1498) );
  NAND4_X1 U1598 ( .A1(n1564), .A2(n1500), .A3(n1499), .A4(n1498), .ZN(n1607)
         );
  NAND2_X1 U1599 ( .A1(n1574), .A2(n1607), .ZN(n1576) );
  NOR2_X1 U1600 ( .A1(n1610), .A2(n1576), .ZN(n1578) );
  NAND2_X1 U1601 ( .A1(n1502), .A2(n1501), .ZN(n1510) );
  NAND2_X1 U1602 ( .A1(n1504), .A2(n1503), .ZN(n1509) );
  INV_X1 U1603 ( .A(n1505), .ZN(n1506) );
  OR2_X1 U1604 ( .A1(n1507), .A2(n1506), .ZN(n1508) );
  NAND4_X1 U1605 ( .A1(n1564), .A2(n1510), .A3(n1509), .A4(n1508), .ZN(n1614)
         );
  NAND2_X1 U1606 ( .A1(n1578), .A2(n1614), .ZN(n1577) );
  NOR2_X1 U1607 ( .A1(n1512), .A2(n1577), .ZN(n1563) );
  OR2_X1 U1608 ( .A1(n1511), .A2(n1522), .ZN(n1592) );
  NAND2_X1 U1609 ( .A1(n1563), .A2(n1592), .ZN(n1562) );
  INV_X1 U1610 ( .A(n1562), .ZN(n1561) );
  NAND2_X1 U1611 ( .A1(n1560), .A2(n1561), .ZN(n1559) );
  INV_X1 U1612 ( .A(n1559), .ZN(n1514) );
  NOR3_X1 U1613 ( .A1(n1599), .A2(n1514), .A3(n1522), .ZN(n1555) );
  NAND2_X1 U1614 ( .A1(n1592), .A2(n1560), .ZN(n1513) );
  XNOR2_X1 U1615 ( .A(n1512), .B(n1577), .ZN(n1581) );
  NOR4_X1 U1616 ( .A1(n1596), .A2(n1555), .A3(n1513), .A4(n1581), .ZN(n1516)
         );
  AND2_X1 U1617 ( .A1(n1599), .A2(n1514), .ZN(n1556) );
  NAND2_X1 U1618 ( .A1(n1556), .A2(n1598), .ZN(n1520) );
  NOR2_X1 U1619 ( .A1(n1593), .A2(n1522), .ZN(n1515) );
  NAND2_X1 U1620 ( .A1(n1520), .A2(n1515), .ZN(n1557) );
  NAND2_X1 U1621 ( .A1(n1516), .A2(n1557), .ZN(n1526) );
  INV_X1 U1622 ( .A(n1556), .ZN(n1518) );
  NOR2_X1 U1623 ( .A1(n1598), .A2(n1522), .ZN(n1517) );
  NAND2_X1 U1624 ( .A1(n1518), .A2(n1517), .ZN(n1519) );
  AND2_X1 U1625 ( .A1(n1520), .A2(n1519), .ZN(n1569) );
  INV_X1 U1626 ( .A(n1569), .ZN(n1586) );
  AND2_X1 U1627 ( .A1(n1598), .A2(n1593), .ZN(n1521) );
  NAND2_X1 U1628 ( .A1(n1556), .A2(n1521), .ZN(n1558) );
  NOR2_X1 U1629 ( .A1(n1524), .A2(n1522), .ZN(n1523) );
  AND2_X1 U1630 ( .A1(n1558), .A2(n1523), .ZN(n1525) );
  INV_X1 U1631 ( .A(n1524), .ZN(n1597) );
  NOR2_X1 U1632 ( .A1(n1597), .A2(n1558), .ZN(n1566) );
  OR2_X1 U1633 ( .A1(n1525), .A2(n1566), .ZN(n1588) );
  OR3_X1 U1634 ( .A1(n1526), .A2(n1586), .A3(n1588), .ZN(n1528) );
  INV_X1 U1635 ( .A(n1527), .ZN(n1618) );
  AOI21_X1 U1636 ( .B1(n1528), .B2(n1564), .A(n1618), .ZN(status_o_OF_) );
  AND4_X1 U1637 ( .A1(n1531), .A2(n2003), .A3(n1530), .A4(n1529), .ZN(
        intadd_23_CI) );
  AND2_X1 U1638 ( .A1(out_valid_o), .A2(
        gen_operation_groups_0__i_opgroup_block_fmt_outputs_4__tag_), .ZN(
        tag_o) );
  INV_X1 U1639 ( .A(n1851), .ZN(n1532) );
  OR2_X1 U1640 ( .A1(n1532), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__exponent__7_), .ZN(n994) );
  NOR3_X1 U1641 ( .A1(n1534), .A2(n1974), .A3(n1533), .ZN(n1641) );
  NAND2_X1 U1642 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .A2(n1641), .ZN(n1537) );
  NAND2_X1 U1643 ( .A1(n1639), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .ZN(n1535) );
  XNOR2_X1 U1644 ( .A(n1537), .B(n1535), .ZN(intadd_22_B_2_) );
  INV_X1 U1645 ( .A(n1643), .ZN(n1551) );
  INV_X1 U1646 ( .A(intadd_22_A_2_), .ZN(n1628) );
  NAND2_X1 U1647 ( .A1(n1532), .A2(n1536), .ZN(n1645) );
  OAI222_X1 U1648 ( .A1(n2014), .A2(n1951), .B1(n1551), .B2(n1628), .C1(
        intadd_22_B_2_), .C2(n1645), .ZN(n904) );
  NOR2_X1 U1649 ( .A1(n1975), .A2(n1537), .ZN(n1539) );
  NAND2_X1 U1650 ( .A1(n1639), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .ZN(n1538) );
  XOR2_X1 U1651 ( .A(n1539), .B(n1538), .Z(intadd_22_B_3_) );
  INV_X1 U1652 ( .A(intadd_22_A_3_), .ZN(n1629) );
  OAI222_X1 U1653 ( .A1(n2017), .A2(n1951), .B1(n1551), .B2(n1629), .C1(
        intadd_22_B_3_), .C2(n1645), .ZN(n903) );
  NAND2_X1 U1654 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .A2(n1539), .ZN(n1541) );
  NAND2_X1 U1655 ( .A1(n1639), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .ZN(n1540) );
  XNOR2_X1 U1656 ( .A(n1541), .B(n1540), .ZN(intadd_22_B_4_) );
  INV_X1 U1657 ( .A(intadd_22_A_4_), .ZN(n1630) );
  OAI222_X1 U1658 ( .A1(n2015), .A2(n1951), .B1(n1551), .B2(n1630), .C1(
        intadd_22_B_4_), .C2(n1645), .ZN(n902) );
  NOR2_X1 U1659 ( .A1(n1977), .A2(n1541), .ZN(n1550) );
  AND2_X1 U1660 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .A2(n1550), .ZN(n1543) );
  NAND2_X1 U1661 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_), .A2(n1639), .ZN(n1542) );
  XOR2_X1 U1662 ( .A(n1543), .B(n1542), .Z(intadd_22_B_6_) );
  INV_X1 U1663 ( .A(intadd_22_A_6_), .ZN(n1633) );
  OAI222_X1 U1664 ( .A1(n2013), .A2(n1951), .B1(n1551), .B2(n1633), .C1(
        intadd_22_B_6_), .C2(n1645), .ZN(n900) );
  OAI222_X1 U1665 ( .A1(n1980), .A2(n1951), .B1(n1551), .B2(n1634), .C1(n2041), 
        .C2(n1645), .ZN(n899) );
  INV_X1 U1666 ( .A(n1636), .ZN(n1544) );
  OAI222_X1 U1667 ( .A1(n2019), .A2(n1951), .B1(n1551), .B2(n1637), .C1(n1544), 
        .C2(n1645), .ZN(n907) );
  NAND2_X1 U1668 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .A2(n1545), .ZN(n1548) );
  AOI21_X1 U1669 ( .B1(n1974), .B2(n1548), .A(n1546), .ZN(n1547) );
  OAI21_X1 U1670 ( .B1(n1974), .B2(n1548), .A(n1547), .ZN(intadd_22_CI) );
  OAI222_X1 U1671 ( .A1(n2034), .A2(n1951), .B1(n1551), .B2(n1627), .C1(
        intadd_22_CI), .C2(n1645), .ZN(n906) );
  NAND2_X1 U1672 ( .A1(n1639), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .ZN(n1549) );
  XOR2_X1 U1673 ( .A(n1550), .B(n1549), .Z(intadd_22_B_5_) );
  INV_X1 U1674 ( .A(intadd_22_A_5_), .ZN(n1632) );
  OAI222_X1 U1675 ( .A1(n2016), .A2(n1951), .B1(n1551), .B2(n1632), .C1(n1645), 
        .C2(intadd_22_B_5_), .ZN(n901) );
  NOR2_X1 U1676 ( .A1(out_ready_i), .A2(n2026), .ZN(n1957) );
  NAND2_X1 U1677 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_), .A2(n1957), .ZN(n1624) );
  INV_X1 U1678 ( .A(n1624), .ZN(n1955) );
  NOR2_X1 U1679 ( .A1(op_i[2]), .A2(op_i[3]), .ZN(n1552) );
  NAND3_X1 U1680 ( .A1(dst_fmt_i[2]), .A2(in_valid_i), .A3(n1552), .ZN(n1553)
         );
  NOR2_X1 U1681 ( .A1(n1955), .A2(n1553), .ZN(in_ready_o) );
  OR3_X1 U1682 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_), .A2(out_valid_o), .A3(n1956), .ZN(busy_o) );
  INV_X1 U1684 ( .A(status_o_OF_), .ZN(n1554) );
  OAI21_X1 U1685 ( .B1(n1609), .B2(n1618), .A(n1554), .ZN(status_o_NX_) );
  NOR2_X1 U1686 ( .A1(n1556), .A2(n1555), .ZN(n1584) );
  NAND2_X1 U1687 ( .A1(n1558), .A2(n1557), .ZN(n1587) );
  OAI21_X1 U1688 ( .B1(n1561), .B2(n1560), .A(n1559), .ZN(n1583) );
  OAI21_X1 U1689 ( .B1(n1563), .B2(n1592), .A(n1562), .ZN(n1582) );
  NAND4_X1 U1690 ( .A1(n1581), .A2(n1587), .A3(n1583), .A4(n1582), .ZN(n1568)
         );
  NAND2_X1 U1691 ( .A1(n1564), .A2(n1596), .ZN(n1565) );
  XNOR2_X1 U1692 ( .A(n1566), .B(n1565), .ZN(n1590) );
  NAND3_X1 U1693 ( .A1(n1590), .A2(n1588), .A3(status_o_NX_), .ZN(n1567) );
  NOR4_X1 U1694 ( .A1(n1569), .A2(n1584), .A3(n1568), .A4(n1567), .ZN(
        status_o_UF_) );
  NAND2_X1 U1695 ( .A1(out_valid_o), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_res_is_spec_q_1_), .ZN(n1623) );
  NOR2_X1 U1696 ( .A1(n1623), .A2(n2029), .ZN(status_o_NV_) );
  AOI211_X1 U1697 ( .C1(n1617), .C2(n1570), .A(n1571), .B(n1618), .ZN(
        result_o[1]) );
  OAI21_X1 U1698 ( .B1(n1571), .B2(n1606), .A(n1573), .ZN(n1572) );
  NOR2_X1 U1699 ( .A1(n1618), .A2(n1572), .ZN(result_o[2]) );
  AOI211_X1 U1700 ( .C1(n1591), .C2(n1573), .A(n1574), .B(n1618), .ZN(
        result_o[3]) );
  OAI21_X1 U1701 ( .B1(n1574), .B2(n1607), .A(n1576), .ZN(n1575) );
  NOR2_X1 U1702 ( .A1(n1618), .A2(n1575), .ZN(result_o[4]) );
  AOI211_X1 U1703 ( .C1(n1610), .C2(n1576), .A(n1578), .B(n1618), .ZN(
        result_o[5]) );
  OAI21_X1 U1704 ( .B1(n1578), .B2(n1614), .A(n1577), .ZN(n1579) );
  OAI22_X1 U1705 ( .A1(n1618), .A2(n1579), .B1(n1623), .B2(n2027), .ZN(
        result_o[6]) );
  INV_X1 U1706 ( .A(n1623), .ZN(n1580) );
  NAND2_X1 U1707 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_spec_res_q_1__exponent__7_), .A2(n1580), .ZN(n1589) );
  OAI21_X1 U1708 ( .B1(n1581), .B2(n1618), .A(n1589), .ZN(result_o[7]) );
  OAI21_X1 U1709 ( .B1(n1582), .B2(n1618), .A(n1589), .ZN(result_o[8]) );
  OAI21_X1 U1710 ( .B1(n1583), .B2(n1618), .A(n1589), .ZN(result_o[9]) );
  INV_X1 U1711 ( .A(n1584), .ZN(n1585) );
  OAI21_X1 U1712 ( .B1(n1585), .B2(n1618), .A(n1589), .ZN(result_o[10]) );
  OAI21_X1 U1713 ( .B1(n1586), .B2(n1618), .A(n1589), .ZN(result_o[11]) );
  OAI21_X1 U1714 ( .B1(n1587), .B2(n1618), .A(n1589), .ZN(result_o[12]) );
  OAI21_X1 U1715 ( .B1(n1618), .B2(n1588), .A(n1589), .ZN(result_o[13]) );
  OAI21_X1 U1716 ( .B1(n1590), .B2(n1618), .A(n1589), .ZN(result_o[14]) );
  NOR3_X1 U1717 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__0_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_rnd_mode_q_1__2_), .A3(n2024), .ZN(n1621) );
  INV_X1 U1718 ( .A(n1591), .ZN(n1613) );
  INV_X1 U1719 ( .A(n1592), .ZN(n1611) );
  INV_X1 U1720 ( .A(n1593), .ZN(n1595) );
  NAND4_X1 U1721 ( .A1(n1597), .A2(n1596), .A3(n1595), .A4(n1594), .ZN(n1605)
         );
  INV_X1 U1722 ( .A(n1598), .ZN(n1603) );
  INV_X1 U1723 ( .A(n1599), .ZN(n1602) );
  INV_X1 U1724 ( .A(n1600), .ZN(n1601) );
  NAND4_X1 U1725 ( .A1(n1603), .A2(n1602), .A3(n1601), .A4(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_eff_sub_q_1_), .ZN(n1604) );
  NOR4_X1 U1726 ( .A1(n1607), .A2(n1606), .A3(n1605), .A4(n1604), .ZN(n1608)
         );
  NAND4_X1 U1727 ( .A1(n1611), .A2(n1610), .A3(n1609), .A4(n1608), .ZN(n1612)
         );
  NOR3_X1 U1728 ( .A1(n1614), .A2(n1613), .A3(n1612), .ZN(n1615) );
  NAND3_X1 U1729 ( .A1(n1617), .A2(n1616), .A3(n1615), .ZN(n1620) );
  AOI21_X1 U1730 ( .B1(n2025), .B2(n1620), .A(n1618), .ZN(n1619) );
  OAI21_X1 U1731 ( .B1(n1621), .B2(n1620), .A(n1619), .ZN(n1622) );
  OAI21_X1 U1732 ( .B1(n1623), .B2(n2028), .A(n1622), .ZN(result_o[15]) );
  NAND2_X1 U1733 ( .A1(n1956), .A2(n1624), .ZN(n1625) );
  MUX2_X1 U1734 ( .A(operands_i[47]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__15_), .S(n1626), .Z(n993) );
  MUX2_X1 U1735 ( .A(operands_i[0]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__0_), .S(n1625), .Z(n992) );
  MUX2_X1 U1736 ( .A(operands_i[1]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__1_), .S(n1625), .Z(n991) );
  MUX2_X1 U1737 ( .A(operands_i[2]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__2_), .S(n1625), .Z(n990) );
  MUX2_X1 U1738 ( .A(operands_i[3]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__3_), .S(n1625), .Z(n989) );
  MUX2_X1 U1739 ( .A(operands_i[4]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__4_), .S(n1625), .Z(n988) );
  MUX2_X1 U1740 ( .A(operands_i[5]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__5_), .S(n1625), .Z(n987) );
  MUX2_X1 U1741 ( .A(operands_i[6]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_), .S(n1625), .Z(n986) );
  MUX2_X1 U1742 ( .A(operands_i[7]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__7_), .S(n1625), .Z(n985) );
  MUX2_X1 U1743 ( .A(operands_i[8]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_), .S(n1625), .Z(n984) );
  MUX2_X1 U1744 ( .A(operands_i[9]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_), .S(n1625), .Z(n983) );
  MUX2_X1 U1745 ( .A(operands_i[10]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_), .S(n1625), .Z(n982) );
  MUX2_X1 U1746 ( .A(operands_i[11]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_), .S(n1625), .Z(n981) );
  MUX2_X1 U1747 ( .A(operands_i[12]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_), .S(n1625), .Z(n980) );
  MUX2_X1 U1748 ( .A(operands_i[13]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_), .S(n1625), .Z(n979) );
  MUX2_X1 U1749 ( .A(operands_i[14]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__14_), .S(n1625), .Z(n978) );
  MUX2_X1 U1750 ( .A(operands_i[15]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__15_), .S(n1625), .Z(n977) );
  MUX2_X1 U1751 ( .A(operands_i[16]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .S(n1625), .Z(n976) );
  MUX2_X1 U1752 ( .A(operands_i[17]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .S(n1625), .Z(n975) );
  MUX2_X1 U1753 ( .A(operands_i[18]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .S(n1625), .Z(n974) );
  MUX2_X1 U1754 ( .A(operands_i[19]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_), .S(n1626), .Z(n973) );
  MUX2_X1 U1755 ( .A(operands_i[20]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__4_), .S(n1626), .Z(n972) );
  MUX2_X1 U1756 ( .A(operands_i[21]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__5_), .S(n1626), .Z(n971) );
  MUX2_X1 U1757 ( .A(operands_i[22]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__6_), .S(n1626), .Z(n970) );
  MUX2_X1 U1758 ( .A(operands_i[23]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__7_), .S(n1626), .Z(n969) );
  MUX2_X1 U1759 ( .A(operands_i[24]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__8_), .S(n1626), .Z(n968) );
  MUX2_X1 U1760 ( .A(operands_i[25]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__9_), .S(n1626), .Z(n967) );
  MUX2_X1 U1761 ( .A(operands_i[26]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__10_), .S(n1626), .Z(n966) );
  MUX2_X1 U1762 ( .A(operands_i[27]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__11_), .S(n1626), .Z(n965) );
  MUX2_X1 U1763 ( .A(operands_i[28]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__12_), .S(n1626), .Z(n964) );
  MUX2_X1 U1764 ( .A(operands_i[29]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__13_), .S(n1626), .Z(n963) );
  MUX2_X1 U1765 ( .A(operands_i[30]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__14_), .S(n1626), .Z(n962) );
  MUX2_X1 U1766 ( .A(operands_i[31]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__15_), .S(n1626), .Z(n961) );
  MUX2_X1 U1767 ( .A(operands_i[32]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__0_), .S(n1626), .Z(n960) );
  MUX2_X1 U1768 ( .A(operands_i[33]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__1_), .S(n1626), .Z(n959) );
  MUX2_X1 U1769 ( .A(operands_i[34]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__2_), .S(n1626), .Z(n958) );
  MUX2_X1 U1770 ( .A(operands_i[35]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__3_), .S(n1626), .Z(n957) );
  MUX2_X1 U1771 ( .A(operands_i[36]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__4_), .S(n1626), .Z(n956) );
  MUX2_X1 U1772 ( .A(operands_i[37]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__5_), .S(n1626), .Z(n955) );
  MUX2_X1 U1773 ( .A(operands_i[38]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .S(n1626), .Z(n954) );
  MUX2_X1 U1774 ( .A(operands_i[39]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__7_), .S(n1626), .Z(n953) );
  MUX2_X1 U1775 ( .A(operands_i[40]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__8_), .S(n1626), .Z(n952) );
  MUX2_X1 U1776 ( .A(operands_i[41]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .S(n1625), .Z(n951) );
  MUX2_X1 U1777 ( .A(operands_i[42]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__10_), .S(n1626), .Z(n950) );
  MUX2_X1 U1778 ( .A(operands_i[43]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__11_), .S(n1626), .Z(n949) );
  MUX2_X1 U1779 ( .A(operands_i[44]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__12_), .S(n1626), .Z(n948) );
  MUX2_X1 U1780 ( .A(operands_i[45]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__13_), .S(n1626), .Z(n947) );
  MUX2_X1 U1781 ( .A(operands_i[46]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__14_), .S(n1626), .Z(n946) );
  NAND2_X1 U1782 ( .A1(n2001), .A2(n1625), .ZN(n945) );
  MUX2_X1 U1783 ( .A(rnd_mode_i[2]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__2_), .S(n1626), .Z(n944) );
  MUX2_X1 U1784 ( .A(rnd_mode_i[0]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__0_), .S(n1626), .Z(n942) );
  MUX2_X1 U1785 ( .A(rnd_mode_i[1]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_rnd_mode_q_1__1_), .S(n1626), .Z(n940) );
  MUX2_X1 U1786 ( .A(op_i[0]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__0_), .S(n1626), .Z(n937) );
  MUX2_X1 U1787 ( .A(op_i[1]), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_q_1__1_), .S(n1626), .Z(n936) );
  MUX2_X1 U1788 ( .A(op_mod_i), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_op_mod_q_1_), .S(n1626), .Z(n934) );
  AOI22_X1 U1789 ( .A1(n1951), .A2(n1637), .B1(n2018), .B2(n1851), .ZN(n933)
         );
  NOR2_X1 U1790 ( .A1(n1631), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__8_), .ZN(intadd_23_B_0_) );
  AOI22_X1 U1791 ( .A1(n1532), .A2(n1627), .B1(n1976), .B2(n1949), .ZN(n932)
         );
  NOR2_X1 U1792 ( .A1(n1631), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__9_), .ZN(intadd_23_B_1_) );
  NOR2_X1 U1793 ( .A1(n1631), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__10_), .ZN(intadd_23_B_2_) );
  AOI22_X1 U1794 ( .A1(n1951), .A2(n1628), .B1(n1960), .B2(n1949), .ZN(n930)
         );
  NOR2_X1 U1795 ( .A1(n1631), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__11_), .ZN(intadd_23_B_3_) );
  AOI22_X1 U1796 ( .A1(n1532), .A2(n1629), .B1(n1971), .B2(n1949), .ZN(n929)
         );
  NOR2_X1 U1797 ( .A1(n1631), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__12_), .ZN(intadd_23_B_4_) );
  AOI22_X1 U1798 ( .A1(n1951), .A2(n1630), .B1(n1973), .B2(n1949), .ZN(n928)
         );
  NOR2_X1 U1799 ( .A1(n1631), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__13_), .ZN(intadd_23_B_5_) );
  AOI22_X1 U1800 ( .A1(n1951), .A2(n1632), .B1(n2005), .B2(n1949), .ZN(n927)
         );
  AOI22_X1 U1801 ( .A1(n1532), .A2(n1633), .B1(n1961), .B2(n1949), .ZN(n926)
         );
  AOI22_X1 U1802 ( .A1(n1951), .A2(n1634), .B1(n1978), .B2(n1949), .ZN(n925)
         );
  AOI22_X1 U1803 ( .A1(n1532), .A2(n1635), .B1(n2007), .B2(n1949), .ZN(n924)
         );
  AOI21_X1 U1804 ( .B1(n1637), .B2(n1636), .A(intadd_22_A_0_), .ZN(n1638) );
  AOI22_X1 U1805 ( .A1(n1532), .A2(n1638), .B1(n2039), .B2(n1949), .ZN(n923)
         );
  NAND2_X1 U1806 ( .A1(n1639), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__9_), .ZN(n1640) );
  XOR2_X1 U1807 ( .A(n1641), .B(n1640), .Z(intadd_22_B_1_) );
  AOI22_X1 U1808 ( .A1(n1951), .A2(intadd_22_SUM_1_), .B1(n1988), .B2(n1949), 
        .ZN(n921) );
  AOI22_X1 U1809 ( .A1(n1532), .A2(intadd_22_SUM_2_), .B1(n1991), .B2(n1949), 
        .ZN(n920) );
  AOI22_X1 U1810 ( .A1(n1532), .A2(intadd_22_SUM_3_), .B1(n1992), .B2(n1949), 
        .ZN(n919) );
  AOI22_X1 U1811 ( .A1(n1532), .A2(intadd_22_SUM_4_), .B1(n1993), .B2(n1949), 
        .ZN(n918) );
  AOI22_X1 U1812 ( .A1(n1532), .A2(intadd_22_SUM_5_), .B1(n1989), .B2(n1949), 
        .ZN(n917) );
  AOI22_X1 U1813 ( .A1(n1532), .A2(intadd_22_SUM_6_), .B1(n1994), .B2(n1949), 
        .ZN(n916) );
  AOI22_X1 U1814 ( .A1(n1532), .A2(intadd_22_SUM_7_), .B1(n1990), .B2(n1949), 
        .ZN(n915) );
  AOI22_X1 U1815 ( .A1(n1532), .A2(n1642), .B1(n1987), .B2(n1851), .ZN(n913)
         );
  AOI22_X1 U1816 ( .A1(intadd_22_A_1_), .A2(n1643), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_tent_exp_q_1__2_), .B2(n1851), .ZN(n1644) );
  OAI21_X1 U1817 ( .B1(n1645), .B2(intadd_22_B_1_), .A(n1644), .ZN(n905) );
  NAND2_X1 U1818 ( .A1(n1646), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .ZN(n1647) );
  OAI21_X1 U1819 ( .B1(n1648), .B2(n1647), .A(n1654), .ZN(n1666) );
  INV_X1 U1820 ( .A(n1666), .ZN(n1718) );
  NOR2_X1 U1821 ( .A1(n1718), .A2(n2023), .ZN(intadd_27_A_0_) );
  NAND2_X1 U1822 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_), .A2(n1654), .ZN(n1714) );
  NOR2_X1 U1823 ( .A1(n2002), .A2(n1714), .ZN(intadd_27_B_0_) );
  OR3_X1 U1824 ( .A1(n1650), .A2(n1649), .A3(n2001), .ZN(n1719) );
  NAND2_X1 U1825 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__3_), .A2(n1654), .ZN(n1688) );
  NOR2_X1 U1826 ( .A1(n1719), .A2(n1688), .ZN(intadd_27_CI) );
  NAND2_X1 U1827 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__5_), .A2(n1654), .ZN(n1676) );
  NOR2_X1 U1828 ( .A1(n1972), .A2(n1676), .ZN(intadd_27_A_1_) );
  NOR2_X1 U1829 ( .A1(n1718), .A2(n2002), .ZN(n1653) );
  NOR2_X1 U1830 ( .A1(n2022), .A2(n1714), .ZN(n1652) );
  NAND2_X1 U1831 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__4_), .A2(n1654), .ZN(n1682) );
  NOR2_X1 U1832 ( .A1(n1719), .A2(n1682), .ZN(n1651) );
  FA_X1 U1833 ( .A(n1653), .B(n1652), .CI(n1651), .CO(intadd_27_A_2_), .S(
        intadd_27_B_1_) );
  NOR2_X1 U1834 ( .A1(n1718), .A2(n2022), .ZN(n1713) );
  NOR2_X1 U1835 ( .A1(n1972), .A2(n1714), .ZN(n1712) );
  NOR2_X1 U1836 ( .A1(n1719), .A2(n1676), .ZN(n1711) );
  NOR2_X1 U1837 ( .A1(n2023), .A2(n1676), .ZN(intadd_24_A_0_) );
  NOR2_X1 U1838 ( .A1(n1719), .A2(n1723), .ZN(intadd_24_B_0_) );
  NOR2_X1 U1839 ( .A1(n2002), .A2(n1682), .ZN(intadd_24_CI) );
  NOR4_X1 U1840 ( .A1(n1718), .A2(n1982), .A3(n1963), .A4(n1714), .ZN(
        intadd_24_B_1_) );
  NOR2_X1 U1841 ( .A1(n2022), .A2(n1676), .ZN(n1657) );
  NOR2_X1 U1842 ( .A1(n1718), .A2(n1963), .ZN(n1665) );
  NOR2_X1 U1843 ( .A1(n2023), .A2(n1714), .ZN(n1664) );
  NAND2_X1 U1844 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__2_), .A2(n1654), .ZN(n1693) );
  NOR2_X1 U1845 ( .A1(n1719), .A2(n1693), .ZN(n1663) );
  NOR2_X1 U1846 ( .A1(n1972), .A2(n1682), .ZN(n1655) );
  FA_X1 U1847 ( .A(n1657), .B(n1656), .CI(n1655), .CO(intadd_24_B_3_), .S(
        intadd_25_A_3_) );
  NAND2_X1 U1848 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1666), .ZN(n1659) );
  INV_X1 U1849 ( .A(n1714), .ZN(n1675) );
  NAND2_X1 U1850 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .A2(n1675), .ZN(n1658) );
  AOI21_X1 U1851 ( .B1(n1659), .B2(n1658), .A(intadd_24_B_1_), .ZN(
        intadd_25_A_1_) );
  NOR2_X1 U1852 ( .A1(n1963), .A2(n1676), .ZN(intadd_25_A_0_) );
  NOR2_X1 U1853 ( .A1(n1972), .A2(n1723), .ZN(intadd_25_B_0_) );
  NOR2_X1 U1854 ( .A1(n1719), .A2(n1722), .ZN(intadd_25_CI) );
  NOR2_X1 U1855 ( .A1(n2002), .A2(n1676), .ZN(n1662) );
  NOR2_X1 U1856 ( .A1(n2022), .A2(n1682), .ZN(n1661) );
  NOR2_X1 U1857 ( .A1(n1972), .A2(n1688), .ZN(n1660) );
  FA_X1 U1858 ( .A(n1662), .B(n1661), .CI(n1660), .CO(intadd_24_A_2_), .S(
        intadd_25_A_2_) );
  FA_X1 U1859 ( .A(n1665), .B(n1664), .CI(n1663), .CO(n1656), .S(
        intadd_25_B_2_) );
  NAND2_X1 U1860 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1666), .ZN(n1668) );
  NAND2_X1 U1861 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1675), .ZN(n1667) );
  NOR4_X1 U1862 ( .A1(n1718), .A2(n1982), .A3(n2021), .A4(n1714), .ZN(n1670)
         );
  AOI21_X1 U1863 ( .B1(n1668), .B2(n1667), .A(n1670), .ZN(intadd_26_A_1_) );
  NOR2_X1 U1864 ( .A1(n1963), .A2(n1682), .ZN(intadd_26_A_0_) );
  NOR2_X1 U1865 ( .A1(n2022), .A2(n1723), .ZN(intadd_26_B_0_) );
  NOR2_X1 U1866 ( .A1(n1972), .A2(n1722), .ZN(intadd_26_CI) );
  NOR4_X1 U1867 ( .A1(n2021), .A2(n1982), .A3(n1714), .A4(n1676), .ZN(
        intadd_26_B_1_) );
  NOR2_X1 U1868 ( .A1(n2022), .A2(n1688), .ZN(n1671) );
  NOR2_X1 U1869 ( .A1(n1972), .A2(n1693), .ZN(n1669) );
  FA_X1 U1870 ( .A(n1671), .B(n1670), .CI(n1669), .CO(intadd_24_A_1_), .S(
        intadd_26_A_2_) );
  NOR2_X1 U1871 ( .A1(n2023), .A2(n1688), .ZN(intadd_28_A_0_) );
  NOR4_X1 U1872 ( .A1(n2021), .A2(n1982), .A3(n1682), .A4(n1676), .ZN(
        intadd_28_B_0_) );
  NOR2_X1 U1873 ( .A1(n2002), .A2(n1693), .ZN(intadd_28_CI) );
  NOR2_X1 U1874 ( .A1(n2002), .A2(n1688), .ZN(n1674) );
  NOR2_X1 U1875 ( .A1(n2022), .A2(n1693), .ZN(n1673) );
  NOR2_X1 U1876 ( .A1(n2023), .A2(n1682), .ZN(n1672) );
  FA_X1 U1877 ( .A(n1674), .B(n1673), .CI(n1672), .CO(intadd_25_B_1_), .S(
        intadd_28_A_1_) );
  NAND2_X1 U1878 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1675), .ZN(n1678) );
  INV_X1 U1879 ( .A(n1676), .ZN(n1679) );
  NAND2_X1 U1880 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1679), .ZN(n1677) );
  AOI21_X1 U1881 ( .B1(n1678), .B2(n1677), .A(intadd_26_B_1_), .ZN(
        intadd_29_A_1_) );
  NOR2_X1 U1882 ( .A1(n1963), .A2(n1688), .ZN(intadd_29_A_0_) );
  NOR2_X1 U1883 ( .A1(n2023), .A2(n1693), .ZN(intadd_29_B_0_) );
  NOR2_X1 U1884 ( .A1(n2022), .A2(n1722), .ZN(intadd_29_CI) );
  NAND2_X1 U1885 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1679), .ZN(n1681) );
  INV_X1 U1886 ( .A(n1682), .ZN(n1697) );
  NAND2_X1 U1887 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1697), .ZN(n1680) );
  AOI21_X1 U1888 ( .B1(n1681), .B2(n1680), .A(intadd_28_B_0_), .ZN(n1685) );
  NOR2_X1 U1889 ( .A1(n2002), .A2(n1723), .ZN(n1684) );
  NOR4_X1 U1890 ( .A1(n2021), .A2(n1982), .A3(n1688), .A4(n1682), .ZN(n1699)
         );
  FA_X1 U1891 ( .A(n1683), .B(intadd_29_SUM_1_), .CI(intadd_28_SUM_0_), .CO(
        intadd_21_B_5_), .S(intadd_21_A_4_) );
  NOR2_X1 U1892 ( .A1(n1963), .A2(n1693), .ZN(n1710) );
  NOR2_X1 U1893 ( .A1(n2023), .A2(n1723), .ZN(n1709) );
  NOR2_X1 U1894 ( .A1(n2002), .A2(n1722), .ZN(n1708) );
  FA_X1 U1895 ( .A(n1685), .B(n1684), .CI(n1699), .CO(n1683), .S(n1686) );
  FA_X1 U1896 ( .A(n1687), .B(n1686), .CI(intadd_29_SUM_0_), .CO(
        intadd_21_B_4_), .S(intadd_21_A_3_) );
  INV_X1 U1897 ( .A(n1688), .ZN(n1698) );
  NAND2_X1 U1898 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1698), .ZN(n1690) );
  OR2_X1 U1899 ( .A1(n1982), .A2(n1693), .ZN(n1689) );
  NOR4_X1 U1900 ( .A1(n2021), .A2(n1982), .A3(n1693), .A4(n1688), .ZN(n1706)
         );
  AOI21_X1 U1901 ( .B1(n1690), .B2(n1689), .A(n1706), .ZN(intadd_21_A_1_) );
  NAND2_X1 U1902 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1694), .ZN(n1692) );
  NAND2_X1 U1903 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .A2(n1727), .ZN(n1691) );
  NAND4_X1 U1904 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A3(n1694), .A4(n1727), .ZN(n1704) );
  INV_X1 U1905 ( .A(n1704), .ZN(n1695) );
  AOI21_X1 U1906 ( .B1(n1692), .B2(n1691), .A(n1695), .ZN(intadd_21_A_0_) );
  NOR2_X1 U1907 ( .A1(n2021), .A2(n1693), .ZN(intadd_21_B_0_) );
  NAND2_X1 U1908 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__3_), .A2(n1727), .ZN(n1703) );
  NAND2_X1 U1909 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__2_), .A2(n1694), .ZN(n1702) );
  XNOR2_X1 U1910 ( .A(n1702), .B(n1695), .ZN(n1696) );
  XNOR2_X1 U1911 ( .A(n1703), .B(n1696), .ZN(intadd_21_B_1_) );
  NAND2_X1 U1912 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1697), .ZN(n1701) );
  NAND2_X1 U1913 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__1_), .A2(n1698), .ZN(n1700) );
  AOI21_X1 U1914 ( .B1(n1701), .B2(n1700), .A(n1699), .ZN(n1707) );
  AOI21_X1 U1915 ( .B1(n1704), .B2(n1703), .A(n1702), .ZN(n1705) );
  FA_X1 U1916 ( .A(n1707), .B(n1706), .CI(n1705), .CO(intadd_21_B_3_), .S(
        intadd_21_A_2_) );
  FA_X1 U1917 ( .A(n1710), .B(n1709), .CI(n1708), .CO(n1687), .S(
        intadd_21_B_2_) );
  NOR2_X1 U1918 ( .A1(n1718), .A2(n1972), .ZN(n1717) );
  FA_X1 U1919 ( .A(n1713), .B(n1712), .CI(n1711), .CO(n1716), .S(
        intadd_27_B_2_) );
  NOR2_X1 U1920 ( .A1(n1719), .A2(n1714), .ZN(n1715) );
  FA_X1 U1921 ( .A(n1717), .B(n1716), .CI(n1715), .CO(n1762), .S(
        intadd_21_A_11_) );
  NOR2_X1 U1922 ( .A1(n1719), .A2(n1718), .ZN(n1764) );
  OAI21_X1 U1923 ( .B1(n1762), .B2(intadd_21_n1), .A(n1764), .ZN(
        intadd_20_A_15_) );
  INV_X1 U1924 ( .A(n1720), .ZN(n1776) );
  NOR2_X1 U1925 ( .A1(n1768), .A2(n1741), .ZN(n1757) );
  NAND2_X1 U1926 ( .A1(n1776), .A2(n1757), .ZN(n1721) );
  XOR2_X1 U1927 ( .A(n1797), .B(n1721), .Z(intadd_20_B_10_) );
  NOR2_X1 U1928 ( .A1(n1982), .A2(n1722), .ZN(n1726) );
  NOR2_X1 U1929 ( .A1(n2021), .A2(n1723), .ZN(n1725) );
  OAI21_X1 U1930 ( .B1(n1726), .B2(n1725), .A(n1724), .ZN(intadd_20_A_1_) );
  NAND2_X1 U1931 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__0_), .A2(n1727), .ZN(intadd_20_A_0_) );
  OR3_X1 U1932 ( .A1(n1731), .A2(n1730), .A3(n1728), .ZN(n1777) );
  OAI22_X1 U1933 ( .A1(n1778), .A2(n1747), .B1(n1777), .B2(n1733), .ZN(n1729)
         );
  XOR2_X1 U1934 ( .A(n1804), .B(n1729), .Z(intadd_20_B_0_) );
  NOR3_X1 U1935 ( .A1(n1732), .A2(n1731), .A3(n1730), .ZN(n1793) );
  INV_X1 U1936 ( .A(n1793), .ZN(n1791) );
  OAI22_X1 U1937 ( .A1(n1791), .A2(n1733), .B1(n1781), .B2(n1747), .ZN(n1734)
         );
  XOR2_X1 U1938 ( .A(n1804), .B(n1734), .Z(intadd_20_B_1_) );
  NAND2_X1 U1939 ( .A1(n1776), .A2(n1738), .ZN(n1735) );
  XOR2_X1 U1940 ( .A(n1797), .B(n1735), .Z(intadd_20_B_2_) );
  INV_X1 U1941 ( .A(n1783), .ZN(n1750) );
  AOI22_X1 U1942 ( .A1(n1750), .A2(n1738), .B1(n1757), .B2(n1751), .ZN(n1736)
         );
  XOR2_X1 U1943 ( .A(n1736), .B(n1797), .Z(intadd_20_B_3_) );
  AOI22_X1 U1944 ( .A1(n1754), .A2(n1757), .B1(n1738), .B2(n1753), .ZN(n1737)
         );
  XOR2_X1 U1945 ( .A(n1737), .B(n1797), .Z(intadd_20_B_4_) );
  AOI22_X1 U1946 ( .A1(n1758), .A2(n1757), .B1(n1738), .B2(n1756), .ZN(n1739)
         );
  XOR2_X1 U1947 ( .A(n1739), .B(n1797), .Z(intadd_20_B_5_) );
  NAND2_X1 U1948 ( .A1(n1741), .A2(n1740), .ZN(n1769) );
  INV_X1 U1949 ( .A(n1757), .ZN(n1780) );
  OAI22_X1 U1950 ( .A1(n1743), .A2(n1769), .B1(n1742), .B2(n1780), .ZN(n1744)
         );
  XOR2_X1 U1951 ( .A(n1804), .B(n1744), .Z(intadd_20_B_6_) );
  OAI22_X1 U1952 ( .A1(n1765), .A2(n1780), .B1(n1788), .B2(n1747), .ZN(n1745)
         );
  XOR2_X1 U1953 ( .A(n1804), .B(n1745), .Z(intadd_20_B_7_) );
  OAI22_X1 U1954 ( .A1(n1778), .A2(n1780), .B1(n1777), .B2(n1747), .ZN(n1746)
         );
  XOR2_X1 U1955 ( .A(n1804), .B(n1746), .Z(intadd_20_B_8_) );
  OAI22_X1 U1956 ( .A1(n1791), .A2(n1747), .B1(n1781), .B2(n1780), .ZN(n1748)
         );
  XOR2_X1 U1957 ( .A(n1804), .B(n1748), .Z(intadd_20_B_9_) );
  NOR2_X1 U1958 ( .A1(n1749), .A2(n1768), .ZN(n1773) );
  AOI22_X1 U1959 ( .A1(n1773), .A2(n1751), .B1(n1750), .B2(n1757), .ZN(n1752)
         );
  XOR2_X1 U1960 ( .A(n1752), .B(n1797), .Z(intadd_20_B_11_) );
  AOI22_X1 U1961 ( .A1(n1773), .A2(n1754), .B1(n1757), .B2(n1753), .ZN(n1755)
         );
  XOR2_X1 U1962 ( .A(n1755), .B(n1797), .Z(intadd_20_B_12_) );
  AOI22_X1 U1963 ( .A1(n1773), .A2(n1758), .B1(n1757), .B2(n1756), .ZN(n1759)
         );
  XOR2_X1 U1964 ( .A(n1759), .B(n1797), .Z(intadd_20_B_13_) );
  NOR2_X1 U1965 ( .A1(n1768), .A2(n1760), .ZN(n1761) );
  XOR2_X1 U1966 ( .A(n1761), .B(n1804), .Z(intadd_20_A_14_) );
  XNOR2_X1 U1967 ( .A(n1762), .B(intadd_21_n1), .ZN(n1763) );
  XOR2_X1 U1968 ( .A(n1764), .B(n1763), .Z(intadd_20_B_14_) );
  INV_X1 U1969 ( .A(n1773), .ZN(n1785) );
  OAI22_X1 U1970 ( .A1(n1765), .A2(n1785), .B1(n1788), .B2(n1780), .ZN(n1766)
         );
  XOR2_X1 U1971 ( .A(n1804), .B(n1766), .Z(intadd_20_B_15_) );
  INV_X1 U1972 ( .A(n1937), .ZN(n1796) );
  NOR2_X1 U1973 ( .A1(n1777), .A2(n1785), .ZN(n1767) );
  XOR2_X1 U1974 ( .A(n1767), .B(n1804), .Z(n1918) );
  NOR2_X1 U1975 ( .A1(n1769), .A2(n1768), .ZN(n1770) );
  XOR2_X1 U1976 ( .A(n1770), .B(n1804), .Z(n1907) );
  NAND2_X1 U1977 ( .A1(n1804), .A2(n1773), .ZN(n1792) );
  NAND2_X1 U1978 ( .A1(n1785), .A2(n1797), .ZN(n1790) );
  OAI21_X1 U1979 ( .B1(n1792), .B2(n1772), .A(n1790), .ZN(n1771) );
  AOI21_X1 U1980 ( .B1(n1772), .B2(n1797), .A(n1771), .ZN(n1894) );
  INV_X1 U1981 ( .A(n1792), .ZN(n1775) );
  AOI21_X1 U1982 ( .B1(n1773), .B2(n1776), .A(n1804), .ZN(n1774) );
  AOI21_X1 U1983 ( .B1(n1776), .B2(n1775), .A(n1774), .ZN(n1881) );
  OAI22_X1 U1984 ( .A1(n1778), .A2(n1785), .B1(n1777), .B2(n1780), .ZN(n1779)
         );
  XOR2_X1 U1985 ( .A(n1804), .B(n1779), .Z(n1869) );
  NOR2_X1 U1986 ( .A1(n1869), .A2(intadd_20_n1), .ZN(n1872) );
  OAI22_X1 U1987 ( .A1(n1785), .A2(n1781), .B1(n1791), .B2(n1780), .ZN(n1782)
         );
  XOR2_X1 U1988 ( .A(n1797), .B(n1782), .Z(n1873) );
  NAND2_X1 U1989 ( .A1(n1872), .A2(n1873), .ZN(n1880) );
  NOR2_X1 U1990 ( .A1(n1881), .A2(n1880), .ZN(n1886) );
  NOR2_X1 U1991 ( .A1(n1785), .A2(n1783), .ZN(n1784) );
  OAI22_X1 U1992 ( .A1(n1804), .A2(n1784), .B1(n1792), .B2(n1783), .ZN(n1885)
         );
  NAND2_X1 U1993 ( .A1(n1886), .A2(n1885), .ZN(n1893) );
  NOR2_X1 U1994 ( .A1(n1894), .A2(n1893), .ZN(n1897) );
  NOR2_X1 U1995 ( .A1(n1785), .A2(n1786), .ZN(n1787) );
  OAI22_X1 U1996 ( .A1(n1804), .A2(n1787), .B1(n1786), .B2(n1792), .ZN(n1898)
         );
  NAND2_X1 U1997 ( .A1(n1897), .A2(n1898), .ZN(n1906) );
  NOR2_X1 U1998 ( .A1(n1907), .A2(n1906), .ZN(n1910) );
  INV_X1 U1999 ( .A(n1788), .ZN(n1789) );
  OAI221_X1 U2000 ( .B1(n1789), .B2(n1804), .C1(n1788), .C2(n1792), .A(n1790), 
        .ZN(n1911) );
  NAND2_X1 U2001 ( .A1(n1910), .A2(n1911), .ZN(n1917) );
  NOR2_X1 U2002 ( .A1(n1918), .A2(n1917), .ZN(n1926) );
  OAI221_X1 U2003 ( .B1(n1804), .B2(n1793), .C1(n1792), .C2(n1791), .A(n1790), 
        .ZN(n1927) );
  NAND2_X1 U2004 ( .A1(n1926), .A2(n1927), .ZN(n1794) );
  NAND2_X1 U2005 ( .A1(n1797), .A2(n1794), .ZN(n1905) );
  NAND2_X1 U2006 ( .A1(n1951), .A2(n1905), .ZN(n1928) );
  INV_X1 U2007 ( .A(n1905), .ZN(n1914) );
  NAND2_X1 U2008 ( .A1(n1532), .A2(n1914), .ZN(n1934) );
  INV_X1 U2009 ( .A(n1934), .ZN(n1921) );
  AOI22_X1 U2010 ( .A1(n1921), .A2(n1796), .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_final_sign_q_1_), .B2(n1851), .ZN(n1795) );
  OAI21_X1 U2011 ( .B1(n1796), .B2(n1928), .A(n1795), .ZN(n896) );
  NAND2_X1 U2012 ( .A1(n1798), .A2(n1797), .ZN(n1799) );
  XOR2_X1 U2013 ( .A(n1800), .B(n1799), .Z(n1807) );
  AOI22_X1 U2014 ( .A1(n1532), .A2(n1807), .B1(n2008), .B2(n1949), .ZN(n895)
         );
  INV_X1 U2015 ( .A(intadd_20_CI), .ZN(n1806) );
  AOI211_X1 U2016 ( .C1(n1804), .C2(n1803), .A(n1802), .B(n1801), .ZN(n1805)
         );
  NOR2_X1 U2017 ( .A1(n1806), .A2(n1805), .ZN(n1811) );
  INV_X1 U2018 ( .A(n1807), .ZN(n1810) );
  NAND2_X1 U2019 ( .A1(n1914), .A2(n1810), .ZN(n1808) );
  XOR2_X1 U2020 ( .A(n1811), .B(n1808), .Z(n1809) );
  AOI22_X1 U2021 ( .A1(n1884), .A2(n1809), .B1(n1969), .B2(n1949), .ZN(n894)
         );
  NOR2_X1 U2022 ( .A1(n1811), .A2(n1810), .ZN(n1814) );
  NOR2_X1 U2023 ( .A1(n1814), .A2(n1905), .ZN(n1812) );
  XOR2_X1 U2024 ( .A(intadd_20_SUM_0_), .B(n1812), .Z(n1813) );
  AOI22_X1 U2025 ( .A1(n1884), .A2(n1813), .B1(n1997), .B2(n1949), .ZN(n893)
         );
  INV_X1 U2026 ( .A(intadd_20_SUM_1_), .ZN(n1818) );
  NAND2_X1 U2027 ( .A1(intadd_20_SUM_0_), .A2(n1814), .ZN(n1817) );
  NAND2_X1 U2028 ( .A1(n1914), .A2(n1817), .ZN(n1815) );
  XOR2_X1 U2029 ( .A(n1818), .B(n1815), .Z(n1816) );
  AOI22_X1 U2030 ( .A1(n1884), .A2(n1816), .B1(n2033), .B2(n1949), .ZN(n892)
         );
  NOR2_X1 U2031 ( .A1(n1818), .A2(n1817), .ZN(n1821) );
  NOR2_X1 U2032 ( .A1(n1821), .A2(n1905), .ZN(n1819) );
  XOR2_X1 U2033 ( .A(intadd_20_SUM_2_), .B(n1819), .Z(n1820) );
  AOI22_X1 U2034 ( .A1(n1884), .A2(n1820), .B1(n2031), .B2(n1851), .ZN(n891)
         );
  INV_X1 U2035 ( .A(intadd_20_SUM_3_), .ZN(n1825) );
  NAND2_X1 U2036 ( .A1(intadd_20_SUM_2_), .A2(n1821), .ZN(n1824) );
  NAND2_X1 U2037 ( .A1(n1914), .A2(n1824), .ZN(n1822) );
  XOR2_X1 U2038 ( .A(n1825), .B(n1822), .Z(n1823) );
  AOI22_X1 U2039 ( .A1(n1884), .A2(n1823), .B1(n1995), .B2(n1851), .ZN(n890)
         );
  NOR2_X1 U2040 ( .A1(n1825), .A2(n1824), .ZN(n1828) );
  NOR2_X1 U2041 ( .A1(n1828), .A2(n1905), .ZN(n1826) );
  XOR2_X1 U2042 ( .A(intadd_20_SUM_4_), .B(n1826), .Z(n1827) );
  AOI22_X1 U2043 ( .A1(n1884), .A2(n1827), .B1(n2030), .B2(n1851), .ZN(n889)
         );
  INV_X1 U2044 ( .A(intadd_20_SUM_5_), .ZN(n1832) );
  NAND2_X1 U2045 ( .A1(intadd_20_SUM_4_), .A2(n1828), .ZN(n1831) );
  NAND2_X1 U2046 ( .A1(n1914), .A2(n1831), .ZN(n1829) );
  XOR2_X1 U2047 ( .A(n1832), .B(n1829), .Z(n1830) );
  AOI22_X1 U2048 ( .A1(n1884), .A2(n1830), .B1(n2032), .B2(n1851), .ZN(n888)
         );
  NOR2_X1 U2049 ( .A1(n1832), .A2(n1831), .ZN(n1835) );
  NOR2_X1 U2050 ( .A1(n1835), .A2(n1905), .ZN(n1833) );
  XOR2_X1 U2051 ( .A(intadd_20_SUM_6_), .B(n1833), .Z(n1834) );
  AOI22_X1 U2052 ( .A1(n1884), .A2(n1834), .B1(n1996), .B2(n1851), .ZN(n887)
         );
  INV_X1 U2053 ( .A(intadd_20_SUM_7_), .ZN(n1839) );
  NAND2_X1 U2054 ( .A1(intadd_20_SUM_6_), .A2(n1835), .ZN(n1838) );
  NAND2_X1 U2055 ( .A1(n1914), .A2(n1838), .ZN(n1836) );
  XOR2_X1 U2056 ( .A(n1839), .B(n1836), .Z(n1837) );
  AOI22_X1 U2057 ( .A1(n1884), .A2(n1837), .B1(n1984), .B2(n1851), .ZN(n886)
         );
  NOR2_X1 U2058 ( .A1(n1839), .A2(n1838), .ZN(n1842) );
  NOR2_X1 U2059 ( .A1(n1842), .A2(n1905), .ZN(n1840) );
  XOR2_X1 U2060 ( .A(intadd_20_SUM_8_), .B(n1840), .Z(n1841) );
  AOI22_X1 U2061 ( .A1(n1884), .A2(n1841), .B1(n1966), .B2(n1949), .ZN(n885)
         );
  INV_X1 U2062 ( .A(intadd_20_SUM_9_), .ZN(n1846) );
  NAND2_X1 U2063 ( .A1(intadd_20_SUM_8_), .A2(n1842), .ZN(n1845) );
  NAND2_X1 U2064 ( .A1(n1914), .A2(n1845), .ZN(n1843) );
  XOR2_X1 U2065 ( .A(n1846), .B(n1843), .Z(n1844) );
  AOI22_X1 U2066 ( .A1(n1884), .A2(n1844), .B1(n1965), .B2(n1949), .ZN(n884)
         );
  NOR2_X1 U2067 ( .A1(n1846), .A2(n1845), .ZN(n1849) );
  NOR2_X1 U2068 ( .A1(n1849), .A2(n1905), .ZN(n1847) );
  XOR2_X1 U2069 ( .A(intadd_20_SUM_10_), .B(n1847), .Z(n1848) );
  AOI22_X1 U2070 ( .A1(n1884), .A2(n1848), .B1(n1959), .B2(n1949), .ZN(n883)
         );
  INV_X1 U2071 ( .A(intadd_20_SUM_11_), .ZN(n1854) );
  NAND2_X1 U2072 ( .A1(intadd_20_SUM_10_), .A2(n1849), .ZN(n1853) );
  NAND2_X1 U2073 ( .A1(n1914), .A2(n1853), .ZN(n1850) );
  XOR2_X1 U2074 ( .A(n1854), .B(n1850), .Z(n1852) );
  AOI22_X1 U2075 ( .A1(n1951), .A2(n1852), .B1(n1958), .B2(n1851), .ZN(n882)
         );
  NOR2_X1 U2076 ( .A1(n1854), .A2(n1853), .ZN(n1857) );
  NOR2_X1 U2077 ( .A1(n1857), .A2(n1905), .ZN(n1855) );
  XOR2_X1 U2078 ( .A(intadd_20_SUM_12_), .B(n1855), .Z(n1856) );
  AOI22_X1 U2079 ( .A1(n1884), .A2(n1856), .B1(n1964), .B2(n1949), .ZN(n881)
         );
  INV_X1 U2080 ( .A(intadd_20_SUM_13_), .ZN(n1861) );
  NAND2_X1 U2081 ( .A1(intadd_20_SUM_12_), .A2(n1857), .ZN(n1860) );
  NAND2_X1 U2082 ( .A1(n1914), .A2(n1860), .ZN(n1858) );
  XOR2_X1 U2083 ( .A(n1861), .B(n1858), .Z(n1859) );
  AOI22_X1 U2084 ( .A1(n1884), .A2(n1859), .B1(n1985), .B2(n1949), .ZN(n880)
         );
  NOR2_X1 U2085 ( .A1(n1861), .A2(n1860), .ZN(n1864) );
  NOR2_X1 U2086 ( .A1(n1864), .A2(n1905), .ZN(n1862) );
  XOR2_X1 U2087 ( .A(intadd_20_SUM_14_), .B(n1862), .Z(n1863) );
  AOI22_X1 U2088 ( .A1(n1884), .A2(n1863), .B1(n1968), .B2(n1949), .ZN(n879)
         );
  INV_X1 U2089 ( .A(intadd_20_SUM_15_), .ZN(n1868) );
  NAND2_X1 U2090 ( .A1(intadd_20_SUM_14_), .A2(n1864), .ZN(n1867) );
  NAND2_X1 U2091 ( .A1(n1914), .A2(n1867), .ZN(n1865) );
  XOR2_X1 U2092 ( .A(n1868), .B(n1865), .Z(n1866) );
  AOI22_X1 U2093 ( .A1(n1884), .A2(n1866), .B1(n1967), .B2(n1949), .ZN(n878)
         );
  NOR2_X1 U2094 ( .A1(n1868), .A2(n1867), .ZN(n1875) );
  NOR2_X1 U2095 ( .A1(n1875), .A2(n1905), .ZN(n1870) );
  XNOR2_X1 U2096 ( .A(n1869), .B(intadd_20_n1), .ZN(n1874) );
  XOR2_X1 U2097 ( .A(n1870), .B(n1874), .Z(n1871) );
  AOI22_X1 U2098 ( .A1(n1884), .A2(n1871), .B1(n1962), .B2(n1949), .ZN(n877)
         );
  XOR2_X1 U2099 ( .A(n1873), .B(n1872), .Z(n1879) );
  NAND2_X1 U2100 ( .A1(n1875), .A2(n1874), .ZN(n1878) );
  NAND2_X1 U2101 ( .A1(n1914), .A2(n1878), .ZN(n1876) );
  XOR2_X1 U2102 ( .A(n1879), .B(n1876), .Z(n1877) );
  AOI22_X1 U2103 ( .A1(n1884), .A2(n1877), .B1(n1986), .B2(n1949), .ZN(n876)
         );
  NOR2_X1 U2104 ( .A1(n1879), .A2(n1878), .ZN(n1888) );
  NOR2_X1 U2105 ( .A1(n1888), .A2(n1905), .ZN(n1882) );
  XNOR2_X1 U2106 ( .A(n1881), .B(n1880), .ZN(n1887) );
  XOR2_X1 U2107 ( .A(n1882), .B(n1887), .Z(n1883) );
  AOI22_X1 U2108 ( .A1(n1884), .A2(n1883), .B1(n1979), .B2(n1949), .ZN(n875)
         );
  XOR2_X1 U2109 ( .A(n1886), .B(n1885), .Z(n1892) );
  NAND2_X1 U2110 ( .A1(n1888), .A2(n1887), .ZN(n1891) );
  NAND2_X1 U2111 ( .A1(n1914), .A2(n1891), .ZN(n1889) );
  XOR2_X1 U2112 ( .A(n1892), .B(n1889), .Z(n1890) );
  AOI22_X1 U2113 ( .A1(n1951), .A2(n1890), .B1(n2035), .B2(n1949), .ZN(n874)
         );
  NOR2_X1 U2114 ( .A1(n1892), .A2(n1891), .ZN(n1900) );
  NOR2_X1 U2115 ( .A1(n1900), .A2(n1905), .ZN(n1895) );
  XNOR2_X1 U2116 ( .A(n1894), .B(n1893), .ZN(n1899) );
  XOR2_X1 U2117 ( .A(n1895), .B(n1899), .Z(n1896) );
  AOI22_X1 U2118 ( .A1(n1951), .A2(n1896), .B1(n2037), .B2(n1851), .ZN(n873)
         );
  XOR2_X1 U2119 ( .A(n1898), .B(n1897), .Z(n1904) );
  NAND2_X1 U2120 ( .A1(n1900), .A2(n1899), .ZN(n1903) );
  NAND2_X1 U2121 ( .A1(n1914), .A2(n1903), .ZN(n1901) );
  XOR2_X1 U2122 ( .A(n1904), .B(n1901), .Z(n1902) );
  AOI22_X1 U2123 ( .A1(n1951), .A2(n1902), .B1(n2038), .B2(n1949), .ZN(n872)
         );
  NOR2_X1 U2124 ( .A1(n1904), .A2(n1903), .ZN(n1913) );
  NOR2_X1 U2125 ( .A1(n1913), .A2(n1905), .ZN(n1908) );
  XNOR2_X1 U2126 ( .A(n1907), .B(n1906), .ZN(n1912) );
  XOR2_X1 U2127 ( .A(n1908), .B(n1912), .Z(n1909) );
  AOI22_X1 U2128 ( .A1(n1951), .A2(n1909), .B1(n2012), .B2(n1851), .ZN(n871)
         );
  XOR2_X1 U2129 ( .A(n1911), .B(n1910), .Z(n1920) );
  NAND2_X1 U2130 ( .A1(n1913), .A2(n1912), .ZN(n1919) );
  NAND2_X1 U2131 ( .A1(n1914), .A2(n1919), .ZN(n1915) );
  XOR2_X1 U2132 ( .A(n1920), .B(n1915), .Z(n1916) );
  AOI22_X1 U2133 ( .A1(n1951), .A2(n1916), .B1(n2036), .B2(n1851), .ZN(n870)
         );
  XOR2_X1 U2134 ( .A(n1918), .B(n1917), .Z(n1930) );
  INV_X1 U2135 ( .A(n1930), .ZN(n1925) );
  NOR2_X1 U2136 ( .A1(n1920), .A2(n1919), .ZN(n1922) );
  NAND2_X1 U2137 ( .A1(n1921), .A2(n1922), .ZN(n1929) );
  NOR3_X1 U2138 ( .A1(n1930), .A2(n1922), .A3(n1934), .ZN(n1923) );
  AOI21_X1 U2139 ( .B1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__26_), .B2(n1949), .A(n1923), .ZN(n1924) );
  OAI221_X1 U2140 ( .B1(n1925), .B2(n1929), .C1(n1925), .C2(n1928), .A(n1924), 
        .ZN(n869) );
  XOR2_X1 U2141 ( .A(n1927), .B(n1926), .Z(n1935) );
  OAI21_X1 U2142 ( .B1(n1930), .B2(n1929), .A(n1928), .ZN(n1931) );
  NAND2_X1 U2143 ( .A1(n1935), .A2(n1931), .ZN(n1933) );
  NAND2_X1 U2144 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_mid_pipe_sum_q_1__27_), .A2(n1949), .ZN(n1932) );
  OAI211_X1 U2145 ( .C1(n1935), .C2(n1934), .A(n1933), .B(n1932), .ZN(n868) );
  AOI22_X1 U2146 ( .A1(n1939), .A2(n1938), .B1(n1937), .B2(n1936), .ZN(n1941)
         );
  OAI22_X1 U2147 ( .A1(n1532), .A2(n2028), .B1(n1941), .B2(n1940), .ZN(n866)
         );
  OAI222_X1 U2148 ( .A1(n1944), .A2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__1__6_), .B1(n1943), .B2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__0__6_), .C1(n1942), .C2(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_operands_q_1__2__6_), .ZN(n1948) );
  NOR2_X1 U2149 ( .A1(n1953), .A2(n1945), .ZN(n1947) );
  AOI211_X1 U2150 ( .C1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_is_boxed_q_1__1_), .C2(n1948), .A(n1947), .B(n1946), .ZN(n1950) );
  AOI22_X1 U2151 ( .A1(n1951), .A2(n1950), .B1(n2029), .B2(n1949), .ZN(n865)
         );
  OAI21_X1 U2152 ( .B1(n1953), .B2(n1952), .A(n1951), .ZN(n1954) );
  OAI21_X1 U2153 ( .B1(n1532), .B2(n2040), .A(n1954), .ZN(n864) );
  MUX2_X1 U2154 ( .A(tag_i), .B(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_tag_q_1_), .S(n1626), .Z(n863) );
  MUX2_X1 U2155 ( .A(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_tag_q_1_), .B(gen_operation_groups_0__i_opgroup_block_fmt_outputs_4__tag_), .S(n1949), 
        .Z(n862) );
  NOR2_X1 U2156 ( .A1(n1956), .A2(n1955), .ZN(n861) );
  NOR2_X1 U2157 ( .A1(
        gen_operation_groups_0__i_opgroup_block_gen_parallel_slices_4__active_format_i_fmt_slice_gen_num_lanes_0__active_lane_lane_instance_i_fma_inp_pipe_valid_q_1_), .A2(n1957), .ZN(n859) );
endmodule

