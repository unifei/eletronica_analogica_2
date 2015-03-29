LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;

ENTITY CONTADOR_INTEIRO IS
PORT(
     d       : IN    INTEGER RANGE 0 TO 12;
     clk     : IN    BIT;
     clear   : IN    BIT;
     load    : IN    BIT;
     qd      : OUT   INTEGER RANGE 0 TO 12);
END CONTADOR_INTEIRO;

ARCHITECTURE a OF CONTADOR_INTEIRO IS
BEGIN
PROCESS (clk)
 VARIABLE    cnt       : INTEGER RANGE 0 TO 12;
BEGIN
 IF clear = '1' THEN
      cnt := 0;
 ELSIF (clk'EVENT AND clk = '1') THEN
    IF (load = '1') THEN         --Gera o carregamento 
      cnt := d;                  --do contador 
    ELSE
        IF cnt < 12 THEN
           cnt := cnt + 1;
        ELSE
           cnt := 0; 
        END IF;
    END IF;
 END IF;
 qd <= cnt;   --Gera as saidas
END PROCESS;
END a;
