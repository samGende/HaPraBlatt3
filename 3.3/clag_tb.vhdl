library ieee;
use ieee.std_logic_1164.all;

entity clag_tb is 
end clag_tb;

architecture test of clag_tb is 
component clag
port (
    gin : in std_logic_vector(3 downto 0);
    pin : in std_logic_vector(3 downto 0);
    cin : in std_logic;
    cout : out std_logic_vector(3 downto 0);
    pout : out std_logic;
    gout : out std_logic
  );
  end component;


  signal gin : std_logic_vector(3 downto 0);
  signal pin : std_logic_vector(3 downto 0);
  signal cin: std_logic; 
  signal cout: std_logic_vector(3 downto 0);
  signal pout : std_logic;
  signal gout : std_logic;

begin 
carray_look_ahead: clag port map(gin => gin, pin => pin, cin => cin, cout => cout, pout => pout, gout => gout);

process begin

    gin <= "0101";
    pin <= "0000";
    cin <= '0';
    wait for 10 ns; 

    gin <= "0101";
    pin <= "0010";
    cin <= '1';
    wait for 10 ns; 

    gin <= "0101";
    pin <= "0000";
    cin <= '1';
    wait for 10 ns; 
    wait;

    end process ;
    end test;
