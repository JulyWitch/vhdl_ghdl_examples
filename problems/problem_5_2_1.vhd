LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;

ENTITY problem_5_2_1 IS
    PORT (
        abcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        f : OUT STD_LOGIC
    );
END ENTITY problem_5_2_1;

ARCHITECTURE rtl OF problem_5_2_1 IS
BEGIN

    PROCESS (abcd)
    BEGIN
        IF (abcd = "0001" OR abcd = "0011" OR abcd = "1001" OR abcd = "1011")
            THEN
            F <= '1';
        ELSE
            F <= '0';
        END IF;
    

    END PROCESS;
END ARCHITECTURE;