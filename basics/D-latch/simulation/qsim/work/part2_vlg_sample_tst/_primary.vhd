library verilog;
use verilog.vl_types.all;
entity part2_vlg_sample_tst is
    port(
        Clk             : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end part2_vlg_sample_tst;
