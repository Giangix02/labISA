library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY Mult is
	PORT(IN0, IN1: IN SIGNED(11 downto 0);
             Molt: OUT SIGNED(23 downto 0)
	);

END Mult;

ARCHITECTURE beh of Mult is
	
       BEGIN
       Molt <= IN0 * IN1;

END beh;