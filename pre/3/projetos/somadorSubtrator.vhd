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
			  cout0 : out STD_LOGIC;
			  cout1 : out STD_LOGIC;
           E	 : out  STD_LOGIC);
			  
end somadorSubtrator;

architecture Behavioral of somadorSubtrator is

signal caux      : std_logic;
signal comp0     : std_logic;
signal comp1     : std_logic;
signal comp2     : std_logic;
signal compdois0 : std_logic;
signal compdois1 : std_logic;
signal compdois2 : std_logic;

begin

process (a0,a1,a2,b0,b1,b2, sel)
begin

	if (sel = '0') then
		--soma
		if (a2 = '0') and (b2 = '0') then
			s0 <= (a0 xor (b0 xor '0'));
			caux <= a0 and b0;
			s1 <= (a1 xor (b1 xor caux));
			cout1 <= (a0 and b0) or (a0 and caux) or (b0 and caux);
			s2 <= a2;
		elsif (a2 = '1') then
			-- a é negativo
			comp0 = (a0 xor '1');
			comp1 = (a1 xor '1');
			comp2 = (a2 xor '1');
			
			compdois0 <= (a0 xor '1');
			caux <= a0 and '1';
			compdois1 <= (a1 xor ('1' xor caux));
			cout1 <= (a0 and '1') or (a0 and caux) or ('1' and caux);
			s2 <= a2;
		elsif (b2 = '1') then
			-- b é negativo
		end if;
	else
		--subtrai
	end if;
end process;
end Behavioral;

