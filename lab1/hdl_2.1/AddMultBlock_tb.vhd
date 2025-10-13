library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity AddMultBlock_tb is
end;

architecture behavior of AddMultBlock_tb is

component Mult 
PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
             Molt: OUT UNSIGNED(21 downto 0)
	);
end component;

component AddMultBlock

	PORT(DIN, Coeff, DINadd0: IN UNSIGNED (10 downto 0);
	     CLK,RSTn, Vin: IN std_logic;
             Dout,DATA_REG: OUT unsigned (10 downto 0) --DATA_REG is the actual pipelined data
             );

END component;

signal din_tb, cf_tb, dout_tb, datarg_tb, in0_tb, mul_in_tb: unsigned(10 downto 0);
signal mul_out_tb: unsigned(21 downto 0);
signal clk_tb, rst_tb, vin_tb : std_logic;

begin

process
begin
clk_tb <= '0';
wait for 50 ns;
clk_tb <= '1';
wait for 50 ns;
end process;
--Add0_in <= "00" & mult_out(21 downto 13);
process
begin
rst_tb <= '0';
din_tb <= unsigned(conv_std_logic_vector(0, 11));
cf_tb <= unsigned(conv_std_logic_vector(-13, 11));
wait for 300 ns;
rst_tb <= '1';
wait for 100 ns;
vin_tb <= '1';
din_tb <= unsigned(conv_std_logic_vector(572, 11));
wait;
end process;

in0_tb <= unsigned(conv_std_logic_vector(-1, 11));
mul_in_tb <= "00" & mul_out_tb(21 downto 13);

moltiplicatore : Mult port map (din_tb, in0_tb, mul_out_tb);

cell : AddMultBlock port map (din_tb, cf_tb, mul_in_tb, clk_tb, rst_tb, vin_tb, dout_tb, datarg_tb);
cell1 : AddMultBlock port map (din1_tb, cf1_tb, mul1_in_tb, clk_tb, rst_tb, vin_tb, dout1_tb, datarg1_tb);

end behavior;