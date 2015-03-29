LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY CONTADOR_UP_DOWN IS
PORT(d       : IN    INTEGER RANGE -2 TO 2;
     clk     : IN    BIT;
     clear   : IN    BIT;
     load    : IN    BIT;
     up_down : IN    BIT;
     qd      : OUT   INTEGER RANGE -2 TO 2);
END CONTADOR_UP_DOWN;

ARCHITECTURE a OF CONTADOR_UP_DOWN IS
BEGIN
 -- Um contador UP/DOWN
PROCESS (clk)
VARIABLE    cnt       : INTEGER RANGE -2 TO 2;
VARIABLE    direction : INTEGER RANGE -2 TO 2;
BEGIN
IF (up_down = '1') THEN  --Gera um contador UP/DOWN
direction := 1;
ELSE
direction := -1;
END IF;
IF (clk'EVENT AND clk = '1') THEN
  IF (load = '1') THEN         --Gera o carregamento 
    cnt := d;                  --do contador 
  ELSE 
    cnt := cnt + direction; 
  END IF;
  --As linhas seguintes produziro um clear sincrono
  --no contador
  IF (clear = '1') THEN     
    cnt := 0;
  END IF;
END IF;
qd <= cnt;   --Gera as saidas
END PROCESS;
END a;
