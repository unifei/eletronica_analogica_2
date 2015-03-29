LIBRARY ieee ;
USE     ieee.std_logic_1164.all;
entity regist4b is
    port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        ent   : in STD_LOGIC_VECTOR (3 downto 0);
        saida : out STD_LOGIC_VECTOR (3 downto 0)
    );
end regist4b;
architecture estrutura of regist4b is
begin
registrador: process (clock, reset)	-- registrador de 4 bits
begin
    if reset ='1' then
         saida <= (others=>'0');
    elsif (clock'event and clock='1') then
         saida <= ent;
    end if;
end process;
end;
