library verilog;
use verilog.vl_types.all;
entity eda1_vlg_check_tst is
    port(
        generalans      : in     vl_logic_vector(7 downto 0);
        segout          : in     vl_logic_vector(5 downto 0);
        signout         : in     vl_logic;
        wordout         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end eda1_vlg_check_tst;
