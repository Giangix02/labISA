library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY FIR is
	
	type Coeff_mat is array(0 to 9) of unsigned(10 downto 0);
	PORT(DIN: IN unsigned (10 downto 0);
	     Coeff: IN Coeff_mat;
	     VIN,RSTn: in std_logic;
	     DOUT: out unsigned(10 downto 0);
	     VOUT: out std_logic;
	);


END FIR;

ARCHITECTURE struct of FIR is
	
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
	END COMPONENT

	COMPONENT AddMultBlock
		PORT(DIN, Coeff, DINadd0, DATA_REG: IN UNSIGNED (10 downto 0);
	     	     CLK,RSTn, Vin: IN std_logic;
                     Dout: OUT unsigned (10 downto 0)
             );
		
	END COMPONENT;


	type ADDout_arr is array(0 to 8) of unsigned(10 downto 0);
        type DIN_arr is array (1 to 9) of unsigned(10 downto 0);

	signal DINARR: DIN_arr;
	signal ADDout: Addout_arr;
	signal Data_reg0_out, Coeff0_out, Add0_in: unsigned(9 downto 0);
	signal mult_out: unsigned (21 downto 0);
	
	

	begin
		
	
	--first block 
	

	filter: for i in 1 to 9 generate
	   filter_block_0: if i = 0 generate
		Data_reg0: REG11B port map(clk,VIN,RSTn,DIN,Data_reg0_out);
		Coeff_reg0: REG11B port map(clk,VIN,RSTn,Coeff(0),Coeff0_out);
		mult0: mult port map(Data_reg0_out,Coeff0_out,mult_out);

		Add0_in <= "00" & mult_out(21 downto 13);
           end generate filter_block_0;

	   filter_block_1: if i = 1 generate
                first_cell: AddMultBlock port map(Data_reg0_out,Coeff(1),Add0_in,,CLK,RSTn,VIN,Addout(0));
	   end generate filter_block_1;

	   filter_block_i: if i>1 generate
		cell_i: AddMultBlock port map(mult_out,Coeff(1),Add0_in,CLK,RSTn,VIN,Addout(0));
	   end generate filter_block_i;
	

	    
		

        end generate;
	
	
END struct;