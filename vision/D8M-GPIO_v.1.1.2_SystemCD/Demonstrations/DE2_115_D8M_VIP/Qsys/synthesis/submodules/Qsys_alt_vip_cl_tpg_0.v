// Qsys_alt_vip_cl_tpg_0.v

// This file was auto-generated from alt_vip_cl_tpg_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 15.0 145

`timescale 1 ps / 1 ps
module Qsys_alt_vip_cl_tpg_0 #(
		parameter BPS                          = 8,
		parameter PIXELS_IN_PARALLEL           = 1,
		parameter MAX_WIDTH                    = 640,
		parameter MAX_HEIGHT                   = 480,
		parameter OUTPUT_FORMAT                = "4.4.4",
		parameter COLOR_SPACE                  = "RGB",
		parameter INTERLACING                  = "prog",
		parameter PATTERN                      = "colorbars",
		parameter UNIFORM_VALUE_RY             = 16,
		parameter UNIFORM_VALUE_GCB            = 16,
		parameter UNIFORM_VALUE_BCR            = 16,
		parameter COLOR_PLANES_ARE_IN_PARALLEL = 1,
		parameter RUNTIME_CONTROL              = 0
	) (
		input  wire        main_clock,         // main_clock.clk
		input  wire        main_reset,         // main_reset.reset
		output wire [23:0] dout_data,          //       dout.data
		output wire        dout_valid,         //           .valid
		output wire        dout_startofpacket, //           .startofpacket
		output wire        dout_endofpacket,   //           .endofpacket
		input  wire        dout_ready          //           .ready
	);

	wire         tpg_core_av_st_dout_valid;                   // tpg_core:av_st_dout_valid -> video_out:av_st_din_valid
	wire  [55:0] tpg_core_av_st_dout_data;                    // tpg_core:av_st_dout_data -> video_out:av_st_din_data
	wire         tpg_core_av_st_dout_ready;                   // video_out:av_st_din_ready -> tpg_core:av_st_dout_ready
	wire         tpg_core_av_st_dout_startofpacket;           // tpg_core:av_st_dout_startofpacket -> video_out:av_st_din_startofpacket
	wire         tpg_core_av_st_dout_endofpacket;             // tpg_core:av_st_dout_endofpacket -> video_out:av_st_din_endofpacket
	wire         scheduler_av_st_cmd_core_valid;              // scheduler:av_st_cmd_core_valid -> tpg_core:av_st_cmd_valid
	wire  [63:0] scheduler_av_st_cmd_core_data;               // scheduler:av_st_cmd_core_data -> tpg_core:av_st_cmd_data
	wire         scheduler_av_st_cmd_core_ready;              // tpg_core:av_st_cmd_ready -> scheduler:av_st_cmd_core_ready
	wire         scheduler_av_st_cmd_core_startofpacket;      // scheduler:av_st_cmd_core_startofpacket -> tpg_core:av_st_cmd_startofpacket
	wire         scheduler_av_st_cmd_core_endofpacket;        // scheduler:av_st_cmd_core_endofpacket -> tpg_core:av_st_cmd_endofpacket
	wire         scheduler_av_st_cmd_video_out_valid;         // scheduler:av_st_cmd_video_out_valid -> video_out:av_st_cmd_valid
	wire  [63:0] scheduler_av_st_cmd_video_out_data;          // scheduler:av_st_cmd_video_out_data -> video_out:av_st_cmd_data
	wire         scheduler_av_st_cmd_video_out_ready;         // video_out:av_st_cmd_ready -> scheduler:av_st_cmd_video_out_ready
	wire         scheduler_av_st_cmd_video_out_startofpacket; // scheduler:av_st_cmd_video_out_startofpacket -> video_out:av_st_cmd_startofpacket
	wire         scheduler_av_st_cmd_video_out_endofpacket;   // scheduler:av_st_cmd_video_out_endofpacket -> video_out:av_st_cmd_endofpacket

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (BPS != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					bps_check ( .error(1'b1) );
		end
		if (PIXELS_IN_PARALLEL != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					pixels_in_parallel_check ( .error(1'b1) );
		end
		if (MAX_WIDTH != 640)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					max_width_check ( .error(1'b1) );
		end
		if (MAX_HEIGHT != 480)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					max_height_check ( .error(1'b1) );
		end
		if (OUTPUT_FORMAT != "4.4.4")
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					output_format_check ( .error(1'b1) );
		end
		if (COLOR_SPACE != "RGB")
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					color_space_check ( .error(1'b1) );
		end
		if (INTERLACING != "prog")
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					interlacing_check ( .error(1'b1) );
		end
		if (PATTERN != "colorbars")
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					pattern_check ( .error(1'b1) );
		end
		if (UNIFORM_VALUE_RY != 16)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					uniform_value_ry_check ( .error(1'b1) );
		end
		if (UNIFORM_VALUE_GCB != 16)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					uniform_value_gcb_check ( .error(1'b1) );
		end
		if (UNIFORM_VALUE_BCR != 16)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					uniform_value_bcr_check ( .error(1'b1) );
		end
		if (COLOR_PLANES_ARE_IN_PARALLEL != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					color_planes_are_in_parallel_check ( .error(1'b1) );
		end
		if (RUNTIME_CONTROL != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					runtime_control_check ( .error(1'b1) );
		end
	endgenerate

	alt_vip_tpg_core #(
		.DATA_SRC_ADDRESS             (0),
		.SRC_WIDTH                    (8),
		.DST_WIDTH                    (8),
		.CONTEXT_WIDTH                (8),
		.TASK_WIDTH                   (8),
		.MAX_WIDTH                    (640),
		.MAX_HEIGHT                   (480),
		.BPS                          (8),
		.PIXELS_IN_PARALLEL           (1),
		.OUTPUT_FORMAT                ("4.4.4"),
		.COLOR_SPACE                  ("RGB"),
		.INTERLACING                  ("prog"),
		.PATTERN                      ("colorbars"),
		.UNIFORM_VALUE_RY             (16),
		.UNIFORM_VALUE_GCB            (16),
		.UNIFORM_VALUE_BCR            (16),
		.USE_BACKGROUND_AS_BORDER     (0),
		.COLOR_PLANES_ARE_IN_PARALLEL (1)
	) tpg_core (
		.clock                    (main_clock),                             // main_clock.clk
		.reset                    (main_reset),                             // main_reset.reset
		.av_st_cmd_valid          (scheduler_av_st_cmd_core_valid),         //  av_st_cmd.valid
		.av_st_cmd_startofpacket  (scheduler_av_st_cmd_core_startofpacket), //           .startofpacket
		.av_st_cmd_endofpacket    (scheduler_av_st_cmd_core_endofpacket),   //           .endofpacket
		.av_st_cmd_data           (scheduler_av_st_cmd_core_data),          //           .data
		.av_st_cmd_ready          (scheduler_av_st_cmd_core_ready),         //           .ready
		.av_st_dout_valid         (tpg_core_av_st_dout_valid),              // av_st_dout.valid
		.av_st_dout_startofpacket (tpg_core_av_st_dout_startofpacket),      //           .startofpacket
		.av_st_dout_endofpacket   (tpg_core_av_st_dout_endofpacket),        //           .endofpacket
		.av_st_dout_data          (tpg_core_av_st_dout_data),               //           .data
		.av_st_dout_ready         (tpg_core_av_st_dout_ready)               //           .ready
	);

	alt_vip_video_output_bridge #(
		.BITS_PER_SYMBOL              (8),
		.NUMBER_OF_COLOR_PLANES       (3),
		.COLOR_PLANES_ARE_IN_PARALLEL (1),
		.PIXELS_IN_PARALLEL           (1),
		.VIDEO_PROTOCOL_NO            (1),
		.SRC_WIDTH                    (8),
		.DST_WIDTH                    (8),
		.CONTEXT_WIDTH                (8),
		.TASK_WIDTH                   (8),
		.LOW_LATENCY_COMMAND_MODE     (0)
	) video_out (
		.clock                        (main_clock),                                  //     main_clock.clk
		.reset                        (main_reset),                                  //     main_reset.reset
		.av_st_cmd_valid              (scheduler_av_st_cmd_video_out_valid),         //      av_st_cmd.valid
		.av_st_cmd_startofpacket      (scheduler_av_st_cmd_video_out_startofpacket), //               .startofpacket
		.av_st_cmd_endofpacket        (scheduler_av_st_cmd_video_out_endofpacket),   //               .endofpacket
		.av_st_cmd_data               (scheduler_av_st_cmd_video_out_data),          //               .data
		.av_st_cmd_ready              (scheduler_av_st_cmd_video_out_ready),         //               .ready
		.av_st_din_valid              (tpg_core_av_st_dout_valid),                   //      av_st_din.valid
		.av_st_din_startofpacket      (tpg_core_av_st_dout_startofpacket),           //               .startofpacket
		.av_st_din_endofpacket        (tpg_core_av_st_dout_endofpacket),             //               .endofpacket
		.av_st_din_data               (tpg_core_av_st_dout_data),                    //               .data
		.av_st_din_ready              (tpg_core_av_st_dout_ready),                   //               .ready
		.av_st_vid_dout_data          (dout_data),                                   // av_st_vid_dout.data
		.av_st_vid_dout_valid         (dout_valid),                                  //               .valid
		.av_st_vid_dout_startofpacket (dout_startofpacket),                          //               .startofpacket
		.av_st_vid_dout_endofpacket   (dout_endofpacket),                            //               .endofpacket
		.av_st_vid_dout_ready         (dout_ready)                                   //               .ready
	);

	alt_vip_tpg_scheduler #(
		.SRC_WIDTH                    (8),
		.DST_WIDTH                    (8),
		.CONTEXT_WIDTH                (8),
		.TASK_WIDTH                   (8),
		.BPS                          (8),
		.PIXELS_IN_PARALLEL           (1),
		.MAX_WIDTH                    (640),
		.MAX_HEIGHT                   (480),
		.COLOR_PLANES_ARE_IN_PARALLEL (1),
		.RUNTIME_CONTROL              (0),
		.INTERLACING                  ("prog"),
		.OUTPUT_FORMAT                ("4.4.4"),
		.UNIFORM_VALUE_RY             (16),
		.UNIFORM_VALUE_GCB            (16),
		.UNIFORM_VALUE_BCR            (16),
		.PATTERN                      ("colorbars")
	) scheduler (
		.clock                             (main_clock),                                  //          main_clock.clk
		.reset                             (main_reset),                                  //          main_reset.reset
		.av_st_cmd_core_valid              (scheduler_av_st_cmd_core_valid),              //      av_st_cmd_core.valid
		.av_st_cmd_core_startofpacket      (scheduler_av_st_cmd_core_startofpacket),      //                    .startofpacket
		.av_st_cmd_core_endofpacket        (scheduler_av_st_cmd_core_endofpacket),        //                    .endofpacket
		.av_st_cmd_core_data               (scheduler_av_st_cmd_core_data),               //                    .data
		.av_st_cmd_core_ready              (scheduler_av_st_cmd_core_ready),              //                    .ready
		.av_st_cmd_video_out_valid         (scheduler_av_st_cmd_video_out_valid),         // av_st_cmd_video_out.valid
		.av_st_cmd_video_out_startofpacket (scheduler_av_st_cmd_video_out_startofpacket), //                    .startofpacket
		.av_st_cmd_video_out_endofpacket   (scheduler_av_st_cmd_video_out_endofpacket),   //                    .endofpacket
		.av_st_cmd_video_out_data          (scheduler_av_st_cmd_video_out_data),          //                    .data
		.av_st_cmd_video_out_ready         (scheduler_av_st_cmd_video_out_ready)          //                    .ready
	);

endmodule