LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux8x1_sel IS
    PORT (
        sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        y : OUT STD_LOGIC
    );

END mux8x1_sel;

ARCHITECTURE behavioral OF mux8x1_sel IS
BEGIN
    WITH sel SELECT
        y <= TRANSPORT x(0) AFTER 50 ns WHEN "000",
        x(1) AFTER 50 ns WHEN "001",
        x(2) WHEN "010",
        x(3) WHEN "011",
        x(4) WHEN "100",
        x(5) WHEN "101",
        x(6) WHEN "110",
        x(7) WHEN "111",
        'X' WHEN OTHERS;

END ARCHITECTURE;