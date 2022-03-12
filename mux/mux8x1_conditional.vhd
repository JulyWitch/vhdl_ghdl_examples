LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux8x1_conditional IS
    PORT (
        sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        y : OUT STD_LOGIC
    );

END mux8x1_conditional;

ARCHITECTURE behavioral OF mux8x1_conditional IS
BEGIN
    y <=
        x(0) WHEN (sel = "000") ELSE
        x(1) WHEN (sel = "001") ELSE
        x(2) WHEN (sel = "010") ELSE
        x(3) WHEN (sel = "011") ELSE
        x(4) WHEN (sel = "100") ELSE
        x(5) WHEN (sel = "101") ELSE
        x(6) WHEN (sel = "110") ELSE
        x(7) WHEN (sel = "111") ELSE
        'X';
END ARCHITECTURE;