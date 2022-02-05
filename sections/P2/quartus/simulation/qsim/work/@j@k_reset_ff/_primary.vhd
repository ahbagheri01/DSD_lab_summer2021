library verilog;
use verilog.vl_types.all;
entity JK_reset_ff is
    port(
        Q               : out    vl_logic;
        CLRN            : in     vl_logic;
        CLK             : in     vl_logic;
        K               : in     vl_logic;
        J               : in     vl_logic;
        PRN             : in     vl_logic
    );
end JK_reset_ff;
