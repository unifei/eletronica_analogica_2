LIBRARY ieee ;
USE     ieee.std_logic_1164.all;
USE     ieee.std_logic_arith.all;
entity conta8b is
    port (
        clk: in STD_LOGIC;
        rst: in STD_LOGIC;
        saida: out STD_LOGIC_VECTOR (7 downto 0)
         );
end conta8b;
architecture estrutura of conta8b is
begin

contador: process (clk, rst) -- registrador incrementador de 8 bits, 
variable valor,qnext : STD_LOGIC_VECTOR(7 downto 0);
begin
  valor := "00000001";
  if (rst = '1') then
		qnext := (others=>'0');
  elsif (clk'event and clk = '1') then
		qnext := unsigned(qnext) + unsigned(valor);
  end if;
  saida <= qnext;
end process;
end;
