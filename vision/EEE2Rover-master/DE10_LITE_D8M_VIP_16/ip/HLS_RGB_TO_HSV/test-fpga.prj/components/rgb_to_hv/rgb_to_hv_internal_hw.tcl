package require -exact qsys 15.0
set_module_property NAME rgb_to_hv_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME rgb_to_hv_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_assignment hls.cosim.name {rgb_to_hv}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL rgb_to_hv_internal
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file dspba_library_package.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library_package.vhd
add_fileset_file dspba_library.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library.vhd
add_fileset_file acl_data_fifo.v SYSTEM_VERILOG PATH ip/acl_data_fifo.v
add_fileset_file acl_fifo.v SYSTEM_VERILOG PATH ip/acl_fifo.v
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_fifo.v
add_fileset_file acl_ll_ram_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_ram_fifo.v
add_fileset_file acl_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_valid_fifo_counter.v
add_fileset_file acl_dspba_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_dspba_valid_fifo_counter.v
add_fileset_file acl_staging_reg.v SYSTEM_VERILOG PATH ip/acl_staging_reg.v
add_fileset_file hld_fifo.sv SYSTEM_VERILOG PATH ip/hld_fifo.sv
add_fileset_file hld_fifo_zero_width.sv SYSTEM_VERILOG PATH ip/hld_fifo_zero_width.sv
add_fileset_file acl_high_speed_fifo.sv SYSTEM_VERILOG PATH ip/acl_high_speed_fifo.sv
add_fileset_file acl_low_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_low_latency_fifo.sv
add_fileset_file acl_zero_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_zero_latency_fifo.sv
add_fileset_file acl_fanout_pipeline.sv SYSTEM_VERILOG PATH ip/acl_fanout_pipeline.sv
add_fileset_file acl_std_synchronizer_nocut.v SYSTEM_VERILOG PATH ip/acl_std_synchronizer_nocut.v
add_fileset_file acl_tessellated_incr_decr_threshold.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_decr_threshold.sv
add_fileset_file acl_tessellated_incr_lookahead.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_lookahead.sv
add_fileset_file acl_reset_handler.sv SYSTEM_VERILOG PATH ip/acl_reset_handler.sv
add_fileset_file acl_lfsr.sv SYSTEM_VERILOG PATH ip/acl_lfsr.sv
add_fileset_file acl_pop.v SYSTEM_VERILOG PATH ip/acl_pop.v
add_fileset_file acl_push.v SYSTEM_VERILOG PATH ip/acl_push.v
add_fileset_file acl_token_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_token_fifo_counter.v
add_fileset_file acl_pipeline.v SYSTEM_VERILOG PATH ip/acl_pipeline.v
add_fileset_file acl_dspba_buffer.v SYSTEM_VERILOG PATH ip/acl_dspba_buffer.v
add_fileset_file acl_enable_sink.v SYSTEM_VERILOG PATH ip/acl_enable_sink.v
add_fileset_file st_top.v SYSTEM_VERILOG PATH ip/st_top.v
add_fileset_file acl_full_detector.v SYSTEM_VERILOG PATH ip/acl_full_detector.v
add_fileset_file acl_reset_wire.v SYSTEM_VERILOG PATH ip/acl_reset_wire.v
add_fileset_file rgb_to_hv_function_wrapper.vhd VHDL PATH ip/rgb_to_hv_function_wrapper.vhd
add_fileset_file rgb_to_hv_function.vhd VHDL PATH ip/rgb_to_hv_function.vhd
add_fileset_file bb_rgb_to_hv_B0_runOnce.vhd VHDL PATH ip/bb_rgb_to_hv_B0_runOnce.vhd
add_fileset_file bb_rgb_to_hv_B0_runOnce_stall_region.vhd VHDL PATH ip/bb_rgb_to_hv_B0_runOnce_stall_region.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_rgb_to_hv0.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_rgb_to_hv0.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_rgb_to_hv_reg.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_rgb_to_hv_reg.vhd
add_fileset_file i_acl_push_i1_wt_limpush_rgb_to_hv2.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_rgb_to_hv2.vhd
add_fileset_file i_acl_push_i1_wt_limpush_rgb_to_hv_reg.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_rgb_to_hv_reg.vhd
add_fileset_file rgb_to_hv_B0_runOnce_merge_reg.vhd VHDL PATH ip/rgb_to_hv_B0_runOnce_merge_reg.vhd
add_fileset_file rgb_to_hv_B0_runOnce_branch.vhd VHDL PATH ip/rgb_to_hv_B0_runOnce_branch.vhd
add_fileset_file rgb_to_hv_B0_runOnce_merge.vhd VHDL PATH ip/rgb_to_hv_B0_runOnce_merge.vhd
add_fileset_file bb_rgb_to_hv_B1_start.vhd VHDL PATH ip/bb_rgb_to_hv_B1_start.vhd
add_fileset_file bb_rgb_to_hv_B1_start_stall_region.vhd VHDL PATH ip/bb_rgb_to_hv_B1_start_stall_region.vhd
add_fileset_file i_iord_bl_do_unnamed_rgb_to_hv1_rgb_to_hv12.vhd VHDL PATH ip/i_iord_bl_do_unnamed_rgb_to_hv1_rgb_to_hv12.vhd
add_fileset_file i_iowr_bl_return1_unnamed_rgb_to_hv2_rgb_to_hv35.vhd VHDL PATH ip/i_iowr_bl_return1_unnamed_rgb_to_hv2_rgb_to_hv35.vhd
add_fileset_file i_sfc_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv.vhd VHDL PATH ip/i_sfc_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv.vhd
add_fileset_file i_acl_sfc_exit_c0_wt_entry_rgb_to_hv_c0_A0Zexit_rgb_to_hv10.vhd VHDL PATH ip/i_acl_sfc_exit_c0_wt_entry_rgb_to_hv_c0_A0Zexit_rgb_to_hv10.vhd
add_fileset_file i_sfc_logic_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv4.vhd VHDL PATH ip/i_sfc_logic_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv4.vhd
add_fileset_file i_acl_pipeline_keep_going_rgb_to_hv6.vhd VHDL PATH ip/i_acl_pipeline_keep_going_rgb_to_hv6.vhd
add_fileset_file i_acl_push_i1_notexitcond_rgb_to_hv8.vhd VHDL PATH ip/i_acl_push_i1_notexitcond_rgb_to_hv8.vhd
add_fileset_file i_sfc_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv.vhd VHDL PATH ip/i_sfc_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zexit_rgb_to_hv34.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zexit_rgb_to_hv34.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zo_hv36_data_fifo.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zo_hv36_data_fifo.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zhv_full_detector.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zhv_full_detector.vhd
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv13.vhd VHDL PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv13.vhd
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA0ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA0ZinvTabGen_lutmem.hex
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA1ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA1ZinvTabGen_lutmem.hex
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA2ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA2ZinvTabGen_lutmem.hex
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA3ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA3ZinvTabGen_lutmem.hex
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA4ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA4ZinvTabGen_lutmem.hex
add_fileset_file rgb_to_hv_B1_start_merge_reg.vhd VHDL PATH ip/rgb_to_hv_B1_start_merge_reg.vhd
add_fileset_file rgb_to_hv_B1_start_branch.vhd VHDL PATH ip/rgb_to_hv_B1_start_branch.vhd
add_fileset_file rgb_to_hv_B1_start_merge.vhd VHDL PATH ip/rgb_to_hv_B1_start_merge.vhd
add_fileset_file i_acl_pipeline_keep_going_rgb_to_hv_sr.vhd VHDL PATH ip/i_acl_pipeline_keep_going_rgb_to_hv_sr.vhd
add_fileset_file i_acl_pipeline_keep_going_rgb_to_hv_valid_fifo.vhd VHDL PATH ip/i_acl_pipeline_keep_going_rgb_to_hv_valid_fifo.vhd
add_fileset_file rgb_to_hv_internal.v SYSTEM_VERILOG PATH rgb_to_hv_internal.v

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL rgb_to_hv_internal
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file dspba_library_package.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library_package.vhd
add_fileset_file dspba_library.vhd VHDL PATH windows64/lib/dspba/Libraries/vhdl/base/dspba_library.vhd
add_fileset_file acl_data_fifo.v SYSTEM_VERILOG PATH ip/acl_data_fifo.v
add_fileset_file acl_fifo.v SYSTEM_VERILOG PATH ip/acl_fifo.v
add_fileset_file acl_ll_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_fifo.v
add_fileset_file acl_ll_ram_fifo.v SYSTEM_VERILOG PATH ip/acl_ll_ram_fifo.v
add_fileset_file acl_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_valid_fifo_counter.v
add_fileset_file acl_dspba_valid_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_dspba_valid_fifo_counter.v
add_fileset_file acl_staging_reg.v SYSTEM_VERILOG PATH ip/acl_staging_reg.v
add_fileset_file hld_fifo.sv SYSTEM_VERILOG PATH ip/hld_fifo.sv
add_fileset_file hld_fifo_zero_width.sv SYSTEM_VERILOG PATH ip/hld_fifo_zero_width.sv
add_fileset_file acl_high_speed_fifo.sv SYSTEM_VERILOG PATH ip/acl_high_speed_fifo.sv
add_fileset_file acl_low_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_low_latency_fifo.sv
add_fileset_file acl_zero_latency_fifo.sv SYSTEM_VERILOG PATH ip/acl_zero_latency_fifo.sv
add_fileset_file acl_fanout_pipeline.sv SYSTEM_VERILOG PATH ip/acl_fanout_pipeline.sv
add_fileset_file acl_std_synchronizer_nocut.v SYSTEM_VERILOG PATH ip/acl_std_synchronizer_nocut.v
add_fileset_file acl_tessellated_incr_decr_threshold.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_decr_threshold.sv
add_fileset_file acl_tessellated_incr_lookahead.sv SYSTEM_VERILOG PATH ip/acl_tessellated_incr_lookahead.sv
add_fileset_file acl_reset_handler.sv SYSTEM_VERILOG PATH ip/acl_reset_handler.sv
add_fileset_file acl_lfsr.sv SYSTEM_VERILOG PATH ip/acl_lfsr.sv
add_fileset_file acl_pop.v SYSTEM_VERILOG PATH ip/acl_pop.v
add_fileset_file acl_push.v SYSTEM_VERILOG PATH ip/acl_push.v
add_fileset_file acl_token_fifo_counter.v SYSTEM_VERILOG PATH ip/acl_token_fifo_counter.v
add_fileset_file acl_pipeline.v SYSTEM_VERILOG PATH ip/acl_pipeline.v
add_fileset_file acl_dspba_buffer.v SYSTEM_VERILOG PATH ip/acl_dspba_buffer.v
add_fileset_file acl_enable_sink.v SYSTEM_VERILOG PATH ip/acl_enable_sink.v
add_fileset_file st_top.v SYSTEM_VERILOG PATH ip/st_top.v
add_fileset_file acl_full_detector.v SYSTEM_VERILOG PATH ip/acl_full_detector.v
add_fileset_file acl_reset_wire.v SYSTEM_VERILOG PATH ip/acl_reset_wire.v
add_fileset_file rgb_to_hv_function_wrapper.vhd VHDL PATH ip/rgb_to_hv_function_wrapper.vhd
add_fileset_file rgb_to_hv_function.vhd VHDL PATH ip/rgb_to_hv_function.vhd
add_fileset_file bb_rgb_to_hv_B0_runOnce.vhd VHDL PATH ip/bb_rgb_to_hv_B0_runOnce.vhd
add_fileset_file bb_rgb_to_hv_B0_runOnce_stall_region.vhd VHDL PATH ip/bb_rgb_to_hv_B0_runOnce_stall_region.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_rgb_to_hv0.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_rgb_to_hv0.vhd
add_fileset_file i_acl_pop_i1_wt_limpop_rgb_to_hv_reg.vhd VHDL PATH ip/i_acl_pop_i1_wt_limpop_rgb_to_hv_reg.vhd
add_fileset_file i_acl_push_i1_wt_limpush_rgb_to_hv2.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_rgb_to_hv2.vhd
add_fileset_file i_acl_push_i1_wt_limpush_rgb_to_hv_reg.vhd VHDL PATH ip/i_acl_push_i1_wt_limpush_rgb_to_hv_reg.vhd
add_fileset_file rgb_to_hv_B0_runOnce_merge_reg.vhd VHDL PATH ip/rgb_to_hv_B0_runOnce_merge_reg.vhd
add_fileset_file rgb_to_hv_B0_runOnce_branch.vhd VHDL PATH ip/rgb_to_hv_B0_runOnce_branch.vhd
add_fileset_file rgb_to_hv_B0_runOnce_merge.vhd VHDL PATH ip/rgb_to_hv_B0_runOnce_merge.vhd
add_fileset_file bb_rgb_to_hv_B1_start.vhd VHDL PATH ip/bb_rgb_to_hv_B1_start.vhd
add_fileset_file bb_rgb_to_hv_B1_start_stall_region.vhd VHDL PATH ip/bb_rgb_to_hv_B1_start_stall_region.vhd
add_fileset_file i_iord_bl_do_unnamed_rgb_to_hv1_rgb_to_hv12.vhd VHDL PATH ip/i_iord_bl_do_unnamed_rgb_to_hv1_rgb_to_hv12.vhd
add_fileset_file i_iowr_bl_return1_unnamed_rgb_to_hv2_rgb_to_hv35.vhd VHDL PATH ip/i_iowr_bl_return1_unnamed_rgb_to_hv2_rgb_to_hv35.vhd
add_fileset_file i_sfc_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv.vhd VHDL PATH ip/i_sfc_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv.vhd
add_fileset_file i_acl_sfc_exit_c0_wt_entry_rgb_to_hv_c0_A0Zexit_rgb_to_hv10.vhd VHDL PATH ip/i_acl_sfc_exit_c0_wt_entry_rgb_to_hv_c0_A0Zexit_rgb_to_hv10.vhd
add_fileset_file i_sfc_logic_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv4.vhd VHDL PATH ip/i_sfc_logic_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv4.vhd
add_fileset_file i_acl_pipeline_keep_going_rgb_to_hv6.vhd VHDL PATH ip/i_acl_pipeline_keep_going_rgb_to_hv6.vhd
add_fileset_file i_acl_push_i1_notexitcond_rgb_to_hv8.vhd VHDL PATH ip/i_acl_push_i1_notexitcond_rgb_to_hv8.vhd
add_fileset_file i_sfc_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv.vhd VHDL PATH ip/i_sfc_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zexit_rgb_to_hv34.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zexit_rgb_to_hv34.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zo_hv36_data_fifo.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zo_hv36_data_fifo.vhd
add_fileset_file i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zhv_full_detector.vhd VHDL PATH ip/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zhv_full_detector.vhd
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv13.vhd VHDL PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv13.vhd
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA0ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA0ZinvTabGen_lutmem.hex
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA1ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA1ZinvTabGen_lutmem.hex
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA2ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA2ZinvTabGen_lutmem.hex
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA3ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA3ZinvTabGen_lutmem.hex
add_fileset_file i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA4ZinvTabGen_lutmem.hex HEX PATH ip/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA4ZinvTabGen_lutmem.hex
add_fileset_file rgb_to_hv_B1_start_merge_reg.vhd VHDL PATH ip/rgb_to_hv_B1_start_merge_reg.vhd
add_fileset_file rgb_to_hv_B1_start_branch.vhd VHDL PATH ip/rgb_to_hv_B1_start_branch.vhd
add_fileset_file rgb_to_hv_B1_start_merge.vhd VHDL PATH ip/rgb_to_hv_B1_start_merge.vhd
add_fileset_file i_acl_pipeline_keep_going_rgb_to_hv_sr.vhd VHDL PATH ip/i_acl_pipeline_keep_going_rgb_to_hv_sr.vhd
add_fileset_file i_acl_pipeline_keep_going_rgb_to_hv_valid_fifo.vhd VHDL PATH ip/i_acl_pipeline_keep_going_rgb_to_hv_valid_fifo.vhd
add_fileset_file rgb_to_hv_internal.v SYSTEM_VERILOG PATH rgb_to_hv_internal.v

#### Primary clock for the component
add_interface clock clock end
set_interface_property clock ENABLED true
set_interface_assignment clock hls.cosim.name {$clock}
add_interface_port clock clock clk input 1

#### Primary reset for the component
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_assignment reset hls.cosim.name {$reset}
add_interface_port reset resetn reset_n input 1

#### The component invocation protocol interface (call)
add_interface call conduit sink
set_interface_property call associatedClock clock
set_interface_property call associatedReset reset
set_interface_assignment call hls.cosim.name {$call}
add_interface_port call start valid input 1
add_interface_port call busy stall output 1

#### The component return protocol interface (return)
add_interface return conduit source
set_interface_property return associatedClock clock
set_interface_property return associatedReset reset
set_interface_assignment return hls.cosim.name {$return}
add_interface_port return done valid output 1
add_interface_port return stall stall input 1

#### The component return data interface (returndata)
add_interface returndata conduit source
set_interface_property returndata associatedClock clock
set_interface_property returndata associatedReset reset
set_interface_assignment returndata hls.cosim.name {$returndata}
add_interface_port returndata returndata data output 27

#### Parameter red interface
add_interface red conduit sink
set_interface_property red associatedClock clock
set_interface_property red associatedReset reset
set_interface_assignment red hls.cosim.name {red}
add_interface_port red red data input 8

#### Parameter green interface
add_interface green conduit sink
set_interface_property green associatedClock clock
set_interface_property green associatedReset reset
set_interface_assignment green hls.cosim.name {green}
add_interface_port green green data input 8

#### Parameter blue interface
add_interface blue conduit sink
set_interface_property blue associatedClock clock
set_interface_property blue associatedReset reset
set_interface_assignment blue hls.cosim.name {blue}
add_interface_port blue blue data input 8

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }
