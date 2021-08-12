library verilog;
use verilog.vl_types.all;
entity six is
    port(
        num             : in     vl_logic_vector(3 downto 0);
        le              : out    vl_logic_vector(6 downto 0)
    );
end six;
