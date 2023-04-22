
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity full_adder is
    Port ( f_in1 : in STD_LOGIC;
           f_in2 : in STD_LOGIC;
           f_cin : in STD_LOGIC;
           f_sum : out STD_LOGIC;
           f_carry : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
    
signal s1,c1,c2 : std_logic := '0';
    
begin
    HA1 : entity work.half_adder port map(f_in1, f_in2, s1, c1);
    HA2 : entity work.half_adder port map(in1 => s1,
                                          in2 => f_cin,
                                          sum => f_sum,
                                          carry => c2
                                          );
    f_carry <= c1 or c2;

end Behavioral;
