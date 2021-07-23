library verilog;
use verilog.vl_types.all;
entity mode is
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        \in1_\          : in     vl_logic_vector(3 downto 0);
        \in2_\          : in     vl_logic_vector(3 downto 0)
    );
end mode;
