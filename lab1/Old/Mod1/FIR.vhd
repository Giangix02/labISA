library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY FIR is
    PORT(CLK,RSTn,VIN: IN std_logic;
                VOUT: OUT std_logic;
            C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10: IN unsigned(10 downto 0);
            DIN: IN unsigned(10 downto 0);
            DOUT: OUT unsigned(10 downto 0)
    );

END FIR;

ARCHITECTURE STRUCTURAL of FIR is
    
    component Adder is
	PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
             Sum: OUT UNSIGNED(10 downto 0)
	);

    END component;

    component Mult is
	PORT(IN0, IN1: IN UNSIGNED(10 downto 0);
             Molt: OUT UNSIGNED(10 downto 0)
	);

    END component;

    Component REG11B IS

	PORT(CLK,EN,RSTn: IN STD_LOGIC;
             Din: IN UNSIGNED(10 downto 0);
	     Dout: OUT UNSIGNED(10 downto 0)     
	     );

    END component;
    Component FF IS

	PORT(D,CLK,EN,RSTn: IN STD_LOGIC;
	     Q: OUT STD_LOGIC     
	     );

    END component;

    signal Coeff0,Coeff1,Coeff2,Coeff3,Coeff4,Coeff5,Coeff6,Coeff7,Coeff8,Coeff9,Coeff10: unsigned(10 downto 0);
    signal AddOut0,AddOut1,AddOut2,AddOut3,AddOut4,AddOut5,AddOut6,AddOut7,AddOut8,AddOut9: unsigned(10 downto 0);
    signal MulOut0,MulOut1,MulOut2,MulOut3,MulOut4,MulOut5,MulOut6,MulOut7,MulOut8,MulOut9,MulOut10: unsigned(10 downto 0);
    signal Regout0,RegOut1,RegOut2,RegOut3,RegOut4,RegOut5,RegOut6,RegOut7,RegOut8,RegOut9,RegOut10: unsigned (10 downto 0);
    signal VINPipe: std_logic;
    Begin

    --Vout <= VINPipe;
    
    mul0: Mult PORT MAP(Coeff0,RegOut0,MulOut0);
    mul1: Mult PORT MAP(Coeff1,RegOut1,MulOut1);
    mul2: Mult PORT MAP(Coeff2,RegOut2,MulOut2);
    mul3: Mult PORT MAP(Coeff3,RegOut3,MulOut3);
    mul4: Mult PORT MAP(Coeff4,RegOut4,MulOut4);
    mul5: Mult PORT MAP(Coeff5,RegOut5,MulOut5);
    mul6: Mult PORT MAP(Coeff6,RegOut6,MulOut6);
    mul7: Mult PORT MAP(Coeff7,RegOut7,MulOut7);
    mul8: Mult PORT MAP(Coeff8,RegOut8,MulOut8);
    mul9: Mult PORT MAP(Coeff9,RegOut9,MulOut9);
    mul10: Mult PORT MAP(Coeff10,RegOut10,MulOut10);

    add0: Adder PORT MAP(Mulout0,MulOut1,AddOut0);
    add1: Adder PORT MAP(AddOut0,MulOut2,AddOut1);
    add2: Adder PORT MAP(AddOut1,MulOut3,AddOut2);
    add3: Adder PORT MAP(AddOut2,MulOut4,AddOut3);
    add4: Adder PORT MAP(AddOut3,MulOut5,AddOut4);
    add5: Adder PORT MAP(AddOut4,MulOut6,AddOut5);
    add6: Adder PORT MAP(AddOut5,MulOut7,AddOut6);
    add7: Adder PORT MAP(AddOut6,MulOut8,AddOut7);
    add8: Adder PORT MAP(AddOut7,MulOut9,AddOut8);
    add9: Adder PORT MAP(AddOut8,MulOut10,AddOut9);

    DataRegIn: REG11B PORT MAP(CLK,VIN,RSTn,DIN,RegOut0);
    FFin: FF PORT MAP (VIN,CLK,'1',RSTn,VINPipe);
    FFout: FF PORT MAP(VinPIPE,CLK,'1',RSTn,VOUT);
    reg1: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut0,RegOut1);
    reg2: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut1,RegOut2);
    reg3: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut2,RegOut3);
    reg4: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut3,RegOut4);
    reg5: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut4,RegOut5);
    reg6: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut5,RegOut6);
    reg7: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut6,RegOut7);
    reg8: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut7,RegOut8);
    reg9: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut8,RegOut9);
    reg10: REG11B PORT MAP(CLK,VINPipe,RSTn,RegOut9,RegOut10);
    DataRegOut: REG11B PORT MAP(CLK,VINPipe,RSTn,AddOut9,DOUT);

    cReg0: REG11B PORT MAP(CLK,VIN,RSTn,C0,Coeff0);
    cReg1: REG11B PORT MAP(CLK,VIN,RSTn,C1,Coeff1);
    cReg2: REG11B PORT MAP(CLK,VIN,RSTn,C2,Coeff2);
    cReg3: REG11B PORT MAP(CLK,VIN,RSTn,C3,Coeff3);
    cReg4: REG11B PORT MAP(CLK,VIN,RSTn,C4,Coeff4);
    cReg5: REG11B PORT MAP(CLK,VIN,RSTn,C5,Coeff5);
    cReg6: REG11B PORT MAP(CLK,VIN,RSTn,C6,Coeff6);
    cReg7: REG11B PORT MAP(CLK,VIN,RSTn,C7,Coeff7);
    cReg8: REG11B PORT MAP(CLK,VIN,RSTn,C8,Coeff8);
    cReg9: REG11B PORT MAP(CLK,VIN,RSTn,C9,Coeff9);
    cReg10: REG11B PORT MAP(CLK,VIN,RSTn,C10,Coeff10);

    end STRUCTURAL;