library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        Q0              : out    vl_logic;
        num             : out    vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        CLK             : in     vl_logic;
        up              : in     vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic
    );
end counter;
