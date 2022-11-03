library ieee;
use ieee.std_logic_1164.all;

entity clag is
  port (
    gin : in std_logic_vector(3 downto 0);
    pin : in std_logic_vector(3 downto 0);
    cin : in std_logic;
    cout : out std_logic_vector(3 downto 0);
    pout : out std_logic;
    gout : out std_logic
  );
end clag;

architecture rtl of clag is
  signal wire_0: std_logic;
  signal wire_1: std_logic;
  signal wire_2: std_logic;

  begin
  wire_0 <= gin(0) or (cin and pin(0));
  cout(0) <= wire_0;
  wire_1 <= gin(1) or (wire_0 and pin(1));
  cout(1) <= wire_1;
  wire_2 <= gin(2) or (wire_1 and pin(2));
  cout(2) <= wire_2;
  cout(3) <= gin(3) or (wire_2 and pin(3));

  gout <= gin(3) or (pin(3) and gin(2)) or (pin(3) and pin(2) and gin(1)) or (pin(3) and pin(2) and pin(1) and gin(0));
  pout <= pin(3) and pin(2) and pin(1) and pin(0);

  end rtl;