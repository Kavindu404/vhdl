library verilog;
use verilog.vl_types.all;
entity part6_vlg_sample_tst is
    port(
        SW              : in     vl_logic_vector(17 downto 15);
        sampler_tx      : out    vl_logic
    );
end part6_vlg_sample_tst;
