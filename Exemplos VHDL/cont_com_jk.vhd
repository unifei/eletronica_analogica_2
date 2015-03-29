library IEEE;
use IEEE.std_logic_1164.all;

entity cont_com_jk is
    port (
        CLOCK: in STD_LOGIC;
        RST: in STD_LOGIC;
        CTR: in STD_LOGIC;
        SAIDA: out STD_LOGIC_VECTOR (3 downto 0)
    );
end cont_com_jk;

architecture cont_arch of cont_com_jk is

signal A, B, C, D      : STD_LOGIC;
signal CK1, CK2, CK3   : STD_LOGIC;

component ffjk port (J, K, RST, CLK : in STD_LOGIC;
                     Q              : out STD_LOGIC);
end component;
component portaxor port (A, B : in STD_LOGIC;
                         S    : out STD_LOGIC);
end component;
    
begin
    ff2: ffjk port map (J=> '1', K=>'1', RST=> RST, CLK=> CK1, Q=> C);
    ff3: ffjk port map (J=> '1', K=>'1', RST=> RST, CLK=> CK2, Q=> B);
    ff1: ffjk port map ('1', '1', RST, CLOCK, D);
    ff4: ffjk port map ('1', '1', RST, CK3, A);
    xor3: portaxor port map (B, CTR, CK3);
    xor2: portaxor port map (C, CTR, CK2);
    xor1: portaxor port map (D, CTR, CK1);
    SAIDA <= A & B & C & D; 
end cont_arch;
