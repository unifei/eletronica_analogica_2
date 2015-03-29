LIBRARY ieee ;
USE     ieee.std_logic_1164.all;
entity mux_case is
    port ( A,B,C,D     : in  STD_LOGIC;
           sel         : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           Y           : out STD_LOGIC);
end mux_case;
architecture estrutura of mux_case is
begin
  mux: process(sel,A,B,C,D)
  begin
    case sel is
       when "00"   =>   Y <= A;
       when "01"   =>   Y <= B;
       when "10"   =>   Y <= C;
       when "11"   =>   Y <= D;
       when others =>   Y <= A;
    end case;
  end process;
end;
