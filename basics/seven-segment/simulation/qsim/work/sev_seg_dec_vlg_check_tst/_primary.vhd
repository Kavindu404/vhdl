library verilog;
use verilog.vl_types.all;
entity sev_seg_dec_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end sev_seg_dec_vlg_check_tst;
