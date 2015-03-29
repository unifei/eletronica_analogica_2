LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY decodificador3_8_conc IS
PORT(
    SIGNAL seletor	  : IN	std_logic_vector(2 DOWNTO 0);
    SIGNAL bar_prioridade : OUT 	std_logic_vector(7 downto 0);
    SIGNAL enable	  : IN std_logic
    );
END decodificador3_8_conc;

ARCHITECTURE circuito OF decodificador3_8_conc IS -- Solucao concorrente
BEGIN
  bar_prioridade(0) <= '0'  WHEN (enable='1' AND seletor = "000") ELSE '1';
  bar_prioridade(1) <= '0'  WHEN (enable='1' AND seletor = "001") ELSE '1';
  bar_prioridade(2) <= '0'  WHEN (enable='1' AND seletor = "010") ELSE '1';
  bar_prioridade(3) <= '0'  WHEN (enable='1' AND seletor = "011") ELSE '1';
  bar_prioridade(4) <= '0'  WHEN (enable='1' AND seletor = "100") ELSE '1';
  bar_prioridade(5) <= '0'  WHEN (enable='1' AND seletor = "101") ELSE '1';
  bar_prioridade(6) <= '0'  WHEN (enable='1' AND seletor = "110") ELSE '1';
  bar_prioridade(7) <= '0'  WHEN (enable='1' AND seletor = "111") ELSE '1';
END circuito;
