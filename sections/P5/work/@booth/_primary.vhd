library verilog;
use verilog.vl_types.all;
entity Booth is
    generic(
        nb              : integer := 4
    );
    port(
        clk             : in     vl_logic;
        start           : in     vl_logic;
        M               : in     vl_logic_vector;
        Q               : in     vl_logic_vector;
        valid           : out    vl_logic;
        O               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nb : constant is 1;
end Booth;
