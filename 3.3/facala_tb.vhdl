library ieee;
use ieee.std_logic_1164.all;

entity facala_tb is
end facala_tb;

architecture test of facala_tb is
  component facala
    port (
      a : in std_logic;
      b : in std_logic;
      cin : in std_logic;
      g : out std_logic;
      p : out std_logic;
      sum : out std_logic
    );
  end component;

signal a, b, cin, cout, sum : std_ulogic;
begin
  moddified_full_adder: facala port map(a => a, b => b, cin => cin, g => g, p => p, sum => sum );

  process begin
    a <= '0';
    b <= '0';
    cin <= '0';
    wait for 10 ns; 
    a <= '1';
    b <= '0';
    cin <= '0';
    wait for 10 ns; 
    a <= '0';
    b <= '1';
    cin <= '0';
    wait for 10 ns; 
    a <= '0';
    b <= '0';
    cin <= '1';
    wait for 10 ns; 
   a <= '1';
    b <= '1';
    cin <= '0';
    wait for 10 ns; 
   a <= '1';
    b <= '0';
    cin <= '1';
    wait for 10 ns; 
   a <= '0';
    b <= '1';
    cin <= '1';
    wait for 10 ns; 
   a <= '1';
    b <= '1';
    cin <= '1';
    wait for 10 ns; 

    wait;
  end process;
end test;
