	D8M_QSYS u0 (
		.alt_vip_itc_0_clocked_video_vid_clk         (<connected-to-alt_vip_itc_0_clocked_video_vid_clk>),         //       alt_vip_itc_0_clocked_video.vid_clk
		.alt_vip_itc_0_clocked_video_vid_data        (<connected-to-alt_vip_itc_0_clocked_video_vid_data>),        //                                  .vid_data
		.alt_vip_itc_0_clocked_video_underflow       (<connected-to-alt_vip_itc_0_clocked_video_underflow>),       //                                  .underflow
		.alt_vip_itc_0_clocked_video_vid_datavalid   (<connected-to-alt_vip_itc_0_clocked_video_vid_datavalid>),   //                                  .vid_datavalid
		.alt_vip_itc_0_clocked_video_vid_v_sync      (<connected-to-alt_vip_itc_0_clocked_video_vid_v_sync>),      //                                  .vid_v_sync
		.alt_vip_itc_0_clocked_video_vid_h_sync      (<connected-to-alt_vip_itc_0_clocked_video_vid_h_sync>),      //                                  .vid_h_sync
		.alt_vip_itc_0_clocked_video_vid_f           (<connected-to-alt_vip_itc_0_clocked_video_vid_f>),           //                                  .vid_f
		.alt_vip_itc_0_clocked_video_vid_h           (<connected-to-alt_vip_itc_0_clocked_video_vid_h>),           //                                  .vid_h
		.alt_vip_itc_0_clocked_video_vid_v           (<connected-to-alt_vip_itc_0_clocked_video_vid_v>),           //                                  .vid_v
		.external_clk50_clk                          (<connected-to-external_clk50_clk>),                          //                    external_clk50.clk
		.external_reset_reset_n                      (<connected-to-external_reset_reset_n>),                      //                    external_reset.reset_n
		.hdmi_tx_int_n_external_connection_export    (<connected-to-hdmi_tx_int_n_external_connection_export>),    // hdmi_tx_int_n_external_connection.export
		.i2c_opencores_camera_export_scl_pad_io      (<connected-to-i2c_opencores_camera_export_scl_pad_io>),      //       i2c_opencores_camera_export.scl_pad_io
		.i2c_opencores_camera_export_sda_pad_io      (<connected-to-i2c_opencores_camera_export_sda_pad_io>),      //                                  .sda_pad_io
		.i2c_opencores_mipi_export_scl_pad_io        (<connected-to-i2c_opencores_mipi_export_scl_pad_io>),        //         i2c_opencores_mipi_export.scl_pad_io
		.i2c_opencores_mipi_export_sda_pad_io        (<connected-to-i2c_opencores_mipi_export_sda_pad_io>),        //                                  .sda_pad_io
		.i2c_scl_external_connection_export          (<connected-to-i2c_scl_external_connection_export>),          //       i2c_scl_external_connection.export
		.i2c_sda_external_connection_export          (<connected-to-i2c_sda_external_connection_export>),          //       i2c_sda_external_connection.export
		.key_external_connection_export              (<connected-to-key_external_connection_export>),              //           key_external_connection.export
		.mem_if_lpddr2_emif_pll_ref_clk_clk          (<connected-to-mem_if_lpddr2_emif_pll_ref_clk_clk>),          //    mem_if_lpddr2_emif_pll_ref_clk.clk
		.mem_if_lpddr2_emif_status_local_init_done   (<connected-to-mem_if_lpddr2_emif_status_local_init_done>),   //         mem_if_lpddr2_emif_status.local_init_done
		.mem_if_lpddr2_emif_status_local_cal_success (<connected-to-mem_if_lpddr2_emif_status_local_cal_success>), //                                  .local_cal_success
		.mem_if_lpddr2_emif_status_local_cal_fail    (<connected-to-mem_if_lpddr2_emif_status_local_cal_fail>),    //                                  .local_cal_fail
		.memory_mem_ca                               (<connected-to-memory_mem_ca>),                               //                            memory.mem_ca
		.memory_mem_ck                               (<connected-to-memory_mem_ck>),                               //                                  .mem_ck
		.memory_mem_ck_n                             (<connected-to-memory_mem_ck_n>),                             //                                  .mem_ck_n
		.memory_mem_cke                              (<connected-to-memory_mem_cke>),                              //                                  .mem_cke
		.memory_mem_cs_n                             (<connected-to-memory_mem_cs_n>),                             //                                  .mem_cs_n
		.memory_mem_dm                               (<connected-to-memory_mem_dm>),                               //                                  .mem_dm
		.memory_mem_dq                               (<connected-to-memory_mem_dq>),                               //                                  .mem_dq
		.memory_mem_dqs                              (<connected-to-memory_mem_dqs>),                              //                                  .mem_dqs
		.memory_mem_dqs_n                            (<connected-to-memory_mem_dqs_n>),                            //                                  .mem_dqs_n
		.mipi_pwdn_n_external_connection_export      (<connected-to-mipi_pwdn_n_external_connection_export>),      //   mipi_pwdn_n_external_connection.export
		.mipi_reset_n_external_connection_export     (<connected-to-mipi_reset_n_external_connection_export>),     //  mipi_reset_n_external_connection.export
		.oct_rzqin                                   (<connected-to-oct_rzqin>),                                   //                               oct.rzqin
		.terasic_auto_focus_0_conduit_vcm_i2c_sda    (<connected-to-terasic_auto_focus_0_conduit_vcm_i2c_sda>),    //      terasic_auto_focus_0_conduit.vcm_i2c_sda
		.terasic_auto_focus_0_conduit_clk50          (<connected-to-terasic_auto_focus_0_conduit_clk50>),          //                                  .clk50
		.terasic_auto_focus_0_conduit_vcm_i2c_scl    (<connected-to-terasic_auto_focus_0_conduit_vcm_i2c_scl>),    //                                  .vcm_i2c_scl
		.terasic_camera_0_conduit_end_D              (<connected-to-terasic_camera_0_conduit_end_D>),              //      terasic_camera_0_conduit_end.D
		.terasic_camera_0_conduit_end_FVAL           (<connected-to-terasic_camera_0_conduit_end_FVAL>),           //                                  .FVAL
		.terasic_camera_0_conduit_end_LVAL           (<connected-to-terasic_camera_0_conduit_end_LVAL>),           //                                  .LVAL
		.terasic_camera_0_conduit_end_PIXCLK         (<connected-to-terasic_camera_0_conduit_end_PIXCLK>)          //                                  .PIXCLK
	);

