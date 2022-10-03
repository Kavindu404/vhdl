LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

ENTITY part3 IS
PORT ( ClkD,D : IN STD_LOGIC; 
		Q1, Q2 : OUT STD_LOGIC);
END part3;

Architecture Structural of part3 is

component D_FP
	PORT ( Clk,S : IN STD_LOGIC; 
			Q : OUT STD_LOGIC);
end component;

signal Qm, Qs : STD_LOGIC ; 
ATTRIBUTE keep : boolean; 
ATTRIBUTE keep of Qm, Qs : SIGNAL IS true; 

BEGIN

	D1: D_FP	port map(S => D, Clk => NOT(ClkD), Q=>Qm);
	D2: D_FP port map(S => Qm, Clk => ClkD, Q=>Qs );
	
	Q1 <= Qs;
	Q2 <= NOT Qs;
END Structural;




