-- NOTE: Change the file extension from .txt to .vhd

-- include libraries
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY problem_9_2_3 IS
    PORT (
        clock : IN STD_LOGIC;
        din : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        dout : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE RTL OF problem_9_2_3 IS
    TYPE State_type IS (S0, S1, S2, S3);
    SIGNAL state : State_Type;
BEGIN

    PROCESS (clock, reset)
    BEGIN
        IF (reset = '1') THEN
            State <= S0;

        ELSIF rising_edge(clock) THEN
            CASE State IS
                WHEN S0 =>
                    IF din = '0' THEN
                        dout <= '0';
                        State <= S0;
                    END IF;
                    IF din = '1' THEN
                        dout <= '1';
                        State <= S1;
                    END IF;

                WHEN S1 =>
                    IF din = '1' THEN
                        dout <= '0';
                        State <= S3;
                    END IF;
                    IF din = '0' THEN
                        dout <= '1';
                        State <= S2;
                    END IF;

                WHEN S2 =>
                    IF din = '0' THEN
                        dout <= '0';
                        State <= S0;
                    END IF;
                    IF din = '1' THEN
                        dout <= '1';
                        State <= S3;
                    END IF;

                WHEN S3 =>
                    IF din = '0' THEN
                        dout <= '0';
                        State <= S3;
                    END IF;
                    IF din = '1' THEN
                        dout <= '1';
                        State <= S0;
                    END IF;
                WHEN OTHERS =>
                    State <= S0;
            END CASE;
        END IF;
    END PROCESS;

END rtl;