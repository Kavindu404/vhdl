library verilog;
use verilog.vl_types.all;
entity sev_seg_dec_vlg_sample_tst is
    port(
        C               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end sev_seg_dec_vlg_sample_tst;
