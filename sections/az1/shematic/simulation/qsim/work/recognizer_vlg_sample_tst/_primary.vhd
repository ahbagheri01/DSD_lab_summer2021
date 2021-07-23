library verilog;
use verilog.vl_types.all;
entity recognizer_vlg_sample_tst is
    port(
        firstdigit      : in     vl_logic_vector(3 downto 0);
        forthdigit      : in     vl_logic_vector(3 downto 0);
        seconddigit     : in     vl_logic_vector(3 downto 0);
        thirddigit      : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end recognizer_vlg_sample_tst;
