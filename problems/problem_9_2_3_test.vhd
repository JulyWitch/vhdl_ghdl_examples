LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY problem_9_2_3_test IS
END problem_9_2_3_test;

ARCHITECTURE behavior OF problem_9_2_3_test IS

    SIGNAL Din : STD_LOGIC := '0';
    SIGNAL Clock : STD_LOGIC := '0';
    SIGNAL Reset : STD_LOGIC := '0';
    SIGNAL Dout : STD_LOGIC;

    CONSTANT Clock_period : TIME := 10 ns;

    COMPONENT problem_9_2_3
        PORT (
            Din : IN STD_LOGIC;
            Clock : IN STD_LOGIC;
            Reset : IN STD_LOGIC;
            Dout : OUT STD_LOGIC
        );
    END COMPONENT;

BEGIN
    UUT : ENTITY work.problem_9_2_3 PORT MAP(
        Din => Din,
        Clock => Clock,
        Reset => Reset,
        Dout => Dout
        );

    -- Clock process definitions
    Clock_process : PROCESS
    BEGIN
        Clock <= '0';
        WAIT FOR Clock_period/2;
        Clock <= '1';
        WAIT FOR Clock_period/2;
    END PROCESS;

    testB : PROCESS
    BEGIN
        Din <= '1';
        WAIT FOR Clock_period * 2;
        Din <= '0';
        WAIT FOR Clock_period * 2;
    END PROCESS;

END;