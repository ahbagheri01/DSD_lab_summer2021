library verilog;
use verilog.vl_types.all;
entity counter_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        up              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_vlg_sample_tst;
