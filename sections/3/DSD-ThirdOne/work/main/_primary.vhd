library verilog;
use verilog.vl_types.all;
entity main is
    port(
        num             : in     vl_logic_vector(3 downto 0);
        le1             : out    vl_logic_vector(6 downto 0);
        le0             : out    vl_logic_vector(6 downto 0)
    );
end main;
