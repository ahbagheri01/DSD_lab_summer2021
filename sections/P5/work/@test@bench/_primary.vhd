library verilog;
use verilog.vl_types.all;
entity TestBench is
    generic(
        nb              : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nb : constant is 1;
end TestBench;
