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
	signal in1_s,in2_s:signed(10 downto 0);
       signal out_s:signed(10 downto 0);

       begin
       in1_s <= signed(std_logic_vector(IN0));
       in2_s <= signed(std_logic_vector(IN1));
       Sum <= unsigned(std_logic_vector(out_s));
       out_s <= IN1_s + IN2_s;

END beh;
