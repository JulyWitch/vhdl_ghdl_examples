LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux8x1_concurrent IS
    PORT (
        sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        y : OUT STD_LOGIC
    );

END mux8x1_concurrent;

ARCHITECTURE behavioral OF mux8x1_concurrent IS
BEGIN
    y <=
        (x(0) AND (NOT sel(0)) AND (NOT sel(1)) AND (NOT sel(2))) OR
        (x(1) AND (NOT sel(0)) AND (NOT sel(1)) AND sel(2)) OR
        (x(2) AND (NOT sel(0)) AND sel(1) AND (NOT sel(2))) OR
        (x(3) AND (NOT sel(0)) AND sel(1) AND sel(2)) OR
        (x(4) AND sel(0) AND (NOT sel(1)) AND (NOT sel(2))) OR
        (x(5) AND sel(0) AND (NOT sel(1)) AND sel(2)) OR
        (x(6) AND sel(0) AND sel(1) AND (NOT sel(2))) OR
        (x(7) AND sel(0) AND sel(1) AND sel(2));

END ARCHITECTURE;