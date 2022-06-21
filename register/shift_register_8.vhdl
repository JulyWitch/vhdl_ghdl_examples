LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;

ENTITY ShiftRegister8 IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dout0, dount1, dout2, dout3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ShiftRegister8;

