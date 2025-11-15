library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY Mult_rounded is
	PORT(IN0, IN1: IN SIGNED(10 downto 0);
             Molt: OUT SIGNED(10 downto 0)
	);

END Mult_rounded;

ARCHITECTURE beh of Mult_rounded is

	SIGNAL PROD: signed(21 downto 0);
	
       BEGIN
       PROD <= IN0 * IN1;
       Molt <= PROD(20 downto 13) & "000";


END beh;