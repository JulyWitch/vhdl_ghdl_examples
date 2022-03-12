LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Demux1x32 IS
    PORT (
        x : IN STD_LOGIC;
        sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END Demux1x32;

ARCHITECTURE rtl OF Demux1x32 IS

BEGIN

    y(0) <= x when (sel = "00000") else '0';
    y(1) <= x when (sel = "00001") else '0';
    y(2) <= x when (sel = "00010") else '0';
    y(3) <= x when (sel = "00011") else '0';
    y(4) <= x when (sel = "00100") else '0';
    y(5) <= x when (sel = "00101") else '0';
    y(6) <= x when (sel = "00110") else '0';
    y(7) <= x when (sel = "00111") else '0';
    y(8) <= x when (sel = "01000") else '0';
    y(9) <= x when (sel = "01001") else '0';
    y(10) <= x when (sel = "01010") else '0';
    y(11) <= x when (sel = "01011") else '0';
    y(12) <= x when (sel = "01100") else '0';
    y(13) <= x when (sel = "01101") else '0';
    y(14) <= x when (sel = "01110") else '0';
    y(15) <= x when (sel = "01111") else '0';
    y(16) <= x when (sel = "10000") else '0';
    y(17) <= x when (sel = "10001") else '0';
    y(18) <= x when (sel = "10010") else '0';
    y(19) <= x when (sel = "10011") else '0';
    y(20) <= x when (sel = "10100") else '0';
    y(21) <= x when (sel = "10101") else '0';
    y(22) <= x when (sel = "10110") else '0';
    y(23) <= x when (sel = "10111") else '0';
    y(24) <= x when (sel = "11000") else '0';
    y(25) <= x when (sel = "11001") else '0';
    y(26) <= x when (sel = "11010") else '0';
    y(27) <= x when (sel = "11011") else '0';
    y(28) <= x when (sel = "11100") else '0';
    y(29) <= x when (sel = "11101") else '0';
    y(30) <= x when (sel = "11110") else '0';
    y(31) <= x when (sel = "11111") else '0';
    

END ARCHITECTURE;