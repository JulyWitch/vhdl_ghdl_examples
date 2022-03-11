library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder3x8_with_else is
port(x:in STD_LOGIC_VECTOR(2 downto 0);
     y:out STD_LOGIC_VECTOR(7 downto 0));

end decoder3x8_with_else;

architecture behavioral of decoder3x8_with_else is
begin
  y  <=        "00000001" when (x="000") else
               "00000010" when (x="001") else
               "00000100" when (x="010") else
               "00001000" when (x="011") else
               "00010000" when (x="100") else
               "00100000" when (x="101") else
               "01000000" when (x="110") else
               "10000000" when (x="111") else
               "00000000";
end architecture;
