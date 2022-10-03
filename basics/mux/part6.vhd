LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

entity part6 IS 
	port ( SW : IN STD_LOGIC_VECTOR(17 DOWNTO 15); 
		    HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6); 
			 HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
			 HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6);
			 HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6);
			 HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
			 HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6);
			 HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6);
			 HEX7 : OUT STD_LOGIC_VECTOR(0 TO 6));
end part6; 

ARCHITECTURE Behavior OF part6 IS 

	COMPONENT mux_5_1 
		PORT ( S, U, V, W, X, Y : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
				 M : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)); 
	END COMPONENT; 
	
	COMPONENT sev_seg_dec 
		PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
		       Display : OUT STD_LOGIC_VECTOR(0 TO 6)); 
	END COMPONENT; 
	
	SIGNAL S0, S1, S2, S3, S4, S5, S6, S7 : STD_LOGIC_VECTOR(2 DOWNTO 0);  
	SIGNAL M0, M1, M2, M3, M4, M5, M6, M7 : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN 

	MUX0: mux_5_1 PORT MAP (S=>S0, U=>"000", V=>"001", W=>"010", X=>"011", Y=>"100", M=>M0);
	H0: sev_seg_dec PORT MAP (M0, HEX0); 
	
	MUX1: mux_5_1 PORT MAP (S=>S1, U=>"000", V=>"001", W=>"010", X=>"011", Y=>"100", M=>M1);
	H1: sev_seg_dec PORT MAP (M1, HEX1); 

	MUX2: mux_5_1 PORT MAP (S=>S2, U=>"000", V=>"001", W=>"010", X=>"011", Y=>"100", M=>M2);
	H2: sev_seg_dec PORT MAP (M2, HEX2); 

	MUX3: mux_5_1 PORT MAP (S=>S3, U=>"000", V=>"001", W=>"010", X=>"011", Y=>"100", M=>M3);
	H3: sev_seg_dec PORT MAP (M3, HEX3); 

	MUX4: mux_5_1 PORT MAP (S=>S4, U=>"000", V=>"001", W=>"010", X=>"011", Y=>"100", M=>M4);
	H4: sev_seg_dec PORT MAP (M4, HEX4); 	
	
	MUX5: mux_5_1 PORT MAP (S=>S5, U=>"000", V=>"001", W=>"010", X=>"011", Y=>"100", M=>M5);
	H5: sev_seg_dec PORT MAP (M5, HEX5);
	
	MUX6: mux_5_1 PORT MAP (S=>S6, U=>"000", V=>"001", W=>"010", X=>"011", Y=>"100", M=>M6);
	H6: sev_seg_dec PORT MAP (M6, HEX6);
	
	MUX7: mux_5_1 PORT MAP (S=>S7, U=>"000", V=>"001", W=>"010", X=>"011", Y=>"100", M=>M7);
	H7: sev_seg_dec PORT MAP (M7, HEX7);
	
	proc1: process(SW) is
	begin
	
		if(SW="000") then
			S0<="110";--blank
			S1<="110";--blank
			S2<="110";--blank
			S3<="000";
			S4<="001";
			S5<="010";
			S6<="010";
			S7<="011";
		elsif(SW="001") then
			S0<="110";--blank
			S1<="110";--blank
			S2<="001";
			S3<="010";
			S4<="010";
			S5<="011";
			S6<="000";
			S7<="110";--blank
		elsif(SW="010") then
			S0<="110";--blank
			S1<="010";
			S2<="010";
			S3<="011";
			S4<="000";
			S5<="001";
			S6<="110";--blank
			S7<="110";--blank
		elsif(SW="011") then
			S0<="010";
			S1<="011";
			S2<="000";
			S3<="001";
			S4<="010";
			S5<="110";--blank
			S6<="110";--blank
			S7<="110";--blank
		elsif(SW="100") then
			S0<="011";
			S1<="000";
			S2<="001";
			S3<="010";
			S4<="110";--blank
			S5<="110";--blank
			S6<="110";--blank
			S7<="010";
		elsif(SW="101") then
			S6<="011";
			S7<="000";
			S0<="001";
			S1<="010";
			S2<="010";
			S3<="110";--blank
			S4<="110";--blank
			S5<="110";--blank
		elsif(SW="110") then
			S5<="011";
			S6<="000";
			S7<="001";
			S0<="010";
			S1<="010";
			S2<="110";--blank
			S3<="110";--blank
			S4<="110";--blank
		elsif(SW="111") then
			S4<="011";
			S5<="000";
			S6<="001";
			S7<="010";
			S0<="010";
			S1<="110";--blank
			S2<="110";--blank
			S3<="110";--blank
		end if;
		
	end process proc1;	
	
END Behavior;