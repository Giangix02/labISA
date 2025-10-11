library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY Mult is
	PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
             Molt: OUT UNSIGNED(21 downto 0)
	)

END Mult;

ARCHITECTURE beh of Mult is
	
       BEGIN
       Molt <= IN0 * IN1;

END beh;