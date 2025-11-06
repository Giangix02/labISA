library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY REG11B IS

	PORT(CLK,EN,RSTn: IN STD_LOGIC;
             Din: IN UNSIGNED(10 downto 0);
	     Dout: OUT UNSIGNED(10 downto 0)     
	     );

END REG11B;

ARCHITECTURE beh of REG11B is

	BEGIN
	PROCESS(CLK,RSTn)
	BEGIN

	IF(RSTn = '0') then
	   Dout <= (others => '0'); 
	
	ELSIF(CLK'EVENT and CLK = '1') then

	     IF(EN = '1') THEN
	   	Dout <= Din;
	     END IF;

	END IF;
		

	END PROCESS;

end beh;
