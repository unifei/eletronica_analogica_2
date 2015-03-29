LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY crialatch IS
    PORT( habilita, dado1, dado2    : IN  std_logic;
          q1,q2                     : OUT std_logic);
END crialatch;

ARCHITECTURE circuito oF crialatch IS
signal no1, no2 : std_logic;
BEGIN
     no1 <= dado1 when habilita = '1' ELSE no1;
     with habilita select no2 <= dado2 when '1';
                                 no2   when others;
     q1 <= no1;
     q2 <= no2;
end circuito;