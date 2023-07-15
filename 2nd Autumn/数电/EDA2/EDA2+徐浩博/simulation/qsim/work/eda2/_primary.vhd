library verilog;
use verilog.vl_types.all;
entity eda2 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        out1            : in     vl_logic;
        out2            : in     vl_logic;
        error           : out    vl_logic;
        success         : out    vl_logic;
        clear           : out    vl_logic;
        wordout         : out    vl_logic_vector(6 downto 0);
        segout          : out    vl_logic_vector(5 downto 0);
        sum             : out    vl_logic_vector(9 downto 0)
    );
end eda2;
