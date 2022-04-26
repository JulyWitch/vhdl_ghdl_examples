LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY enc8x3_sel IS
    PORT (
        x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        y : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));

END enc8x3_sel;

ARCHITECTURE rtl OF enc8x3_sel IS

BEGIN
    WITH x SELECT
        y <= TRANSPORT "000" AFTER 10 ns WHEN "00000001",
        "001" AFTER 10 ns WHEN "00000010",
        "010" WHEN "00000100",
        "011" WHEN "00001000",
        "100" WHEN "00010000",
        "101" WHEN "00100000",
        "110" WHEN "01000000",
        "111" WHEN "10000000",
        "000" WHEN OTHERS;
END ARCHITECTURE;