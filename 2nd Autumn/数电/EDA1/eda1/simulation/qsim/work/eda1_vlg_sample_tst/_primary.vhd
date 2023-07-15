library verilog;
use verilog.vl_types.all;
entity eda1_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        operator        : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end eda1_vlg_sample_tst;
