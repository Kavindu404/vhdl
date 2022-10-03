library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Adder is
	Port(
	A0,A1,A2,A3,B0,B1,B2,B3,CIN : in BIT;
	S0,S1,S2,S3,C4 : out BIT
	);
end Ripple_Adder;
	
architecture Dataflow_RCA of Ripple_Adder is

component Full_Adder
	Port (
		X, Y, Z : in BIT;
		Sh, Ch : out BIT
	);
end component;

signal C1,C2,C3 : BIT;

begin
	FA1: Full_Adder port map(X=>A0, Y=>B0, Z=>CIN, Sh=>S0, Ch=>C1);
	FA2: Full_Adder port map(X=>A1, Y=>B1, Z=>C1, Sh=>S1, Ch=>C2);
	FA3: Full_Adder port map(X=>A2, Y=>B2, Z=>C2, Sh=>S2, Ch=>C3);
	FA4: Full_Adder port map(X=>A3, Y=>B3, Z=>C3, Sh=>S3, Ch=>C4);
end Dataflow_RCA;



