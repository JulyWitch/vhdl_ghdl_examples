LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--this is how entity for your test bench code has to be declared.
ENTITY dec3x8_sel_test IS
END dec3x8_sel_test;

ARCHITECTURE behavior OF dec3x8_sel_test IS
    --signal declarations.
    SIGNAL input : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL output : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

BEGIN
    --entity instantiation
    UUT : ENTITY work.dec3x8_sel PORT MAP(input, output);

    --definition of simulation process
    tb : PROCESS
    BEGIN
        input <= "000"; --input = 0.
        WAIT FOR 100 ns;
        input <= "001"; --input = 1.
        WAIT FOR 30 ns;
        input <= "000"; --input = 1.
        WAIT FOR 20 ns;

        input <= "000"; --input = 1.
        WAIT FOR 100 ns;

        input <= "001"; --input = 1.
        WAIT FOR 100 ns;
        input <= "000";
        WAIT FOR 30 ns;
        input <= "001";
        WAIT FOR 20 ns;
    END PROCESS tb;

END;