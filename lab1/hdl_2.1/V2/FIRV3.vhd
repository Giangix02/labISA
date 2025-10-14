library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY FIRV3 is
	
	PORT(DIN,C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10: IN signed (10 downto 0);
	     VIN,RSTn,clk: in std_logic;
	     DOUT: out signed(10 downto 0);
	     VOUT: out std_logic
	);
	

END FIRV3;

ARCHITECTURE struct of FIRV3 is
	

        COMPONENT Mult
		PORT(IN0, IN1: IN signed(11 downto 0);
             	     Molt: OUT signed(23 downto 0)
			);
        END COMPONENT;

	COMPONENT REG12B 
		PORT(CLK,EN,RSTn: IN STD_LOGIC;
                     Din: IN signed(11 downto 0);
	             Dout: OUT signed(11 downto 0)     
	     		);
	END COMPONENT;

	COMPONENT REG11B 
		PORT(CLK,EN,RSTn: IN STD_LOGIC;
                     Din: IN signed(10 downto 0);
	             Dout: OUT signed(10 downto 0)     
	     		);
	END COMPONENT;

	COMPONENT AddMultBlockV2
		PORT(DIN, Coeff, DINadd0: IN signed (11 downto 0);
	     	     CLK,RSTn, Vin: IN std_logic;
                     Dout, DATA_REG: OUT signed (11 downto 0)
             );
		
	END COMPONENT;


	type ADDout_arr is array(0 to 9) of signed(11 downto 0);
    	type Dout_reg_arr is array (0 to 10) of signed(11 downto 0);
	type Coeff_reg_arr is array (0 to 10) of signed(11 downto 0);

	signal DoutReg: Dout_reg_arr;
	signal ADDout: Addout_arr;
	signal Add0_in, DIN12B, addout9: signed(11 downto 0);
	signal addout9_11bit: signed(10 downto 0);
	signal mult_out: signed (23 downto 0);
	signal C_12bit: Coeff_reg_arr;
	
	

	begin
		
	VOUT <= VIN;
	DIN12B <= DIN(10) & DIN; --expanding DIN from 11 to 12bit


	--extending coefficients to 12 bits
	C_12bit(0) <= C0(10) & C0;
	C_12bit(1) <= C1(10) & C1;
	C_12bit(2) <= C2(10) & C2;
	C_12bit(3) <= C3(10) & C3;
	C_12bit(4) <= C4(10) & C4;
	C_12bit(5) <= C5(10) & C5;
	C_12bit(6) <= C6(10) & C6;
	C_12bit(7) <= C7(10) & C7;
	C_12bit(8) <= C8(10) & C8;
	C_12bit(9) <= C9(10) & C9;
	C_12bit(10) <= C10(10) & C10;


       --cell0 (different from the others)

	Data_reg0: REG12B port map(clk,VIN,RSTn,DIN12B,DoutReg(0));

	mult0: mult port map(DoutReg(0),C_12bit(0),mult_out);
	Add0_in <= mult_out(21 downto 13) & "000";

	
	

     


    	cell1:      AddMultBlockV2 port map(DoutReg(0),C_12bit(0),Add0_in,CLK,RSTn,VIN,Addout(0),DoutReg(1));
	cell2: 	    AddMultBlockV2 port map(DoutReg(1),C_12bit(1),Addout(0),CLK,RSTn,VIN,Addout(1),DoutReg(2));
	cell3: 	    AddMultBlockV2 port map(DoutReg(2),C_12bit(2),Addout(1),CLK,RSTn,VIN,Addout(2),DoutReg(3));
	cell4: 	    AddMultBlockV2 port map(DoutReg(3),C_12bit(3),Addout(2),CLK,RSTn,VIN,Addout(3),DoutReg(4));
	cell5: 	    AddMultBlockV2 port map(DoutReg(4),C_12bit(4),Addout(3),CLK,RSTn,VIN,Addout(4),DoutReg(5));
	cell6: 	    AddMultBlockV2 port map(DoutReg(5),C_12bit(5),Addout(4),CLK,RSTn,VIN,Addout(5),DoutReg(6));
	cell7: 	    AddMultBlockV2 port map(DoutReg(6),C_12bit(6),Addout(5),CLK,RSTn,VIN,Addout(6),DoutReg(7));
	cell8: 	    AddMultBlockV2 port map(DoutReg(7),C_12bit(7),Addout(6),CLK,RSTn,VIN,Addout(7),DoutReg(8));
	cell9: 	    AddMultBlockV2 port map(DoutReg(8),C_12bit(9),Addout(7),CLK,RSTn,VIN,Addout(8),DoutReg(9));
	cell10:     AddMultBlockV2 port map(DoutReg(9),C_12bit(10),Addout(8),CLK,RSTn,VIN,Addout(9),DoutReg(10));

	addout9 <= addout(9);
	addout9_11bit <= addout9(11 downto 1);	
        output_register: REG11B port map(clk,VIN,RSTn,Addout9_11bit,DOUT); --note: before it was addout(8)

	
END struct;