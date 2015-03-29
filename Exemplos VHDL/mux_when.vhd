LIBRARY ieee ;
USE     ieee.std_logic_1164.all;
entity mux_when is
    port ( A,B,C,D     : in  STD_LOGIC;
           sel         : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           Y           : out STD_LOGIC);
end mux_when;
architecture estrutura of mux_when is
begin
       Y <= A when sel = "00" else
            B when sel = "01" else
            C when sel = "10" else
            D when sel = "11";
end;
