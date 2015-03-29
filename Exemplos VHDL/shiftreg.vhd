library IEEE;
use IEEE.std_logic_1164.all;

entity shiftreg is
    port (
        dados: in STD_LOGIC_VECTOR (7 downto 0);
        selec: in STD_LOGIC_VECTOR (2 downto 0);
        rin: in STD_LOGIC;
        lin: in STD_LOGIC;
        clk: in STD_LOGIC;
        clr: in STD_LOGIC;
        saida: out STD_LOGIC_VECTOR (7 downto 0)
    );
end shiftreg;

architecture shiftreg_arch of shiftreg is
  signal Qinterno : STD_LOGIC_VECTOR (7 downto 0);
  -- <<enter your statements here>>
  begin
  process (clk, clr, Qinterno)
     begin
          if (clr='1') then 
                Qinterno <= "00000000"; -- clear assincrono
          elsif (clk 'event and clk='1') then
             case selec is
                when "000" => null;
                when "001" => Qinterno <= dados;
                when "010" => Qinterno <= rin & Qinterno(7 downto 1);
                when "011" => Qinterno <= Qinterno(6 downto 0) & lin;
                when "100" => Qinterno <= Qinterno(0) & Qinterno(7 downto 1);
                when "101" => Qinterno <= Qinterno(6 downto 0) & Qinterno(7);
                when "110" => Qinterno <= Qinterno(7) & Qinterno(7 downto 1);
                when "111" => Qinterno <= Qinterno(6 downto 0) & '0';
                when others => null;
              end case;
           end if;
           saida <= Qinterno;
   end process;
end shiftreg_arch;
