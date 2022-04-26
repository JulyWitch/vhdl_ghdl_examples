LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

--this is how entity for your test bench code has to be declared.
ENTITY enc8x3_sel_test IS
END enc8x3_sel_test;

ARCHITECTURE behavior OF enc8x3_sel_test IS
    --signal declarations.
    SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL y : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');

BEGIN
    --entity instantiation
    UUT : ENTITY work.enc8x3_sel PORT MAP(x, y);

    --definition of simulation process
    tb : PROCESS
    BEGIN

        x <= "00000000";
        WAIT FOR 100 ns;

        x <= "00000010";
        WAIT FOR 100 ns;

        x <= "00000000";
        WAIT FOR 20 ns;

        x <= "00000010";
        WAIT FOR 80 ns;

        x <= "00000100";
        WAIT FOR 100 ns;

        x <= "00000000";
        WAIT FOR 20 ns;

        x <= "00000100";
        WAIT FOR 80 ns;

        x <= "00000000";

        WAIT FOR 100 ns;
        
    END PROCESS tb;
END;