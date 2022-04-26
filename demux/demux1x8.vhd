LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Demux1x8 IS
    PORT (
        x : IN STD_LOGIC;
        sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END Demux1x8;

ARCHITECTURE rtl OF Demux1x8 IS

BEGIN
    WITH sel SELECT
        y(0) <= transport x after 20 ns WHEN "000" ,
        '0' WHEN OTHERS ;

    WITH sel SELECT
        y(1) <= x after 20 ns WHEN "001",
        '0' WHEN OTHERS;

    WITH sel SELECT
        y(2) <= x WHEN "010",
        '0' WHEN OTHERS;

    WITH sel SELECT
        y(3) <= x WHEN "011",
        '0' WHEN OTHERS;

    WITH sel SELECT
        y(4) <= x WHEN "100",
        '0' WHEN OTHERS;
        
    WITH sel SELECT
        y(5) <= x WHEN "101",
        '0' WHEN OTHERS;

    WITH sel SELECT
        y(6) <= x WHEN "110",
        '0' WHEN OTHERS;

    WITH sel SELECT
        y(7) <= x WHEN "111",
        '0' WHEN OTHERS;
END ARCHITECTURE;