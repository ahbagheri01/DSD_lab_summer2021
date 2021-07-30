library verilog;
use verilog.vl_types.all;
entity waiting_room is
    port(
        Q0              : out    vl_logic;
        ent             : in     vl_logic;
        \open\          : in     vl_logic;
        T               : in     vl_logic;
        \out\           : in     vl_logic;
        reset           : in     vl_logic;
        CLK             : in     vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        Close           : out    vl_logic;
        up              : out    vl_logic;
        enable          : out    vl_logic;
        open_door       : out    vl_logic;
        num             : out    vl_logic_vector(3 downto 0)
    );
end waiting_room;
