library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity ula8 is
    port (
          A    : in STD_LOGIC_VECTOR (7 downto 0);
          B    : in STD_LOGIC_VECTOR (7 downto 0);
          CIN  : in STD_LOGIC;
          SEL  : in STD_LOGIC_VECTOR (1 downto 0);
          saida: out STD_LOGIC_VECTOR (7 downto 0);
          COUT : out STD_LOGIC
          );
end ula8;

architecture ula_arch of ula8 is
signal temp: STD_LOGIC_VECTOR(8 downto 0);
begin
  -- <<enter your statements here>>
  temp   <= (unsigned('0' & A) + unsigned('0' & B)) + CIN;
  process(sel, A, B, Cin)
  begin
        case sel is 
         when "01"   => saida  <= A or  B;
                        COUT   <= '0';
         when "10"   => saida  <= temp(7 downto 0);
        	            COUT   <= temp(8);
         when others => saida  <= A and B;     
                        COUT   <= '0';
        end case;
   end process;
end ula_arch;
