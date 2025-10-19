library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY Moltipl is
	PORT(IN0, IN1: IN SIGNED(10 downto 0);
             Molt: OUT SIGNED(21 downto 0)
	);

END Moltipl;

ARCHITECTURE beh of Moltipl is
	
       BEGIN
       Molt <= IN0 * IN1;

END beh;