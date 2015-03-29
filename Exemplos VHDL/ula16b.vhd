library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity ula16b is
    port (
          C       : in STD_LOGIC_VECTOR (15 downto 0);
          D       : in STD_LOGIC_VECTOR (15 downto 0);
          CIN     : in STD_LOGIC;
          SEL     : in STD_LOGIC_VECTOR (1 downto 0);
          saida16 : out STD_LOGIC_VECTOR (15 downto 0);
          COUT    : out STD_LOGIC
          );
end ula16b;



architecture ula16_arch of ula16b is

component ula8 port (A, B     : in STD_LOGIC_VECTOR (7 downto 0);
                     CIN      : in STD_LOGIC;  
                     SEL      : in STD_LOGIC_VECTOR (1 downto 0);
                     saida    : out STD_LOGIC_VECTOR (7 downto 0);
                     COUT     : out STD_LOGIC);
end component;

signal SIG : STD_LOGIC;

begin
  -- <<enter your statements here>>
  u1: ula8 port map (C(7 downto 0),  D(7 downto 0),  CIN, SEL(1 downto 0), saida16(7 downto 0), SIG);
  u2: ula8 port map (C(15 downto 8), D(15 downto 8), SIG, SEL(1 downto 0), saida16(15 downto 8), COUT);
end ula16_arch;

