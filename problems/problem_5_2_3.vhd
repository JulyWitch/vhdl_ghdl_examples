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
        IF (
            abcd = STD_LOGIC_VECTOR(to_unsigned(4, abcd'length)) OR
            abcd = STD_LOGIC_VECTOR(to_unsigned(5, abcd'length)) OR
            abcd = STD_LOGIC_VECTOR(to_unsigned(7, abcd'length)) OR
            abcd = STD_LOGIC_VECTOR(to_unsigned(12, abcd'length)) OR
            abcd = STD_LOGIC_VECTOR(to_unsigned(13, abcd'length)) OR
            abcd = STD_LOGIC_VECTOR(to_unsigned(15, abcd'length))
            )
            THEN
            F <= '1';
        ELSE
            F <= '0';
        END IF;
    END PROCESS;
END ARCHITECTURE;