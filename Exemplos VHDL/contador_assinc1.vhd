library IEEE;
use IEEE.std_logic_1164.all;

entity contador_assinc1 is
    port (
            clr: in STD_LOGIC;
            clk: in STD_LOGIC;
            ctr: in STD_LOGIC;
            qa: out STD_LOGIC;
            qb: out STD_LOGIC
         );
end contador_assinc1;

architecture arq of contador_assinc1 is
signal clk2, q1, q2, q1n, q2n : STD_LOGIC;
begin

  ffdr1: process (clk,clr)
  begin
  	if clr='1' 
  	 then q1 <= '0';  
  	elsif rising_edge(clk)
  	 then q1 <= q1n;
  	end if;
  end process ffdr1;

  ffdr2: process (clk2,clr)
  begin
  	if clr='1' 
  	 then q2 <= '0';  
  	elsif rising_edge(clk2)
  	 then q2 <= q2n;
  	end if;
  end process ffdr2;

  q1n  <= not q1;
  q2n  <= not q2;
  qa   <= q1;
  qb   <= q2;
  clk2 <= q1 xor ctr;

end arq;
