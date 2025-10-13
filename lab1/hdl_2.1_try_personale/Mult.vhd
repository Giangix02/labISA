library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;

ENTITY Mult is
	PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
             Molt: OUT UNSIGNED(10 downto 0)
	);

END Mult;

ARCHITECTURE beh of Mult is

	signal in1_s,in2_s,quant:signed(10 downto 0);
       signal out_s:signed(21 downto 0);

       BEGIN

       in1_s <= signed(std_logic_vector(IN0));
       in2_s <= signed(std_logic_vector(In1));
       quant <= out_s(21 downto 13) & "00";
       Molt <= unsigned(std_logic_vector(quant));

       out_s <= IN1_s * IN2_s;

END beh;