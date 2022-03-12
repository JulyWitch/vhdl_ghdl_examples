--libraries to be used are specified here
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--entity declaration with port definitions
entity dec3x8_concurrent is
port(    input :        in std_logic_vector(2 downto 0);  --3 bit input
         output : out std_logic_vector(7 downto 0)  -- 8 bit ouput
   );
end dec3x8_concurrent;
--architecture of entity
architecture Behavioral of dec3x8_concurrent is

begin 
output(0) <= (not input(2)) and (not input(1)) and (not input(0));
output(1) <= (not input(2)) and (not input(1)) and input(0);
output(2) <= (not input(2)) and input(1) and (not input(0));
output(3) <= (not input(2)) and input(1) and input(0);
output(4) <= input(2) and (not input(1)) and (not input(0));
output(5) <= input(2) and (not input(1)) and input(0);
output(6) <= input(2) and input(1) and (not input(0));
output(7) <= input(2) and input(1) and input(0);

end Behavioral;
