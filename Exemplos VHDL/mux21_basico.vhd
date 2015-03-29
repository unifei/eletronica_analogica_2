library IEEE;
use IEEE.std_logic_1164.all;

entity mux21_basico is
    port (
        a: in bit;
        b: in bit;
        s: in bit;
        z: out bit
    );
end mux21_basico;

architecture mux21_arch of mux21_basico is
signal aok, bok, ns : bit;
begin
  -- <<enter your statements here>>
  aok <= a and s;
  bok <= b and ns;
  ns <= not(s);
  z <= aok or bok;
end mux21_arch;
