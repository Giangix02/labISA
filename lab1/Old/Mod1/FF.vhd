library ieee;
use ieee.std_logic_1164.all;

ENTITY FF IS

	PORT(D,CLK,EN,RSTn: IN STD_LOGIC;
	     Q: OUT STD_LOGIC     
	     );

END FF;

ARCHITECTURE beh of FF is

	BEGIN
	PROCESS(CLK,RSTn)
	BEGIN

	IF(RSTn = '0') then
	   Q <= '0'; -- warning: this is asynchronous reset (only for the exercise 2.2)
	
	ELSIF(CLK'EVENT and CLK = '1') then

	     IF(EN = '1') THEN
	   	Q <= D;
	     END IF;

	END IF;
		

	END PROCESS;

end beh;
