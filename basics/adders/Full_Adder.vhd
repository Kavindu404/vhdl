library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
	Port (
		X, Y, Z : in BIT;
		Sh, Ch : out BIT
	);
end Full_Adder;

architecture Dataflow_FA of Full_Adder is

component Half_Adder
	Port(
		A, B : in BIT;
		Sum, Carry : out BIT
	);
end component;

signal S1, C1, aux : BIT;

begin
	HA1: Half_Adder port map(A=>X, B=>Y, Sum=>S1, Carry=>C1);
	HA2: Half_Adder port map(A=>S1, B=>Z, Sum=>Sh, Carry=>aux);
	Ch <= aux or C1;
end Dataflow_FA;
	


