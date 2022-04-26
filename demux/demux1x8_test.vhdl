LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

--this is how entity for your test bench code has to be declared.
ENTITY demux1x8_test IS
END demux1x8_test;

ARCHITECTURE behavior OF demux1x8_test IS
    --signal declarations.
    -- x : IN STD_LOGIC;
    -- sel : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    -- y : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)

    SIGNAL x : STD_LOGIC;
    SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

BEGIN
    --entity instantiation
    UUT : ENTITY work.demux1x8 PORT MAP(x, sel, y);

    --definition of simulation process
    tb : PROCESS
    begin
        x <= '0';
        wait for 100 ns;
        
        sel <= "000";
        x <= '1';
        wait for 50 ns;
        x <= '0';
        wait for 30 ns;
        x <= '1';
        wait for 20 ns;

        x <= '0';
        wait for 100 ns;

        sel <= "001";
        x <= '1';
        wait for 50 ns;
        x <= '0';
        wait for 30 ns;
        x <= '1';
        wait for 20 ns;

        x <= '0';
        wait for 100 ns;

    END PROCESS tb;
END;