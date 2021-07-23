library verilog;
use verilog.vl_types.all;
entity mode11_module is
    port(
        mode11_res      : out    vl_logic;
        firstdigit      : in     vl_logic_vector(3 downto 0);
        thirddigit      : in     vl_logic_vector(3 downto 0);
        seconddigit     : in     vl_logic_vector(3 downto 0);
        forthdigit      : in     vl_logic_vector(3 downto 0)
    );
end mode11_module;
