library IEEE;
use IEEE.std_logic_1164.all;

entity inversor is
    port (
        a: in STD_LOGIC;
        s: out STD_LOGIC
    );
end inversor;

architecture inversor_arch of inversor is
begin
  -- <<enter your statements here>>
  s <= not a;
end inversor_arch;
