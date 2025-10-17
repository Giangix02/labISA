library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY tb is
END tb;

ARCHITECTURE beh of tb is
	
	COMPONENT moltipl
		PORT(IN0, IN1: IN SIGNED(10 downto 0);
             	Molt: OUT SIGNED(21 downto 0)
		);
	END COMPONENT;

	signal IN0,IN1: signed (10 downto 0);
	signal mult_out: signed (21 downto 0);

	begin

	data_process: process
	begin
	IN0 <= "00010100001";
	IN1 <= "11111111111";

	wait for 100ns;

	IN0 <= "10100000000";
	IN1 <= "11111111111";

	wait for 100ns;

	IN0 <= "01111111111";
	IN1 <= "10000000000";

	wait for 100ns;

	IN0 <= "11111111111";
	IN1 <= "11111111111";

	wait for 100ns;

	IN0 <= "01010101010";
	IN1 <= "01010101010";

	wait for 100ns;

	IN0 <= "10101010101";
	IN1 <= "10101010101";

	wait for 100ns;
	end process data_process;

	
	UUT: moltipl port map(IN0,IN1,mult_out);

END beh;