LIBRARY IEEE;                        
USE IEEE.STD_Logic_1164.all;

ENTITY somador_4Bits is        
	PORT(      
			 A, B   :in std_logic_vector (3 downto 0); -- 1º operando  
			 cin    :in std_logic;                  -- carry in  
			 cout   :out  std_logic;                  -- carry out
			 saida  :out std_logic_vector (3 downto 0)  -- resultado da operação 
                       
           );       
end somador_4Bits; 



ARCHITECTURE ex_1_arch OF somador_4Bits IS
signal aux : STD_LOGIC;

component somador_2Bits port(A, B  : in STD_LOGIC_VECTOR (1 downto 0);
                             cin   : in STD_LOGIC;
                             cout  : out STD_LOGIC;
                             saida : out STD_LOGIC_VECTOR (1 downto 0));
end component;

begin
	u1 : somador_2Bits PORT MAP (A(1 downto 0), B(1 downto 0), cin, AUX, saida(1 downto 0));
	u2 : somador_2Bits PORT MAP (A(3 downto 2), B(3 downto 2), AUX, cout, saida(3 downto 2));
end ex_1_arch;


