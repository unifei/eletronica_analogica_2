LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY decodificador3_8_seq IS
PORT(
    SIGNAL seletor	   : IN	std_logic_vector(2 DOWNTO 0);
    SIGNAL bar_prioridade  : OUT 	std_logic_vector(7 downto 0);
    SIGNAL enable	   : IN std_logic
    );
END decodificador3_8_seq;

ARCHITECTURE circuito OF decodificador3_8_seq IS -- Solucao sequencial
BEGIN
	PROCESS (seletor,enable)
	BEGIN
		bar_prioridade <= "11111111";
		IF  (enable='1') THEN
			CASE seletor IS
				WHEN "000" => bar_prioridade(0) <= '0';
				WHEN "001" => bar_prioridade(1) <= '0';
				WHEN "010" => bar_prioridade(2) <= '0';
				WHEN "011" => bar_prioridade(3) <= '0';
				WHEN "100" => bar_prioridade(4) <= '0';
				WHEN "101" => bar_prioridade(5) <= '0';
				WHEN "110" => bar_prioridade(6) <= '0';
				WHEN "111" => bar_prioridade(7) <= '0';
                WHEN OTHERS => NULL;
			END CASE;
		END IF;
	END PROCESS;
END circuito;

