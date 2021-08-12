library verilog;
use verilog.vl_types.all;
entity stack is
    generic(
        WordSize        : integer := 4;
        AddressSize     : integer := 3
    );
    port(
        Data_Out        : out    vl_logic_vector(3 downto 0);
        Full            : out    vl_logic;
        Empty           : out    vl_logic;
        Error           : out    vl_logic;
        Clk             : in     vl_logic;
        RstN            : in     vl_logic;
        Data_In         : in     vl_logic_vector(3 downto 0);
        push            : in     vl_logic;
        pop             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WordSize : constant is 1;
    attribute mti_svvh_generic_type of AddressSize : constant is 1;
end stack;
