LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY dec3x8_sel IS
      PORT (
            input : IN STD_LOGIC_VECTOR(2 DOWNTO 0); --3 bit input
            output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- 8 bit ouput
      );
END dec3x8_sel;
ARCHITECTURE Behavioral OF dec3x8_sel IS

BEGIN

      WITH input SELECT
            output <=
            TRANSPORT "00000001" AFTER 50 ns WHEN "000",
            "00000010" AFTER 50 ns WHEN "001",
            "00000100" WHEN "010",
            "00001000" WHEN "011",
            "00010000" WHEN "100",
            "00100000" WHEN "101",
            "01000000" WHEN "110",
            "10000000" WHEN "111",
            "00000000" WHEN OTHERS;
END Behavioral;