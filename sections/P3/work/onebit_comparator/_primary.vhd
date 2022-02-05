library verilog;
use verilog.vl_types.all;
entity onebit_comparator is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        equal           : out    vl_logic;
        greater         : out    vl_logic;
        less            : out    vl_logic
    );
end onebit_comparator;
