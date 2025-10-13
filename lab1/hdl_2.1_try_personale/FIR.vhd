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

    signal MulIn0,MulIn1,MulIn2,MulIn3,MulIn4,MulIn5,MulIn6,MulIn7,MulIn8,MulIn9,MulIn10:unsigned(10 downto 0);
    --signal AddIn0,AddIn1,AddIn2,AddIn3,AddIn4,AddIn5,AddIn6,AddIn7,AddIn8,AddIn9: unsigned(10 downto 0);
    signal AddOut0,AddOut1,AddOut2,AddOut3,AddOut4,AddOut5,AddOut6,AddOut7,AddOut8,AddOut9: unsigned(10 downto 0);
    signal MulOut0,MulOut1,MulOut2,MulOut3,MulOut4,MulOut5,MulOut6,MulOut7,MulOut8,MulOut9,MulOut10: unsigned(10 downto 0);
    signal Regout0,RegOut1,RegOut2,RegOut3,RegOut4,RegOut5,RegOut6,RegOut7,RegOut8,RegOut9: unsigned (10 downto 0);

    Begin

    Vout <= Vin;
    
    mul0: Mult PORT MAP(C0,MulIn0,MulOut0);
    mul1: Mult PORT MAP(C1,MulIn1,MulOut1);
    mul2: Mult PORT MAP(C2,MulIn2,MulOut2);
    mul3: Mult PORT MAP(C3,MulIn3,MulOut3);
    mul4: Mult PORT MAP(C4,MulIn4,MulOut4);
    mul5: Mult PORT MAP(C5,MulIn5,MulOut5);
    mul6: Mult PORT MAP(C6,MulIn6,MulOut6);
    mul7: Mult PORT MAP(C7,MulIn7,MulOut7);
    mul8: Mult PORT MAP(C8,MulIn8,MulOut8);
    mul9: Mult PORT MAP(C9,MulIn9,MulOut9);
    mul10: Mult PORT MAP(C10,MulIn10,MulOut10);
    add0: Adder PORT MAP(Mulout0,RegOut0,AddOut0);
    add1: Adder PORT MAP(MulOut1,RegOut1,AddOut1);
    add2: Adder PORT MAP(MulOut2,RegOut2,AddOut2);
    add3: Adder PORT MAP(MulOut3,RegOut3,AddOut3);
    add4: Adder PORT MAP(MulOut4,RegOut4,AddOut4);
    add5: Adder PORT MAP(MulOut5,RegOut5,AddOut5);
    add6: Adder PORT MAP(MulOut6,RegOut6,AddOut6);
    add7: Adder PORT MAP(MulOut7,RegOut7,AddOut7);
    add8: Adder PORT MAP(MulOut8,RegOut8,AddOut8);
    add9: Adder PORT MAP(MulOut9,RegOut9,AddOut9);
    reg0: REG11B PORT MAP(CLK,VIN,RSTn,DIN,RegOut0);
    reg1: REG11B PORT MAP(CLK,VIN,RSTn,RegOut0,RegOut1);
    reg2: REG11B PORT MAP(CLK,VIN,RSTn,RegOut1,RegOut2);
    reg3: REG11B PORT MAP(CLK,VIN,RSTn,RegOut2,RegOut3);
    reg4: REG11B PORT MAP(CLK,VIN,RSTn,RegOut3,RegOut4);
    reg5: REG11B PORT MAP(CLK,VIN,RSTn,RegOut4,RegOut5);
    reg6: REG11B PORT MAP(CLK,VIN,RSTn,RegOut5,RegOut6);
    reg7: REG11B PORT MAP(CLK,VIN,RSTn,RegOut6,RegOut7);
    reg8: REG11B PORT MAP(CLK,VIN,RSTn,RegOut7,RegOut8);
    reg9: REG11B PORT MAP(CLK,VIN,RSTn,RegOut8,RegOut9);

    DOUT <= AddOut9;

    end STRUCTURAL;