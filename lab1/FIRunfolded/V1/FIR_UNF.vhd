library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

ENTITY FIR_UNF is
	
	PORT(DIN3k, DIN3k1, DIN3k2, C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10: IN signed (10 downto 0);
	     VIN,RSTn,clk: in std_logic;
	     DOUT3k, DOUT3k1, DOUT3k2: out signed(10 downto 0);
	     VOUT: out std_logic
	);
	

END FIR_UNF;

ARCHITECTURE struct of FIR_UNF is

	COMPONENT REG11B
		PORT(CLK,EN,RSTn: IN STD_LOGIC;
         	Din: IN signed(10 downto 0);
	        Dout: OUT signed(10 downto 0));
	END COMPONENT;

	COMPONENT jSeries
	        PORT(IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,IN10 : IN SIGNED (10 DOWNTO 0);
	        C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10 : IN SIGNED (10 DOWNTO 0);
	        DATA_OUT: OUT SIGNED (10 DOWNTO 0));
	END COMPONENT;


	COMPONENT FF 
		PORT(D,CLK,EN,RSTn: IN STD_LOGIC;
	    	 Q: OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL C0_out, C1_out, C2_out, C3_out, C4_out, C5_out, C6_out, C7_out, C8_out, C9_out, C10_out : SIGNED (10 DOWNTO 0);
	SIGNAL i0_R0_out, i0_R1_out, i0_R2_out, i1_R0_out, i1_R1_out, i1_R2_out, i2_R0_out, i2_R1_out, i2_R2_out, i2_R3_out: SIGNED (10 DOWNTO 0);
	SIGNAL DIN3k_out, DIN3k1_out, DIN3k2_out : signed (10 downto 0);
	SIGNAL J0_OUT, J1_OUT, J2_OUT : SIGNED (10 DOWNTO 0);
	SIGNAL ff_vin_out : std_logic;

	BEGIN

	REGC0: REG11B PORT MAP(clk,VIN,RSTn,C0,C0_out);
	REGC1: REG11B PORT MAP(clk,VIN,RSTn,C1,C1_out);
	REGC2: REG11B PORT MAP(clk,VIN,RSTn,C2,C2_out);
	REGC3: REG11B PORT MAP(clk,VIN,RSTn,C3,C3_out);
	REGC4: REG11B PORT MAP(clk,VIN,RSTn,C4,C4_out);
	REGC5: REG11B PORT MAP(clk,VIN,RSTn,C5,C5_out);
	REGC6: REG11B PORT MAP(clk,VIN,RSTn,C6,C6_out);
	REGC7: REG11B PORT MAP(clk,VIN,RSTn,C7,C7_out);
	REGC8: REG11B PORT MAP(clk,VIN,RSTn,C8,C8_out);
	REGC9: REG11B PORT MAP(clk,VIN,RSTn,C9,C9_out);
	REGC10: REG11B PORT MAP(clk,VIN,RSTn,C10,C10_out);

	i0_R0: REG11B PORT MAP(clk,VIN,RSTn,DIN3k_out, i0_R0_out);
	i0_R1: REG11B PORT MAP(clk,VIN,RSTn,i0_R0_out, i0_R1_out);
	i0_R2: REG11B PORT MAP(clk,VIN,RSTn,i0_R1_out, i0_R2_out);


	i1_R0: REG11B PORT MAP(clk,VIN,RSTn,DIN3k1_out, i1_R0_out);
	i1_R1: REG11B PORT MAP(clk,VIN,RSTn,i1_R0_out, i1_R1_out);
	i1_R2: REG11B PORT MAP(clk,VIN,RSTn,i1_R1_out, i1_R2_out);

	i2_R0: REG11B PORT MAP(clk,VIN,RSTn,DIN3k2_out, i2_R0_out);
	i2_R1: REG11B PORT MAP(clk,VIN,RSTn,i2_R0_out, i2_R1_out);
	i2_R2: REG11B PORT MAP(clk,VIN,RSTn,i2_R1_out, i2_R2_out);
	i2_R3: REG11B PORT MAP(clk,VIN,RSTn,i2_R2_out, i2_R3_out);

	DIN3k_REG: REG11B port map(clk,VIN,RSTn,DIN3k,DIN3k_out);
	DIN3k1_REG: REG11B port map(clk,VIN,RSTn,DIN3k1,DIN3k1_out);
	DIN3k2_REG: REG11B port map(clk,VIN,RSTn,DIN3k2,DIN3k2_out);

	DOUT3k_REG: REG11B port map(clk,VIN,RSTn,J0_OUT,DOUT3k);
	DOUT3k1_REG: REG11B port map(clk,VIN,RSTn,J1_OUT,DOUT3k1);
	DOUT3k2_REG: REG11B port map(clk,VIN,RSTn,J2_OUT,DOUT3k2);

	FF_VIN: FF port map(VIN,clk,'1',RSTn,ff_vin_out);
	FF_VOUT: FF port map(ff_vin_out,clk,'1',RSTn,VOUT);


	j0: jSeries port map(DIN3K_out, i2_R0_out, i1_R0_out, i0_R0_out, i2_R1_out, i1_R1_out, i0_R1_out, i2_R2_out, i1_R2_out, i0_R2_out, i2_R3_out, 
			     C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10, J0_OUT);

	j1: jSeries port map(DIN3K1_out, DIN3K_out, i2_R0_out, i1_R0_out, i0_R0_out, i2_R1_out, i1_R1_out, i0_R1_out, i2_R2_out, i1_R2_out, i0_R2_out, 
			     C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10, J1_OUT);

	j2: jSeries port map(DIN3K2_out, DIN3K1_out, DIN3K_out, i2_R0_out, i1_R0_out, i0_R0_out, i2_R1_out, i1_R1_out, i0_R1_out, i2_R2_out, i1_R2_out, 
			     C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10, J2_OUT);




end struct;