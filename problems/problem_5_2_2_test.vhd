LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY problem_5_2_2_test IS
END problem_5_2_2_test;

ARCHITECTURE behavior OF problem_5_2_2_test IS
    SIGNAL abcd : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL f : STD_LOGIC := '0';

BEGIN
    UUT : ENTITY work.problem_5_2_2 PORT MAP(abcd, f);

    tb : PROCESS
    BEGIN
        FOR j IN 0 TO 2 ? abcd'length - 1 LOOP
            abcd <= STD_LOGIC_VECTOR(to_unsigned(j, abcd'length));
            WAIT FOR 2 ns;
        END LOOP;
    END PROCESS tb;
END;