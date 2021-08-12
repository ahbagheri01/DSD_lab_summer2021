library verilog;
use verilog.vl_types.all;
entity serial_comparator_tb is
    generic(
        num_tests       : integer := 30
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of num_tests : constant is 1;
end serial_comparator_tb;
