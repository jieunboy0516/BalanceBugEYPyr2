
# (C) 2001-2023 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 18.1 625 win32 2023.06.06.17:34:55

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "tb"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/intelfpga_lite/18.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" $VSIM_VERSION_STR ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA0ZinvTabGen_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA1ZinvTabGen_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA2ZinvTabGen_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA3ZinvTabGen_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_entA4ZinvTabGen_lutmem.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          tb/simulation/mentor/libraries/     
ensure_lib          tb/simulation/mentor/libraries/work/
vmap       work     tb/simulation/mentor/libraries/work/
vmap       work_lib tb/simulation/mentor/libraries/work/
if ![ string match "*ModelSim ALTERA*" $VSIM_VERSION_STR ] {
  ensure_lib                  tb/simulation/mentor/libraries/altera_ver/      
  vmap       altera_ver       tb/simulation/mentor/libraries/altera_ver/      
  ensure_lib                  tb/simulation/mentor/libraries/lpm_ver/         
  vmap       lpm_ver          tb/simulation/mentor/libraries/lpm_ver/         
  ensure_lib                  tb/simulation/mentor/libraries/sgate_ver/       
  vmap       sgate_ver        tb/simulation/mentor/libraries/sgate_ver/       
  ensure_lib                  tb/simulation/mentor/libraries/altera_mf_ver/   
  vmap       altera_mf_ver    tb/simulation/mentor/libraries/altera_mf_ver/   
  ensure_lib                  tb/simulation/mentor/libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver tb/simulation/mentor/libraries/altera_lnsim_ver/
  ensure_lib                  tb/simulation/mentor/libraries/fiftyfivenm_ver/ 
  vmap       fiftyfivenm_ver  tb/simulation/mentor/libraries/fiftyfivenm_ver/ 
  ensure_lib                  tb/simulation/mentor/libraries/altera/          
  vmap       altera           tb/simulation/mentor/libraries/altera/          
  ensure_lib                  tb/simulation/mentor/libraries/lpm/             
  vmap       lpm              tb/simulation/mentor/libraries/lpm/             
  ensure_lib                  tb/simulation/mentor/libraries/sgate/           
  vmap       sgate            tb/simulation/mentor/libraries/sgate/           
  ensure_lib                  tb/simulation/mentor/libraries/altera_mf/       
  vmap       altera_mf        tb/simulation/mentor/libraries/altera_mf/       
  ensure_lib                  tb/simulation/mentor/libraries/altera_lnsim/    
  vmap       altera_lnsim     tb/simulation/mentor/libraries/altera_lnsim/    
  ensure_lib                  tb/simulation/mentor/libraries/fiftyfivenm/     
  vmap       fiftyfivenm      tb/simulation/mentor/libraries/fiftyfivenm/     
}
ensure_lib                                                             tb/simulation/mentor/libraries/rgb_to_hv_internal_inst/                                    
vmap       rgb_to_hv_internal_inst                                     tb/simulation/mentor/libraries/rgb_to_hv_internal_inst/                                    
ensure_lib                                                             tb/simulation/mentor/libraries/irq_mapper/                                                 
vmap       irq_mapper                                                  tb/simulation/mentor/libraries/irq_mapper/                                                 
ensure_lib                                                             tb/simulation/mentor/libraries/stream_source_dpi_bfm_rgb_to_hv_blue_inst/                  
vmap       stream_source_dpi_bfm_rgb_to_hv_blue_inst                   tb/simulation/mentor/libraries/stream_source_dpi_bfm_rgb_to_hv_blue_inst/                  
ensure_lib                                                             tb/simulation/mentor/libraries/split_component_start_inst/                                 
vmap       split_component_start_inst                                  tb/simulation/mentor/libraries/split_component_start_inst/                                 
ensure_lib                                                             tb/simulation/mentor/libraries/rgb_to_hv_inst/                                             
vmap       rgb_to_hv_inst                                              tb/simulation/mentor/libraries/rgb_to_hv_inst/                                             
ensure_lib                                                             tb/simulation/mentor/libraries/rgb_to_hv_component_dpi_controller_bind_conduit_fanout_inst/
vmap       rgb_to_hv_component_dpi_controller_bind_conduit_fanout_inst tb/simulation/mentor/libraries/rgb_to_hv_component_dpi_controller_bind_conduit_fanout_inst/
ensure_lib                                                             tb/simulation/mentor/libraries/main_dpi_controller_inst/                                   
vmap       main_dpi_controller_inst                                    tb/simulation/mentor/libraries/main_dpi_controller_inst/                                   
ensure_lib                                                             tb/simulation/mentor/libraries/concatenate_component_done_inst/                            
vmap       concatenate_component_done_inst                             tb/simulation/mentor/libraries/concatenate_component_done_inst/                            
ensure_lib                                                             tb/simulation/mentor/libraries/component_dpi_controller_rgb_to_hv_inst/                    
vmap       component_dpi_controller_rgb_to_hv_inst                     tb/simulation/mentor/libraries/component_dpi_controller_rgb_to_hv_inst/                    
ensure_lib                                                             tb/simulation/mentor/libraries/clock_reset_inst/                                           
vmap       clock_reset_inst                                            tb/simulation/mentor/libraries/clock_reset_inst/                                           

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" $VSIM_VERSION_STR ] {
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"               -work altera_ver      
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                        -work lpm_ver         
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                           -work sgate_ver       
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                       -work altera_mf_ver   
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                   -work altera_lnsim_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_atoms.v"               -work fiftyfivenm_ver 
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/fiftyfivenm_atoms_ncrypt.v" -work fiftyfivenm_ver 
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"         -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"     -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"        -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"     -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"  -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"             -work altera          
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                       -work lpm             
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                      -work lpm             
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                    -work sgate           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                         -work sgate           
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"          -work altera_mf       
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                     -work altera_mf       
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"   -work altera_lnsim    
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"       -work altera_lnsim    
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/fiftyfivenm_atoms_ncrypt.v" -work fiftyfivenm     
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_atoms.vhd"             -work fiftyfivenm     
    eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/fiftyfivenm_components.vhd"        -work fiftyfivenm     
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/dspba_library_package.vhd"                                         -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/dspba_library.vhd"                                                 -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                   -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                        -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                     -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                 -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                          -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                    -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                 -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                       -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                            -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                            -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                           -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                          -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                            -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                      -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                            -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                 -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                              -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                       -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pop.v"                                                         -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_push.v"                                                        -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                          -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                    -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                 -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/st_top.v"                                                          -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_full_detector.v"                                               -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                  -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/rgb_to_hv_function_wrapper.vhd"                                    -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/rgb_to_hv_function.vhd"                                            -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_rgb_to_hv_B0_runOnce.vhd"                                       -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_rgb_to_hv_B0_runOnce_stall_region.vhd"                          -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i1_wt_limpop_rgb_to_hv0.vhd"                             -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pop_i1_wt_limpop_rgb_to_hv_reg.vhd"                          -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_wt_limpush_rgb_to_hv2.vhd"                           -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_wt_limpush_rgb_to_hv_reg.vhd"                        -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/rgb_to_hv_B0_runOnce_merge_reg.vhd"                                -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/rgb_to_hv_B0_runOnce_branch.vhd"                                   -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/rgb_to_hv_B0_runOnce_merge.vhd"                                    -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_rgb_to_hv_B1_start.vhd"                                         -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/bb_rgb_to_hv_B1_start_stall_region.vhd"                            -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_iord_bl_do_unnamed_rgb_to_hv1_rgb_to_hv12.vhd"                   -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_iowr_bl_return1_unnamed_rgb_to_hv2_rgb_to_hv35.vhd"              -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv.vhd"                -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c0_wt_entry_rgb_to_hv_c0_A0Zexit_rgb_to_hv10.vhd"   -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_logic_c0_wt_entry_rgb_to_hv_c0_enter_rgb_to_hv4.vhd"         -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_rgb_to_hv6.vhd"                          -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_push_i1_notexitcond_rgb_to_hv8.vhd"                          -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv.vhd"                -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zexit_rgb_to_hv34.vhd"   -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zo_hv36_data_fifo.vhd"   -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_sfc_exit_c1_wt_entry_rgb_to_hv_c1_A0Zhv_full_detector.vhd"   -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_sfc_logic_c1_wt_entry_rgb_to_hv_c1_enter_rgb_to_hv13.vhd"        -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/rgb_to_hv_B1_start_merge_reg.vhd"                                  -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/rgb_to_hv_B1_start_branch.vhd"                                     -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/rgb_to_hv_B1_start_merge.vhd"                                      -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_rgb_to_hv_sr.vhd"                        -work rgb_to_hv_internal_inst                                    
  eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/submodules/i_acl_pipeline_keep_going_rgb_to_hv_valid_fifo.vhd"                -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/rgb_to_hv_internal.v"                                              -work rgb_to_hv_internal_inst                                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_irq_mapper.sv"                                                  -work irq_mapper                                                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                  -work stream_source_dpi_bfm_rgb_to_hv_blue_inst                  
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv"                                  -work split_component_start_inst                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_rgb_to_hv_inst.v"                                               -work rgb_to_hv_inst                                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_rgb_to_hv_component_dpi_controller_bind_conduit_fanout_inst.sv" -work rgb_to_hv_component_dpi_controller_bind_conduit_fanout_inst
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv"                                    -work main_dpi_controller_inst                                   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_concatenate_component_done_inst.sv"                             -work concatenate_component_done_inst                            
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                    -work component_dpi_controller_rgb_to_hv_inst                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                  -work component_dpi_controller_rgb_to_hv_inst                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv"                               -work component_dpi_controller_rgb_to_hv_inst                    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv"                                            -work clock_reset_inst                                           
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/tb.v"                                                                                                                                          
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L rgb_to_hv_internal_inst -L irq_mapper -L stream_source_dpi_bfm_rgb_to_hv_blue_inst -L split_component_start_inst -L rgb_to_hv_inst -L rgb_to_hv_component_dpi_controller_bind_conduit_fanout_inst -L main_dpi_controller_inst -L concatenate_component_done_inst -L component_dpi_controller_rgb_to_hv_inst -L clock_reset_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L rgb_to_hv_internal_inst -L irq_mapper -L stream_source_dpi_bfm_rgb_to_hv_blue_inst -L split_component_start_inst -L rgb_to_hv_inst -L rgb_to_hv_component_dpi_controller_bind_conduit_fanout_inst -L main_dpi_controller_inst -L concatenate_component_done_inst -L component_dpi_controller_rgb_to_hv_inst -L clock_reset_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                                         -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                                           -- Compile device library files"
  echo
  echo "com                                               -- Compile the design files in correct order"
  echo
  echo "elab                                              -- Elaborate top level design"
  echo
  echo "elab_debug                                        -- Elaborate the top level design with novopt option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                                    -- Top level module name."
  echo "                                                     For most designs, this should be overridden"
  echo "                                                     to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME                              -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                                       -- Platform Designer base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR                               -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS                      -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS                         -- User-defined elaboration options, added to elab/elab_debug aliases."
  echo
  echo "USER_DEFINED_VHDL_COMPILE_OPTIONS                 -- User-defined vhdl compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VERILOG_COMPILE_OPTIONS              -- User-defined verilog compile options, added to com/dev_com aliases."
}
file_copy
h
