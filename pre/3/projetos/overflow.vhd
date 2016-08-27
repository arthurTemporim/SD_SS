library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somadorSubtrator is
    Port ( a0	 : in  STD_LOGIC;
           a1	 : in  STD_LOGIC;
           a2	 : in  STD_LOGIC;
           b0	 : in  STD_LOGIC;
           b1	 : in  STD_LOGIC;
           b2 	 : in  STD_LOGIC;
			  sel  : in  STD_LOGIC;
			  s0 	 : out STD_LOGIC;
			  s1 	 : out STD_LOGIC;
			  s2	 : out STD_LOGIC;
			  cout : out STD_LOGIC;
           E	 : out  STD_LOGIC);
			  
end somadorSubtrator;

architecture Behavioral of somadorSubtrator is

begin

process (a0,a1,a2,b0,b1,b2, sel)
begin

	if (sel = '0') then
		--soma
		s0 <= (a0 xor (b0 xor '0'));
	else
		--subtrai
	end if;
end process;
end Behavioral;

