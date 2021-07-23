library verilog;
use verilog.vl_types.all;
entity mode_vlg_sample_tst is
    port(
        \in1_\          : in     vl_logic_vector(3 downto 0);
        \in2_\          : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end mode_vlg_sample_tst;
