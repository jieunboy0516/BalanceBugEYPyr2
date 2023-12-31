
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module DE2_115_D8M_VIP(

	//////////// CLOCK //////////
	input 		          		CLOCK2_50,
	input 		          		CLOCK3_50,
	input 		          		CLOCK_50,

	//////////// Sma //////////
	input 		          		SMA_CLKIN,
	output		          		SMA_CLKOUT,

	//////////// LED //////////
	output		     [8:0]		LEDG,
	output		    [17:0]		LEDR,

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// EX_IO //////////
	inout 		     [6:0]		EX_IO,

	//////////// SW //////////
	input 		    [17:0]		SW,

	//////////// SEG7 //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,
	output		     [6:0]		HEX2,
	output		     [6:0]		HEX3,
	output		     [6:0]		HEX4,
	output		     [6:0]		HEX5,
	output		     [6:0]		HEX6,
	output		     [6:0]		HEX7,

	//////////// LCD //////////
	output		          		LCD_BLON,
	inout 		     [7:0]		LCD_DATA,
	output		          		LCD_EN,
	output		          		LCD_ON,
	output		          		LCD_RS,
	output		          		LCD_RW,

	//////////// RS232 //////////
	input 		          		UART_CTS,
	output		          		UART_RTS,
	input 		          		UART_RXD,
	output		          		UART_TXD,

	//////////// PS2 for Keyboard and Mouse //////////
	inout 		          		PS2_CLK,
	inout 		          		PS2_CLK2,
	inout 		          		PS2_DAT,
	inout 		          		PS2_DAT2,

	//////////// SDCARD //////////
	output		          		SD_CLK,
	inout 		          		SD_CMD,
	inout 		     [3:0]		SD_DAT,
	input 		          		SD_WP_N,

	//////////// VGA //////////
	output		          		VGA_BLANK_N,
	output		     [7:0]		VGA_B,
	output		          		VGA_CLK,
	output		     [7:0]		VGA_G,
	output		          		VGA_HS,
	output		     [7:0]		VGA_R,
	output		          		VGA_SYNC_N,
	output		          		VGA_VS,

	//////////// Audio //////////
	input 		          		AUD_ADCDAT,
	inout 		          		AUD_ADCLRCK,
	inout 		          		AUD_BCLK,
	output		          		AUD_DACDAT,
	inout 		          		AUD_DACLRCK,
	output		          		AUD_XCK,

	//////////// I2C for EEPROM //////////
	output		          		EEP_I2C_SCLK,
	inout 		          		EEP_I2C_SDAT,

	//////////// I2C for Audio Tv-Decoder  //////////
	output		          		I2C_SCLK,
	inout 		          		I2C_SDAT,

	//////////// Ethernet 0 //////////
	output		          		ENET0_GTX_CLK,
	input 		          		ENET0_INT_N,
	input 		          		ENET0_LINK100,
	output		          		ENET0_MDC,
	inout 		          		ENET0_MDIO,
	output		          		ENET0_RST_N,
	input 		          		ENET0_RX_CLK,
	input 		          		ENET0_RX_COL,
	input 		          		ENET0_RX_CRS,
	input 		     [3:0]		ENET0_RX_DATA,
	input 		          		ENET0_RX_DV,
	input 		          		ENET0_RX_ER,
	input 		          		ENET0_TX_CLK,
	output		     [3:0]		ENET0_TX_DATA,
	output		          		ENET0_TX_EN,
	output		          		ENET0_TX_ER,
	input 		          		ENETCLK_25,

	//////////// Ethernet 1 //////////
	output		          		ENET1_GTX_CLK,
	input 		          		ENET1_INT_N,
	input 		          		ENET1_LINK100,
	output		          		ENET1_MDC,
	inout 		          		ENET1_MDIO,
	output		          		ENET1_RST_N,
	input 		          		ENET1_RX_CLK,
	input 		          		ENET1_RX_COL,
	input 		          		ENET1_RX_CRS,
	input 		     [3:0]		ENET1_RX_DATA,
	input 		          		ENET1_RX_DV,
	input 		          		ENET1_RX_ER,
	input 		          		ENET1_TX_CLK,
	output		     [3:0]		ENET1_TX_DATA,
	output		          		ENET1_TX_EN,
	output		          		ENET1_TX_ER,

	//////////// TV Decoder //////////
	input 		          		TD_CLK27,
	input 		     [7:0]		TD_DATA,
	input 		          		TD_HS,
	output		          		TD_RESET_N,
	input 		          		TD_VS,

	//////////// USB 2.0 OTG (Cypress CY7C67200) //////////
	output		     [1:0]		OTG_ADDR,
	output		          		OTG_CS_N,
	inout 		    [15:0]		OTG_DATA,
	input 		          		OTG_INT,
	output		          		OTG_RD_N,
	output		          		OTG_RST_N,
	output		          		OTG_WE_N,

	//////////// IR Receiver //////////
	input 		          		IRDA_RXD,

	//////////// SDRAM //////////
	output		    [12:0]		DRAM_ADDR,
	output		     [1:0]		DRAM_BA,
	output		          		DRAM_CAS_N,
	output		          		DRAM_CKE,
	output		          		DRAM_CLK,
	output		          		DRAM_CS_N,
	inout 		    [31:0]		DRAM_DQ,
	output		     [3:0]		DRAM_DQM,
	output		          		DRAM_RAS_N,
	output		          		DRAM_WE_N,

	//////////// SRAM //////////
	output		    [19:0]		SRAM_ADDR,
	output		          		SRAM_CE_N,
	inout 		    [15:0]		SRAM_DQ,
	output		          		SRAM_LB_N,
	output		          		SRAM_OE_N,
	output		          		SRAM_UB_N,
	output		          		SRAM_WE_N,

	//////////// Flash //////////
	output		    [22:0]		FL_ADDR,
	output		          		FL_CE_N,
	inout 		     [7:0]		FL_DQ,
	output		          		FL_OE_N,
	output		          		FL_RST_N,
	input 		          		FL_RY,
	output		          		FL_WE_N,
	output		          		FL_WP_N,

	//////////// GPIO, GPIO connect to D8M-GPIO //////////
	inout 		          		CAMERA_I2C_SCL,
	inout 		          		CAMERA_I2C_SDA,
	output		          		CAMERA_PWDN_n,
	output		          		MIPI_CS_n,
	inout 		          		MIPI_I2C_SCL,
	inout 		          		MIPI_I2C_SDA,
	output		          		MIPI_MCLK,
	input 		          		MIPI_PIXEL_CLK,
	input 		     [9:0]		MIPI_PIXEL_D,
	input 		          		MIPI_PIXEL_HS,
	input 		          		MIPI_PIXEL_VS,
	output		          		MIPI_REFCLK,
	output		          		MIPI_RESET_n
);



//=======================================================
//  REG/WIRE declarations
//=======================================================
// VGA TX
wire [23:0]	disp_data;
wire			disp_clk;
wire			disp_hs;
wire			disp_vs;


//=======================================================
//  Structural coding
//=======================================================

assign VGA_CLK						= ~disp_clk;
assign {VGA_R, VGA_G, VGA_B}	= disp_data;
assign VGA_HS						= ~disp_hs;
assign VGA_VS						= ~disp_vs;	
assign VGA_BLANK_N 				= 1'b1;
assign VGA_SYNC_N 				= 1'b0;
assign MIPI_CS_n              = 1'b0;


	
    Qsys u0 (

	 

		  .clk_clk                                      (CLOCK2_50),                                      //                            clk.clk
        .reset_reset_n                                (1'b1),                                //                          reset.reset_n
		  //VGA
		  .vga_clk_clk                                  (disp_clk),                                  //                        vga_clk.clk
        .d8m_xclk_clk                                 (MIPI_REFCLK),                                  //                       d8m_xclk.clk
    
		   
        .key_external_connection_export               (KEY),               //          key_external_connection.export
        .led_external_connection_export               (LEDR[9:0]),               //          led_external_connection.export
        .sw_external_connection_export                (SW),                //           sw_external_connection.export
		  
		  .sdram_wire_addr                              (DRAM_ADDR),                              //                     sdram_wire.addr
        .sdram_wire_ba                                (DRAM_BA),                                //                               .ba
        .sdram_wire_cas_n                             (DRAM_CAS_N),                             //                               .cas_n
        .sdram_wire_cke                               (DRAM_CKE),                               //                               .cke
        .sdram_wire_cs_n                              (DRAM_CS_N),                              //                               .cs_n
        .sdram_wire_dq                                (DRAM_DQ),                                //                               .dq
        .sdram_wire_dqm                               (DRAM_DQM),                               //                               .dqm
        .sdram_wire_ras_n                             (DRAM_RAS_N),                             //                               .ras_n
        .sdram_wire_we_n                              (DRAM_WE_N),                              //                               .we_n
        .sdram_clk_clk                                (DRAM_CLK),                                 //                      sdram_clk.clk

	 
	     .alt_vip_itc_0_clocked_video_vid_clk       (disp_clk),       //      alt_vip_itc_0_clocked_video.vid_clk
        .alt_vip_itc_0_clocked_video_vid_data      (disp_data),      //                                 .vid_data
        .alt_vip_itc_0_clocked_video_underflow     (),     //                                 .underflow
        .alt_vip_itc_0_clocked_video_vid_datavalid (), //                                 .vid_datavalid
        .alt_vip_itc_0_clocked_video_vid_v_sync    (disp_vs),    //                                 .vid_v_sync
        .alt_vip_itc_0_clocked_video_vid_h_sync    (disp_hs),    //                                 .vid_h_sync
        .alt_vip_itc_0_clocked_video_vid_f         (),         //                                 .vid_f
        .alt_vip_itc_0_clocked_video_vid_h         (),         //                                 .vid_h
        .alt_vip_itc_0_clocked_video_vid_v         (),         //                                 .vid_v

		  .terasic_camera_0_conduit_end_D               ({MIPI_PIXEL_D[9:0],2'b00}),               //     terasic_camera_0_conduit_end.D
        .terasic_camera_0_conduit_end_FVAL            (MIPI_PIXEL_VS),            //                                 .FVAL
        .terasic_camera_0_conduit_end_LVAL            (MIPI_PIXEL_HS),            //                                 .LVAL
        .terasic_camera_0_conduit_end_PIXCLK          (~MIPI_PIXEL_CLK),          //                                 .PIXCLK
        
		  .i2c_opencores_camera_export_scl_pad_io       (CAMERA_I2C_SCL),       //      i2c_opencores_camera_export.scl_pad_io
        .i2c_opencores_camera_export_sda_pad_io       (CAMERA_I2C_SDA),       //                                 .sda_pad_io
        
		  .i2c_opencores_mipi_export_scl_pad_io         (MIPI_I2C_SCL),         //        i2c_opencores_mipi_export.scl_pad_io
        .i2c_opencores_mipi_export_sda_pad_io         (MIPI_I2C_SDA),         //                                 .sda_pad_io
        
		  .mipi_pwdn_n_external_connection_export       (CAMERA_PWDN_n),       //  mipi_pwdn_n_external_connection.export
        .mipi_reset_n_external_connection_export      (MIPI_RESET_n),      // mipi_reset_n_external_connection.export
        
		  .terasic_auto_focus_0_conduit_vcm_i2c_scl     (CAMERA_I2C_SCL),     //     terasic_auto_focus_0_conduit.vcm_i2c_scl
        .terasic_auto_focus_0_conduit_vcm_i2c_sda     (CAMERA_I2C_SDA),     //                                 .vcm_i2c_sda
        .terasic_auto_focus_0_conduit_clk50           (CLOCK3_50)            //                                 .clk50
	 );
	 
	 
 FpsMonitor uFps(
	/*input					*/    .clk50(CLOCK_50),
	/*input     			*/    .vs(MIPI_PIXEL_VS),
	
	/*output reg [7:0]		*/    .fps(),
	/*output reg [6:0]		*/    .hex_fps_h(HEX1),
	/*output reg [6:0]		*/    .hex_fps_l(HEX0)
	
);
	 
	 
endmodule
