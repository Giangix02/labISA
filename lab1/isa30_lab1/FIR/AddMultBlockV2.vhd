library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY AddMultBlockV2 is

	PORT(DIN, Coeff, DINadd0: IN signed (10 downto 0);
	     CLK,RSTn, Vin: IN std_logic;
             Dout,DATA_REG: OUT signed (10 downto 0) --DATA_REG is the actual pipelined data
             );

END AddMultBlockV2;

ARCHITECTURE beh of AddMultBlockV2 is
	
	COMPONENT Adder
		PORT(IN0, IN1: IN signed(10 downto 0);
             	     Sum: OUT signed(10 downto 0)
			);
	END COMPONENT;

        COMPONENT Mult
		PORT(IN0, IN1: IN signed(10 downto 0);
             	     Molt: OUT signed(21 downto 0)
			);
        END COMPONENT;

	COMPONENT REG11B 
		PORT(CLK,EN,RSTn: IN STD_LOGIC;
                     Din: IN signed(10 downto 0);
	             Dout: OUT signed(10 downto 0)     
	     		);
	END COMPONENT;

	SIGNAL INMUL0, DINadd1, Coeff_reg_out: signed (10 downto 0);
	SIGNAL MUL_OUT: signed (21 downto 0);

	begin

	DATA_REG <= INMUL0;

	COEFF_REG: REG11B port map(CLK,'1',RSTn,Coeff,Coeff_reg_out);

	DINadd1 <= MUL_OUT(20 downto 13) & "000";
	Addereeno: Adder port map(DINadd0, DINadd1, Dout); 
	Multiplier: Mult port map(INMUL0, Coeff_reg_out, MUL_OUT);
	Reg_data: REG11B port map(CLK,Vin,RSTn,DIN,INMUL0);
	
	


END beh;

