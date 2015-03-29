---------------------------------------------------------
-- Embora este nao seja o caso de aplicacao     de     --
-- processos (uma vez que as descrições envolvem       --
-- comandos concorrentes simples, a descricao tem      --
-- objetivo de ilustrar a utilizacao de processos com  --
-- os primeiros recursos abordados no curso.           --
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY mux21_processos IS
    PORT (
        enta: in STD_LOGIC;
        entb: in STD_LOGIC;
        sel: in STD_LOGIC;
        saida: out STD_LOGIC
    );
END mux21_processos;


----------  Inicio da descricao da arquitetura ----------

ARCHITECTURE arq OF mux21_processos IS
-- definicao dos sinais utilizados na arquitetura:
SIGNAL s_porta_e_1, s_porta_e_2 : STD_LOGIC;
SIGNAL nsel                     : STD_LOGIC;

BEGIN

portaou: PROCESS(nsel,entb)
  BEGIN
     saida <= s_porta_e_1 OR s_porta_e_2;
END PROCESS;

portae1: PROCESS(sel,enta)
  BEGIN
     s_porta_e_1 <= sel AND enta;
END PROCESS;

portae2: PROCESS(nsel,entb)
  BEGIN
     s_porta_e_2 <= nsel AND entb;
END PROCESS;

nsel <= not sel;

END arq;
