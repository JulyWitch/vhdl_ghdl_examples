LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

--this is how entity for your test bench code has to be declared.
ENTITY enc16x4_test IS
END enc16x4_test;

ARCHITECTURE behavior OF enc16x4_test IS
    --signal declarations.
    SIGNAL x : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');

BEGIN
    --entity instantiation
    UUT : ENTITY work.enc16x4 PORT MAP(x, y);

    --definition of simulation process
    tb : PROCESS
    BEGIN
        FOR j IN 0 TO 2 ** x'length - 1 LOOP
            x <= STD_LOGIC_VECTOR(to_unsigned(j, x'length));
            WAIT FOR 2 ns;
        END LOOP;
    END PROCESS tb;
END;