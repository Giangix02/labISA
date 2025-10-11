library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY AddMultBlock is

	PORT(DIN, Coeff, DINadd0, DATA_REG: IN UNSIGNED (10 downto 0);
	     CLK,RSTn, Vin: IN std_logic;
             Dout: OUT unsigned (10 downto 0)
             );

END AddMultBlock;

ARCHITECTURE beh of AddMultBlock is
	
	COMPONENT Adder
		PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
             	     Sum: OUT UNSIGNED(11 downto 0)
			);
	END COMPONENT;

        COMPONENT Mult
		PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
             	     Mult: OUT UNSIGNED(21 downto 0)
			);
        END COMPONENT;

	COMPONENT REG11B 
		PORT(CLK,EN,RSTn: IN STD_LOGIC;
                     Din: IN UNSIGNED(10 downto 0);
	             Dout: OUT UNSIGNED(10 downto 0)     
	     		);
	END COMPONENT;

	SIGNAL INMUL1, DINadd1: UNSIGNED (10 downto 0);
	SIGNAL MUL_OUT: UNSIGNED (21 downto 0);

	begin


	DINadd1 <= "00" & MUL_OUT(21 downto 13);
	Addereeno: Adder port map(DINadd0, DINadd1, Dout); 
	Multiplier: Mult port map(INMUL0, INMUL1, MUL_OUT);
	Reg_data: REG11B port map(CLK,Vin,RSTn,DIN,DATA_REG);
	Reg_coeff: REG11B port map(CLK,Vin,RSTn,Coeff,INMUL1);
	


END beh;

