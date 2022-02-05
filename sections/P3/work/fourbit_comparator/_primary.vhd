library verilog;
use verilog.vl_types.all;
entity fourbit_comparator is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        equal           : out    vl_logic;
        greater         : out    vl_logic;
        less            : out    vl_logic
    );
end fourbit_comparator;
