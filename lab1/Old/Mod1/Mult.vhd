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

	signal in1_s,in2_s:signed(10 downto 0);
       signal temp: signed (21 downto 0);
       --signal out_s:std_logic_vector(21 downto 0);
       --signal temp:std_logic_vector(8 downto 0);
       --ignal quant: std_logic_vector(10 downto 0);
       BEGIN

       in1_s <= signed(std_logic_vector(IN0));
       in2_s <= signed(std_logic_vector(In1));
       --temp <= std_logic_vector(out_s(21 downto 13));
       --quant <= temp & "00";
       --Molt <= unsigned(quant);     
       temp <= IN1_s*IN2_s;
       molt <= unsigned(std_logic_vector(temp(20 downto 13) & "000"));

       --molt <= unsigned(std_logic_vector(out_s(21 downto 11)));

END beh;