library verilog;
use verilog.vl_types.all;
entity mode_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end mode_vlg_check_tst;
