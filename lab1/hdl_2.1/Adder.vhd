library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY Adder is
	PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
             Sum: OUT UNSIGNED(10 downto 0)
	);

END Adder;

ARCHITECTURE beh of Adder is
	
       BEGIN
       Sum <= IN0 + IN1;

END beh;