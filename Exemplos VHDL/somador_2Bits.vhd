----------------------------------------------------------------
--                                                            --
--       Somador de 2 Bits - Estrutural                       --
--                                                            --
----------------------------------------------------------------
LIBRARY IEEE;                        
USE IEEE.STD_Logic_1164.all;

ENTITY somador_2Bits IS
        PORT(       
			A, B   :in std_logic_vector (1 downto 0);			
			cin    :in std_logic;                     -- carry in  
			cout   :out  std_logic;                   -- carry out
			saida  :out std_logic_vector (1 downto 0) -- resultado da operação 
            );       
end somador_2Bits; 

ARCHITECTURE somador_2Bits_arch OF somador_2Bits IS  
	begin
	  process(A,B,cin)
	  variable C1: std_logic; 
		 begin
		  C1 := (A(0) and B(0)) or (A(0) and cin) or (B(0) and cin);
		  saida(0) <= A(0) xor B(0) xor cin;  
		  saida(1) <= A(1) xor B(1) xor C1;
          cout <= (A(1) and B(1)) or (A(1) and C1) or (B(1) and C1);
      end process;
End somador_2Bits_arch ;       	
       
