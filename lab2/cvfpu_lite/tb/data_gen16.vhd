library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity data_gen16 is  
  port (
    CLK   : in std_logic;
    RST_n : in std_logic;
    D0    : out std_logic_vector(15 downto 0);
    D1    : out std_logic_vector(15 downto 0);
    D2    : out std_logic_vector(15 downto 0);
    VOUT  : out std_logic;
    END_SIM : out std_logic);
end entity data_gen16;

architecture beh of data_gen16 is

  constant tco : time := 1 ns;

  type tval_t is array (0 to 9) of std_logic_vector(15 downto 0);
  constant ctvalA : tval_t := (
    ('0' & conv_std_logic_vector(127+2, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  --7
    ('0' & conv_std_logic_vector(127+4, 8) & conv_std_logic_vector(9, 4) & conv_std_logic_vector(0, 7-4)),  --25
    ('0' & conv_std_logic_vector(127+7, 8) & conv_std_logic_vector(0, 7)),  --128
    ('0' & conv_std_logic_vector(127+9, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  --896
    ('0' & conv_std_logic_vector(127+6, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  --112

    ('1' & conv_std_logic_vector(127+6, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  -- -112
    ('1' & conv_std_logic_vector(127+9, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  -- -896
    ('1' & conv_std_logic_vector(127+2, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)), -- -7
    ('1' & conv_std_logic_vector(127+4, 8) & conv_std_logic_vector(9, 4) & conv_std_logic_vector(0, 7-4)), -- -25
    ('1' & conv_std_logic_vector(127+7, 8) & conv_std_logic_vector(0, 7))  -- -128    
    );  

  constant ctvalB : tval_t := (
    ('1' & conv_std_logic_vector(127+9, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  -- -896
    ('0' & conv_std_logic_vector(127+4, 8) & conv_std_logic_vector(9, 4) & conv_std_logic_vector(0, 7-4)),  --25
    ('0' & conv_std_logic_vector(127+7, 8) & conv_std_logic_vector(0, 7)),  --128
    ('1' & conv_std_logic_vector(127+6, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  -- -112

    ('1' & conv_std_logic_vector(127+2, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)), -- -7
    ('1' & conv_std_logic_vector(127+4, 8) & conv_std_logic_vector(9, 4) & conv_std_logic_vector(0, 7-4)), -- -25
    ('0' & conv_std_logic_vector(127+9, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  --896
    ('1' & conv_std_logic_vector(127+7, 8) & conv_std_logic_vector(0, 7)),  -- -128
    ('0' & conv_std_logic_vector(127+2, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2)),  --7 
    ('0' & conv_std_logic_vector(127+6, 8) & conv_std_logic_vector(3, 2) & conv_std_logic_vector(0, 7-2))  --112                                                                           -- 
    );

  constant ctvalC : tval_t := (
    ("1100010111000100"),  -- -6272 
    ("0100010000011100"),  -- 624 
    ("0100011010000000"),  -- 16384 
    ("1100011111000100"),  -- -100352 
    ("1100010001000100"),  -- -784 
    ("0100010100101111"),  -- 2800 
    ("1100100101000100"),  -- -802816 
    ("0100010001100000"),  -- -896 
    ("1100001100101111"),  -- -175 
    ("1100011001100000"));  -- -14336  
     
  
  signal cnt : integer := 0;
  signal sEnd_sim : std_logic;

  signal sEnd_sim_pipe : std_logic_vector(9 downto 0);
  
begin  -- architecture beh

  process (CLK, RST_n) is
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      cnt <= 0;  
      D0 <= (others => '0');
      D1 <= (others => '0');
      D2 <= (others => '0');
      VOUT <= '0';
      sEnd_sim <= '0';
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      if (cnt < 10) then
        cnt <= cnt + 1 after tco;
        D0 <= ctvalA(cnt) after tco;
        D1 <= ctvalB(cnt) after tco;
	D2 <= ctvalC(cnt) after tco;
        VOUT <= '1' after tco;
        sEnd_sim <= '0' after tco;          
      else
        VOUT <= '0' after tco;
        sEnd_sim <= '1' after tco;
      end if;
    end if;
  end process;

  process (CLK, RST_n) is
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      sEnd_sim_pipe <= (others => '0');
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      sEnd_sim_pipe(0) <= sEnd_sim after tco;
      sEnd_sim_pipe(9 downto 1) <= sEnd_sim_pipe(8 downto 0) after tco;
    end if;
  end process;

  END_SIM <= sEnd_sim_pipe(9);

end beh;
