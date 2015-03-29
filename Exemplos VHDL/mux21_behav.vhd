library IEEE;
use IEEE.std_logic_1164.all;

entity mux21_behav is
    port (
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        sel: in STD_LOGIC;
        saida: out STD_LOGIC
    );
end mux21_behav;

architecture mux21_arch of mux21_behav is
begin
  -- <<enter your statements here>>
  mux: process(sel,a,b)
  begin
     if sel='1' then
        saida <= a;
     elsif sel='0' then
        saida <= b;
     end if;
  end process;
end mux21_arch;
