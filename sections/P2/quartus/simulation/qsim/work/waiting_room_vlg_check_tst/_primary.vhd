library verilog;
use verilog.vl_types.all;
entity waiting_room_vlg_check_tst is
    port(
        Close           : in     vl_logic;
        enable          : in     vl_logic;
        num             : in     vl_logic_vector(3 downto 0);
        open_door       : in     vl_logic;
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        Q3              : in     vl_logic;
        up              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end waiting_room_vlg_check_tst;
