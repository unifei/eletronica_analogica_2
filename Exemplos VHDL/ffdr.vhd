library IEEE;
use IEEE.std_logic_1164.all;

entity ffdr is
    port (
        d: in STD_LOGIC;
        clk: in STD_LOGIC;
        rst: in STD_LOGIC;
        q: out STD_LOGIC
    );
end ffdr;

architecture ffdr_arch of ffdr is
begin

  ffdr: process (clk,rst)
  begin
  	if rst='1' then
           q <= '0';  
  	elsif rising_edge(clk) then
           q <= d;
  	end if;
  end process ffdr;
end ffdr_arch;
