#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Nov  1 19:00:56 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.11-s130_1 (64bit) 08/05/2020 15:53 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.11-s130_1 NR200802-2257/20_11-UB (database version 18.20.512) {superthreading v2.9}
#@(#)CDS: AAE 20.11-s008 (64bit) 08/05/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.11-s059_1 () Aug  2 2020 05:46:30 ( )
#@(#)CDS: SYNTECH 20.11-s028_1 () Aug  1 2020 06:14:27 ( )
#@(#)CDS: CPE v20.11-s013
#@(#)CDS: IQuantus/TQuantus 19.1.3-s260 (64bit) Thu May 28 10:57:28 PDT 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell FIR_UNF
set init_verilog ../netlist/FIR_UNF.v
set init_lef_file /eda/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_mmmc_file mmm_design.tcl
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5 5 5 5
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setPlaceMode -prerouteAsObs {1 3 4 5 6 7 8}
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {CLKBUF_X3 CLKBUF_X2 CLKBUF_X1 BUF_X32 BUF_X16 BUF_X8 BUF_X4 BUF_X2 BUF_X1 INV_X32 INV_X16 INV_X8 INV_X4 INV_X2 INV_X1} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design
zoomBox 2.14550 4.43450 177.30850 191.15500
zoomBox 26.72400 51.64500 134.29600 166.31500
selectInst j0_addMult1_MULT_mult_18_U34
zoomBox 40.73000 70.81650 118.45100 153.66550
setDesignMode -process 45
deselectAll
selectInst REGC5_Dout_reg_7_
zoomBox 33.06800 63.29500 124.50450 160.76450
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
selectWire 42.9550 68.1800 43.0950 70.8400 4 j2_addMult9_MULT_mult_18_n430
deselectAll
selectInst j2_addMult1_MULT_mult_18_U367
set_ccopt_property target_max_trans 0.08
set_ccopt_property target_skew 0.5
create_ccopt_clock_tree -name MY_CLK -source clk
ccopt_design
report_ccopt_skew_groups
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
selectInst j2_addMult1_MULT_mult_18_U479
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation
selectInst i1_R1_Dout_reg_2_
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
selectInst i2_R3_Dout_reg_6_
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
deselectAll
selectInst i1_R2_Dout_reg_2_
zoomBox 5.77400 35.41100 154.66300 194.12400
fit
zoomIn
zoomBox 64.23450 62.48950 122.62250 124.73000
zoomBox 71.95550 71.70700 114.14100 116.67600
zoomBox 77.53400 78.36700 108.01300 110.85700
zoomBox 83.13850 85.05750 101.85700 105.01100
zoomBox 85.61400 88.01300 99.13750 102.42900
zoomBox 86.58050 89.16700 98.07550 101.42050
zoomBox 88.10050 90.98150 96.40600 99.83500
gui_select -rect {91.38850 98.41000 92.97200 96.34000}
deselectAll
pan -2.19200 5.34100
zoomBox 89.59850 99.20150 91.66900 97.75250
zoomBox 89.15900 96.88500 92.02500 99.94000
zoomBox 88.89050 96.55700 92.26250 100.15150
zoomBox 87.25100 94.55550 93.71100 101.44150
saveDesign FIR_UNF
saveDesign FIR_UNF
deselectAll
selectWire 82.5200 96.4950 92.0900 96.5650 3 {j0_A0[3]}
zoomBox 86.10150 93.71850 95.04250 103.24950
zoomBox 83.48650 91.53550 98.04600 107.05550
zoomBox 80.87050 89.36200 101.02250 110.84350
fit
deselectAll
selectInst j2_addMult6_MULT_mult_18_U42
reset_parasitics
extractRC
deselectAll
selectWire 76.2750 15.4000 98.8150 15.5400 5 FE_DBTN16_i2_R2_out_5
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix FIR_UNF_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix FIR_UNF_preCTS -outDir timingReports
deselectAll
selectWire 105.1300 35.3150 105.2000 36.3650 2 {C8[0]}
verifyConnectivity -type all -error 1000 -warning 50
deselectAll
selectInst j0_addMult5_MULT_mult_18_U38
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report FIR_UNF.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
reportGateCount -level 5 -limit 100 -outfile FIR_UNF.gateCount
saveNetlist FIR_UNF.v
getCTSMode -engine -quiet
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network FIR_UNF.sdf
deselectAll
selectInst FILLER__1_192
write_sdf -ideal_clock_network -recompute_delay_calc FIR_UNF.sdf
deselectAll
selectInst j2_addMult7_MULT_mult_18_U57
deselectAll
selectWire 5.1300 25.9550 182.2100 26.1250 1 VSS
deselectAll
selectWire 5.1300 25.9550 182.2100 26.1250 1 VSS
saveDesign FIR_UNF_Routed
saveDesign FIR_UNF_Routed
saveDesign FIR_UNF_Routed
saveDesign FIR_UNF_Routed
deselectAll
selectWire 65.2300 122.3950 65.3000 124.0050 2 j2_addMult1_MULT_mult_18_n455
getCTSMode -engine -quiet
zoomBox -16.06700 -71.29250 269.15800 232.75250
deselectAll
encMessage warning 0
encMessage debug 0
encMessage info 0
is_common_ui_mode
restoreDesign /home/isa30_2025_2026/labISA/lab1/FIRunfolded/innovus/FIR_UNF_Routed.dat FIR_UNF
encMessage warning 1
encMessage debug 0
encMessage info 1
set_power_analysis_mode -reset
set_power_analysis_mode -method static -corner max -create_binary_db true -write_static_currents true -honor_negative_energy true -ignore_control_signals true
set_power_output_dir -reset
set_power_output_dir ./
set_default_switching_activity -reset
set_default_switching_activity -input_activity 0.2 -period 10.0
read_activity_file -reset
read_activity_file -format VCD -scope /tb_fir/UUT -start {} -end {} -block {} ../vcd/design.vcd
set_power -reset
set_powerup_analysis -reset
set_dynamic_power_simulation -reset
report_power -rail_analysis_format VS -outfile .//FIR_UNF.rpt
report_power -outfile reportPowerInnovus.txt -sort { total }
report_power -outfile reportPowerInnovus.txt -sort { total }
