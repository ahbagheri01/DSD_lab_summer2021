library verilog;
use verilog.vl_types.all;
entity counter_vlg_check_tst is
    port(
        num             : in     vl_logic_vector(3 downto 0);
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        Q3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end counter_vlg_check_tst;
