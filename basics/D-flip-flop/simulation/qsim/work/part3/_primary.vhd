library verilog;
use verilog.vl_types.all;
entity part3 is
    port(
        ClkD            : in     vl_logic;
        D               : in     vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic
    );
end part3;
