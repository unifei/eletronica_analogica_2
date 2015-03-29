LIBRARY ieee ;
USE     ieee.std_logic_1164.all;
entity mux_with is
    port ( A,B,C,D     : in  STD_LOGIC;
           sel         : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           Y           : out STD_LOGIC);
end mux_with;
architecture estrutura of mux_with is
begin
    with sel select
       Y <= B when "01",
            C when "10",
            D when "11",
            A when others;
end;
