LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
ENTITY D_FP IS 
PORT ( Clk,S : IN STD_LOGIC; 
Q : OUT STD_LOGIC); 
END D_FP; 
ARCHITECTURE Structural OF D_FP IS 
SIGNAL R, R_g, S_g, Qa, Qb : STD_LOGIC ; 
ATTRIBUTE keep : boolean; 
ATTRIBUTE keep of R, R_g, S_g, Qa, Qb : SIGNAL IS true; 
BEGIN 
R <= NOT S;
S_g <= S NAND Clk;
R_g <= R NAND Clk;
Qa  <= S_g NAND Qb;
Qb  <= R_g NAND Qa;

Q <= Qa;

End Structural;

 