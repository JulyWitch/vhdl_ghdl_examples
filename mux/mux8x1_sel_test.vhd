LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

--this is how entity for your test bench code has to be declared.
ENTITY mux8x1_sel_test IS
END mux8x1_sel_test;

ARCHITECTURE behavior OF mux8x1_sel_test IS
    --signal declarations.
    SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL y : STD_LOGIC;
BEGIN
    --entity instantiation
    UUT : ENTITY work.mux8x1_sel PORT MAP(sel, x, y);

    --definition of simulation process
    tb : PROCESS
    BEGIN
        -- Transport delay
        sel <= "000";

        x <= "00000001";
        WAIT FOR 60 ns;

        x <= "00000000";
        WAIT FOR 500 ps;

        x <= "00000001";
        WAIT FOR 30 ns;

        x <= "00000000";
        WAIT FOR 100 ns;

        -- Inertial delay
        sel <= "001";

        x <= "00000010";
        WAIT FOR 60 ns;

        x <= "00000000";
        WAIT FOR 500 ps;

        x <= "00000010";
        WAIT FOR 30 ns;


        -- Done
        x <= "00000000";
        WAIT FOR 100 ns;

    END PROCESS tb;
END;