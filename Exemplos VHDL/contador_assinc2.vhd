library IEEE;
use IEEE.std_logic_1164.all;

entity contador_assinc2 is
    port (
            clr: in STD_LOGIC;
            clk: in STD_LOGIC;
            ctr: in STD_LOGIC;
            qa: out STD_LOGIC;
            qb: out STD_LOGIC
         );
end contador_assinc2;

ARCHITECTURE arq of contador_assinc2 IS
SIGNAL clk2, q1, q2, q1n, q2n : STD_LOGIC;

COMPONENT ffdr
   PORT (
        d: in STD_LOGIC;
        clk: in STD_LOGIC;
        rst: in STD_LOGIC;
        q: out STD_LOGIC
         );
END COMPONENT;

BEGIN

ff1: ffdr PORT MAP (q1n, clk,  clr, q1);
ff2: ffdr PORT MAP (q2n, clk2, clr, q2);
q1n  <= not q1;
q2n  <= not q2;
qa   <= q1;
qb   <= q2;
clk2 <= q1 xor ctr;

END arq;
