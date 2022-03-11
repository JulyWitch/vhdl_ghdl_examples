library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter_tb is
end entity;

architecture testbench of counter_tb is
  component counter
    port(
      clk:    in  std_logic;
      n_rst:  in  std_logic;
      cout:   out std_logic_vector (7 downto 0)
    );
  end component;

  signal  clk:    std_logic;
  signal  n_rst:  std_logic;
  signal  cout:   std_logic_vector (7 downto 0);

begin
  dut: counter port map (clk, n_rst, cout);

  process
  begin
    clk <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
  end process;

  process
  begin
    n_rst <= '0';
    wait for 10 ns;
    n_rst <= '1';
    wait for 250 ns;
  end process;
end;