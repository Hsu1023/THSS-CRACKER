library verilog;
use verilog.vl_types.all;
entity eda1 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        operator        : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        wordout         : out    vl_logic_vector(6 downto 0);
        segout          : out    vl_logic_vector(5 downto 0);
        generalans      : out    vl_logic_vector(7 downto 0);
        signout         : out    vl_logic
    );
end eda1;
