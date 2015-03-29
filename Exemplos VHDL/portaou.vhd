library IEEE;
use IEEE.std_logic_1164.all;

entity portaou is
    port (
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        s: out STD_LOGIC
    );
end portaou;

architecture portaou_arch of portaou is
begin
  -- <<enter your statements here>>
  s <= a or b;
end portaou_arch;
