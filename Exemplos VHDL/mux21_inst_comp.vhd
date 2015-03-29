library IEEE;
use IEEE.std_logic_1164.all;

entity mux21_inst_comp is
    port (
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        sel: in STD_LOGIC;
        saida: out STD_LOGIC
    );
end mux21_inst_comp;

architecture mux21_arch of mux21_inst_comp is
signal aok,bok,ns : STD_LOGIC;
component portae port(a, b : in STD_LOGIC;
                      s   : out STD_LOGIC);
end component;
component portaou port(a,b : in STD_LOGIC;
                       s   : out STD_LOGIC);
end component;
component inversor port(a  : in STD_LOGIC;
                        s  : out STD_LOGIC);
end component;

begin
  -- <<enter your statements here>>
  u1: portae port map (a,sel,aok);
  u2: inversor port map(sel,ns);
  u3: portae port map (ns,b,bok);
  u4: portaou port map (aok,bok,saida);
end mux21_arch;
