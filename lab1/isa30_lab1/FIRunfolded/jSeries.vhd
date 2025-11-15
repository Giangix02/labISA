library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY jSeries is

	PORT(IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,IN10 : IN SIGNED (10 DOWNTO 0);
	     C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10 : IN SIGNED (10 DOWNTO 0);
	     DATA_OUT: OUT SIGNED (10 DOWNTO 0));

END jSeries;

ARCHITECTURE struct of jSeries is
	
	COMPONENT Mult_rounded
	     PORT(IN0, IN1: IN SIGNED(10 downto 0);
             Molt: OUT SIGNED(10 downto 0));
	END COMPONENT;

	COMPONENT addMult
	     PORT(INPUT_M, INPUT_A ,C: IN SIGNED (10 DOWNTO 0);
	     OUTPUT_A: OUT SIGNED (10 DOWNTO 0));
	END COMPONENT;

	SIGNAL A0,A1,A2,A3,A4,A5,A6,A7,A8,A9 : SIGNED (10 DOWNTO 0); --input signals addMults

	BEGIN

	mult0: Mult_rounded port map(IN0,C0,A0);
	addMult0: addMult port map(IN1,A0,C1,A1);
	addMult1: addMult port map(IN2,A1,C2,A2);
	addMult2: addMult port map(IN3,A2,C3,A3);
	addMult3: addMult port map(IN4,A3,C4,A4);
	addMult4: addMult port map(IN5,A4,C5,A5);
	addMult5: addMult port map(IN6,A5,C6,A6);
	addMult6: addMult port map(IN7,A6,C7,A7);
	addMult7: addMult port map(IN8,A7,C8,A8);
	addMult8: addMult port map(IN9,A8,C9,A9);
	addMult9: addMult port map(IN10,A9,C10,DATA_OUT);


END struct;