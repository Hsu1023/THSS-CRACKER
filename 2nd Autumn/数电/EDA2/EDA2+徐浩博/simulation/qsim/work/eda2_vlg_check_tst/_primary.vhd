library verilog;
use verilog.vl_types.all;
entity eda2_vlg_check_tst is
    port(
        clear           : in     vl_logic;
        error           : in     vl_logic;
        segout          : in     vl_logic_vector(5 downto 0);
        success         : in     vl_logic;
        sum             : in     vl_logic_vector(9 downto 0);
        wordout         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end eda2_vlg_check_tst;
