library verilog;
use verilog.vl_types.all;
entity eda2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        out1            : in     vl_logic;
        out2            : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end eda2_vlg_sample_tst;
