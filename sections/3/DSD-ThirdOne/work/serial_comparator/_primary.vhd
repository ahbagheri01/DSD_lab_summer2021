library verilog;
use verilog.vl_types.all;
entity serial_comparator is
    port(
        x_in            : in     vl_logic;
        y_in            : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        E               : out    vl_logic;
        L               : out    vl_logic;
        G               : out    vl_logic
    );
end serial_comparator;
