library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY myfir is
	
	PORT(DIN,C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10: IN signed (10 downto 0);
	     VIN,RSTn,clk: in std_logic;
	     DOUT: out signed(10 downto 0);
	     VOUT: out std_logic
	);
END myfir;


ARCHITECTURE struct of myfir is
	
	COMPONENT FF IS

		PORT(D,CLK,EN,RSTn: IN STD_LOGIC;
	     	Q: OUT STD_LOGIC     
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

	COMPONENT AddMultBlockV2
		PORT(DIN, Coeff, DINadd0: IN signed (10 downto 0);
	     	     CLK,RSTn, Vin: IN std_logic;
                     Dout, DATA_REG: OUT signed (10 downto 0)
             );
		
	END COMPONENT;


	type ADDout_arr is array(0 to 9) of signed(10 downto 0);
    	type Dout_reg_arr is array (0 to 10) of signed(10 downto 0);

	signal DoutReg: Dout_reg_arr;
	signal ADDout: Addout_arr;
	signal Coeff0_out, Add0_in: signed(10 downto 0);
	signal mult_out: signed (21 downto 0);
	signal vin_FF_out: std_logic;
	
	

	begin
		

	--VIN->VOUT relation

	VIN_FF: FF port map(VIN,clk,'1',RSTn,vin_FF_out);
	VOUT_FF: FF port map(vin_FF_out,clk,'1',RSTn,VOUT);

       --cell0 (different from the others)

	Data_reg0: REG11B port map(clk,VIN,RSTn,DIN,DoutReg(0));
	Coeff0_reg: REG11B port map(clk,'1',RSTn,C0,Coeff0_out);
	mult0: mult port map(DoutReg(0),Coeff0_out,mult_out);
	Add0_in <= mult_out(20 downto 13) & "000";
	     

    	cell1:      AddMultBlockV2 port map(DoutReg(0),C1,Add0_in,CLK,RSTn,vin_FF_out,Addout(0),DoutReg(1));
	cell2: 	    AddMultBlockV2 port map(DoutReg(1),C2,Addout(0),CLK,RSTn,vin_FF_out,Addout(1),DoutReg(2));
	cell3: 	    AddMultBlockV2 port map(DoutReg(2),C3,Addout(1),CLK,RSTn,vin_FF_out,Addout(2),DoutReg(3));
	cell4: 	    AddMultBlockV2 port map(DoutReg(3),C4,Addout(2),CLK,RSTn,vin_FF_out,Addout(3),DoutReg(4));
	cell5: 	    AddMultBlockV2 port map(DoutReg(4),C5,Addout(3),CLK,RSTn,vin_FF_out,Addout(4),DoutReg(5));
	cell6: 	    AddMultBlockV2 port map(DoutReg(5),C6,Addout(4),CLK,RSTn,vin_FF_out,Addout(5),DoutReg(6));
	cell7: 	    AddMultBlockV2 port map(DoutReg(6),C7,Addout(5),CLK,RSTn,vin_FF_out,Addout(6),DoutReg(7));
	cell8: 	    AddMultBlockV2 port map(DoutReg(7),C8,Addout(6),CLK,RSTn,vin_FF_out,Addout(7),DoutReg(8));
	cell9: 	    AddMultBlockV2 port map(DoutReg(8),C9,Addout(7),CLK,RSTn,vin_FF_out,Addout(8),DoutReg(9));
	cell10:     AddMultBlockV2 port map(DoutReg(9),C10,Addout(8),CLK,RSTn,vin_FF_out,Addout(9),DoutReg(10));


	
        output_register: REG11B port map(clk,vin_FF_out,RSTn,Addout(9),DOUT);

	
END struct;