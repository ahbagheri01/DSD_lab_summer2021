library verilog;
use verilog.vl_types.all;
entity CU is
    generic(
        nb              : integer := 4
    );
    port(
        clk             : in     vl_logic;
        start           : in     vl_logic;
        valid           : out    vl_logic;
        Q               : in     vl_logic_vector;
        load            : out    vl_logic;
        arithmetic      : out    vl_logic;
        shift           : out    vl_logic;
        shmnt           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nb : constant is 1;
end CU;
