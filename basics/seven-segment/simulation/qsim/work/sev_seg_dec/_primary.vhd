library verilog;
use verilog.vl_types.all;
entity sev_seg_dec is
    port(
        C               : in     vl_logic_vector(2 downto 0);
        HEX0            : out    vl_logic_vector(0 to 6)
    );
end sev_seg_dec;
