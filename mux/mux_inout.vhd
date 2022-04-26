LIBRARY IEEE;
use ieee.std_logic_1164.all;


entity MUX IS
port ( I0,I1,I2,I3,I4,I5,I6,I7: in STD_LOGIC;
       S0,S1,S2 : inout STD_LOGIC;
	   A,B,C,D,E,F,G,H: inout STD_LOGIC;
	   O : out STD_LOGIC);
end MUX;

architecture Behavioral of mux is

begin

A<= (not S0) and (not S1) and (not S2) AND I0;
B<= (not S0) and (not S1) and S2 AND I1;
C<= (not S0) and S1 and (not S2) AND I2;
D<= (not S0) and S1 and S2 AND I3;
E<= S0 and (not S1) and (not S2) AND I4;
F<= S0 and (not S1) and S2 AND I5;
G<= S0 and S1 and (not S2) AND I6;
H<= S0 and S1 and S2 AND I7;
O<= A OR B OR C OR D OR E OR F OR G OR H;
end Behavioral;