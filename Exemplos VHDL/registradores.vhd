library ieee;
use ieee.std_logic_1164.all;

entity registradores is
	port(
		clk		 : in std_logic;
		rst  	 : in std_logic;
		habilita : in std_logic;
--		entrada  : in std_logic;
--		saida	 : out std_logic
		entrada  : in std_logic_vector(1 downto 0);
		saida	 : out std_logic_vector(1 downto 0)
	    );
end;

architecture rtl of registradores is
--signal A, B, C : std_logic;
signal A, B, C : std_logic_vector(1 downto 0);
begin
   process (clk,rst)
   begin
       if rst='1' then
--           A <='0'; B<='0'; C<='0';
           A<=(others => '0');
           B<=(others => '0');
           C<=(others => '0');
       elsif (clk'event and clk='1') then
         if habilita ='1' then
           A <= entrada;
           B <= A;
           C <= B;
         end if;
       end if;
   end process;
   saida <= C;
end rtl;
