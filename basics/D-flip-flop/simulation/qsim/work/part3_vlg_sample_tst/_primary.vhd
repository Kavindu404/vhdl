library verilog;
use verilog.vl_types.all;
entity part3_vlg_sample_tst is
    port(
        ClkD            : in     vl_logic;
        D               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end part3_vlg_sample_tst;
