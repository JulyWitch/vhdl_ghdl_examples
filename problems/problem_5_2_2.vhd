LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;

ENTITY problem_5_2_3 IS
    PORT (
        abcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        f : OUT STD_LOGIC
    );
END ENTITY problem_5_2_3;

ARCHITECTURE rtl OF problem_5_2_3 IS
BEGIN

    PROCESS (abcd)
    BEGIN

        CASE abcd IS
            WHEN "0001" | "0011" | "1001" | "1011" =>
                F <= '1';
            WHEN OTHERS =>
                F <= '0';

        END CASE;
    END PROCESS;
END ARCHITECTURE;