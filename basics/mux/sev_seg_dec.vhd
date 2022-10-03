LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

ENTITY sev_seg_dec IS 
PORT ( C : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
		 Display : OUT STD_LOGIC_VECTOR(0 TO 6));

END sev_seg_dec; 

ARCHITECTURE Behavior OF sev_seg_dec IS 
BEGIN 
	proc1: process(C) is
	begin
		if(C = "000") then
			Display<="0110110";
		elsif(C = "001") then
			Display<="1001110";
		elsif(C = "010") then
			Display<="0001110";
		elsif(C <= "011") then
			Display<="1111110";
		else
			Display<="0000000";
		end if;
	end process proc1;	
	
END Behavior;