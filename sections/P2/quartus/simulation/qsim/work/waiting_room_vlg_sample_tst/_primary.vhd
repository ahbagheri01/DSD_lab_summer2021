library verilog;
use verilog.vl_types.all;
entity waiting_room_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        ent             : in     vl_logic;
        \open\          : in     vl_logic;
        \out\           : in     vl_logic;
        reset           : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end waiting_room_vlg_sample_tst;
