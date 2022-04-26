LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

--this is how entity for your test bench code has to be declared.
ENTITY mux8x1_conditional_test IS
END mux8x1_conditional_test;

ARCHITECTURE behavior OF mux8x1_conditional_test IS
    --signal declarations.
    SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL y : STD_LOGIC;


BEGIN
    --entity instantiation
    UUT : ENTITY work.mux8x1_conditional PORT MAP(sel, x, y);

    --definition of simulation process
    tb : PROCESS
    BEGIN
        FOR i IN 0 TO 2 ** sel'length - 1 LOOP
            FOR j IN 0 TO 2 ** x'length - 1 LOOP
                sel <= STD_LOGIC_VECTOR(to_unsigned(i, sel'length));
                x <= STD_LOGIC_VECTOR(to_unsigned(j, x'length));
                WAIT FOR 2 ns;
            END LOOP;
        END LOOP;
    END PROCESS tb;
END;