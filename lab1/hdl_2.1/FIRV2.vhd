library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY FIRV2 is
	
	PORT(DIN,C0,C1,C2,C3,C4,C5,C6,C7,C8,C9: IN unsigned (10 downto 0);
	     VIN,RSTn,clk: in std_logic;
	     DOUT: out unsigned(10 downto 0);
	     VOUT: out std_logic
	);
	

END FIRV2;

ARCHITECTURE struct of FIRV2 is
	
	--COMPONENT Adder
		--PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
        --     	     Sum: OUT UNSIGNED(10 downto 0)
		--	);
	--END COMPONENT;

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

	COMPONENT AddMultBlock
		PORT(DIN, Coeff, DINadd0: IN UNSIGNED (10 downto 0);
	     	     CLK,RSTn, Vin: IN std_logic;
                     Dout, DATA_REG: OUT unsigned (10 downto 0)
             );
		
	END COMPONENT;


	type ADDout_arr is array(0 to 8) of unsigned(10 downto 0);
        type Dout_reg_arr is array (0 to 9) of unsigned(10 downto 0);

	signal DoutReg: Dout_reg_arr;
	signal ADDout: Addout_arr;
	signal Coeff0_out, Add0_in: unsigned(10 downto 0);
	signal mult_out: unsigned (21 downto 0);
	
	

	begin
		
	VOUT <= VIN;

       --cell0 (different from the others)

	Data_reg0: REG11B port map(clk,VIN,RSTn,DIN,DoutReg(0));
	Coeff_reg0: REG11B port map(clk,VIN,RSTn,C0,Coeff0_out);
	mult0: mult port map(DoutReg(0),Coeff0_out,mult_out);
	Add0_in <= "00" & mult_out(21 downto 13);

     

        cell1:      AddMultBlock port map(DoutReg(0),C1,Add0_in,CLK,RSTn,VIN,Addout(0),DoutReg(1));
	cell2: 	    AddMultBlock port map(DoutReg(1),C2,Addout(0),CLK,RSTn,VIN,Addout(1),DoutReg(2));
	cell3: 	    AddMultBlock port map(DoutReg(1),C3,Addout(1),CLK,RSTn,VIN,Addout(2),DoutReg(3));
	cell4: 	    AddMultBlock port map(DoutReg(1),C4,Addout(2),CLK,RSTn,VIN,Addout(3),DoutReg(4));
	cell5: 	    AddMultBlock port map(DoutReg(1),C5,Addout(3),CLK,RSTn,VIN,Addout(4),DoutReg(5));
	cell6: 	    AddMultBlock port map(DoutReg(1),C6,Addout(4),CLK,RSTn,VIN,Addout(5),DoutReg(6));
	cell7: 	    AddMultBlock port map(DoutReg(1),C7,Addout(5),CLK,RSTn,VIN,Addout(6),DoutReg(7));
	cell8: 	    AddMultBlock port map(DoutReg(1),C8,Addout(6),CLK,RSTn,VIN,Addout(7),DoutReg(8));
	cell9: 	    AddMultBlock port map(DoutReg(1),C9,Addout(7),CLK,RSTn,VIN,Addout(8),DoutReg(9));
	
        output_register: REG11B port map(clk,VIN,RSTn,Addout(8),DOUT);

	
END struct;