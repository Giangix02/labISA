library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY addMult is

	PORT(INPUT_M, INPUT_A ,C: IN SIGNED (10 DOWNTO 0);
	     OUTPUT_A: OUT SIGNED (10 DOWNTO 0)
	     );

END addMult;

ARCHITECTURE struct of addMult is
	
	COMPONENT Adder 
		PORT(IN0, IN1: IN SIGNED(10 downto 0);
             	Sum: OUT SIGNED(10 downto 0));
	END COMPONENT;

	COMPONENT Mult_rounded
	     PORT(IN0, IN1: IN SIGNED(10 downto 0);
             Molt: OUT SIGNED(10 downto 0));
	END COMPONENT;

	SIGNAL OUTPUT_M: SIGNED(10 DOWNTO 0);

	BEGIN

	MULT: Mult_rounded port map(INPUT_M,C,OUTPUT_M);
	ADD: Adder port map(OUTPUT_M,INPUT_A,OUTPUT_A);


END struct;