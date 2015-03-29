library IEEE;
use IEEE.std_logic_1164.all;

entity portae is
   port(
     a: in STD_LOGIC;
     b: in STD_LOGIC;
     s: out STD_LOGIC);
end portae;

architecture portae_arch of portae is
begin
 --<enter your statements here??
 s <= a and b;
end portae_arch;
