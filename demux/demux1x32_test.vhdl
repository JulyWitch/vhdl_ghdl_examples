LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

--this is how entity for your test bench code has to be declared.
ENTITY demux1x32_test IS
END demux1x32_test;

ARCHITECTURE behavior OF demux1x32_test IS
    --signal declarations.
    -- x : IN STD_LOGIC;
    -- sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    -- y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)

    SIGNAL x : STD_LOGIC;
    SIGNAL sel : STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');
    SIGNAL y : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

BEGIN
    --entity instantiation
    UUT : ENTITY work.demux1x32 PORT MAP(x, sel, y);

    --definition of simulation process
    tb : PROCESS
    BEGIN
        FOR j IN STD_LOGIC RANGE '0' TO '1' LOOP
            x <= j;
            FOR i IN 0 TO 2 ** sel'length - 1 LOOP
                sel <= STD_LOGIC_VECTOR(to_unsigned(i, sel'length));
                WAIT FOR 2 ns;
            END LOOP;
        END LOOP;
    END PROCESS tb;
END;