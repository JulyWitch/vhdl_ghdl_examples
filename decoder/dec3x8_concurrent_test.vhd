library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


--this is how entity for your test bench code has to be declared.
entity dec3x8_concurrent_test is
end dec3x8_concurrent_test;

architecture behavior of dec3x8_concurrent_test is
--signal declarations.
signal input : std_logic_vector(2 downto 0) :=(others => '0');
signal output :  std_logic_vector(7 downto 0) :=(others => '0');

begin
--entity instantiation
UUT : entity work.dec3x8_concurrent port map(input,output);

--definition of simulation process
tb : process 
begin
input<="000";  --input = 0.
wait for 2 ns;
input<="001";   --input = 1.
wait for 2 ns;
input<="010";   --input = 2.
wait for 2 ns;
input<="011";   --input = 3.
wait for 2 ns;
input<="100";   --input = 4.
wait for 2 ns;
input<="101";   --input = 5.
wait for 2 ns;
input<="110";   --input = 6.
wait for 2 ns;
input<="111";   --input = 7.
wait;
end process tb;

end;
