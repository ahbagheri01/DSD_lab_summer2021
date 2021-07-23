library verilog;
use verilog.vl_types.all;
entity recognizer is
    port(
        mode3           : out    vl_logic;
        firstdigit      : in     vl_logic_vector(3 downto 0);
        forthdigit      : in     vl_logic_vector(3 downto 0);
        seconddigit     : in     vl_logic_vector(3 downto 0);
        thirddigit      : in     vl_logic_vector(3 downto 0);
        mode11          : out    vl_logic
    );
end recognizer;
