// Example instance of the top level module for: 
//     rgb_to_v
// To include this component in your design, include: 
//     rgb_to_v.qsys
// in your Quartus project and follow the template 
// below to instantiate the IP.  Alternatively, the IP core 
// can be generated from a Qsys system.

rgb_to_v rgb_to_v_inst (
  // Interface: clock (clock end)
  .clock     ( ), // 1-bit clk input
  // Interface: reset (reset end)
  .resetn    ( ), // 1-bit reset_n input
  // Interface: returndata (conduit source)
  .returndata( ), // 56-bit data output
  // Interface: red (conduit sink)
  .red       ( ), // 8-bit data input
  // Interface: green (conduit sink)
  .green     ( ), // 8-bit data input
  // Interface: blue (conduit sink)
  .blue      ( )  // 8-bit data input
);
