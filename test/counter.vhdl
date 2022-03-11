library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
port (
  clk:    in  std_logic;
  n_rst:  in  std_logic;
  cout:   out std_logic_vector (7 downto 0)
);
end entity;

architecture behaviour of counter is
  signal cnt: std_logic_vector (7 downto 0);
begin
  process (clk, n_rst)
  begin
    if n_rst = '0' then
      cnt <= (others => '0');
    elsif rising_edge(clk) then
      cnt <= cnt + 1;
    end if;
  end process;

  cout <= cnt;
end architecture;