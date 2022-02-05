library verilog;
use verilog.vl_types.all;
entity DataPath is
    generic(
        nb              : integer := 4
    );
    port(
        clk             : in     vl_logic;
        M_in            : in     vl_logic_vector;
        Q_in            : in     vl_logic_vector;
        A               : out    vl_logic_vector;
        Q               : out    vl_logic_vector;
        load            : in     vl_logic;
        arithmetic      : in     vl_logic;
        shift           : in     vl_logic;
        shmnt           : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nb : constant is 1;
end DataPath;
