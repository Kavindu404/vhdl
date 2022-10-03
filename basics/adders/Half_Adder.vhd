library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is

	Port(
	
		A, B : in BIT;
		Sum, Carry : out BIT
	);
end Half_Adder;

architecture Dataflow_HA of Half_Adder is 
	begin
		Sum <= A xor B;
		Carry <= A and B;																									
	end Dataflow_HA;