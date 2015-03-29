library IEEE;
use IEEE.std_logic_1164.all;

entity ff_jk is
    port (
        J: in STD_LOGIC;
        K: in STD_LOGIC;
        RST: in STD_LOGIC;
        CLK: in STD_LOGIC;
        Q: out STD_LOGIC
    );
end ff_jk;



architecture ffjk of ff_jk is
signal aux : STD_LOGIC;
signal JK  : STD_LOGIC_VECTOR (1 downto 0);

begin

JK <= J & K;
ffjk_1 : process (J,K,RST,CLK)
       begin
	 	if RST = '1' then
	 		aux <='0';
	 	elsif rising_edge(CLK) then
			case JK is
				when "01" => aux <='0';
				when "10" => aux <='1';
				when "11" => aux <= not aux;
				when others => null;
			end case;
		end if;
	end process;
	Q <= aux;	
end ffjk;
