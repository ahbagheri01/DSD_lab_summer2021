library verilog;
use verilog.vl_types.all;
entity JK_reset_ff_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLRN            : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        PRN             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end JK_reset_ff_vlg_sample_tst;
