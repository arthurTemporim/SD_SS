library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto1 is
	port(
	a : in STD_LOGIC;	
	b : in STD_LOGIC;	
	c : in STD_LOGIC;	
	d : in STD_LOGIC;	
	
	s0 : out STD_LOGIC;	
	s1 : out STD_LOGIC;	
	s2 : out STD_LOGIC;	
	s3 : out STD_LOGIC;
	s4 : out STD_LOGIC;
	s5 : out STD_LOGIC;
	s6 : out STD_LOGIC;
	);
end projeto1;

architecture Behavioral of projeto1 is
begin

process (e)
	begin 
	s0 <= c or a or (not b) and (not d)) or b and d;
	s1 <= (not b) or ((not c) and (not d)) or (b and d);
	s2 <= (not c) or b or d;
	s3 <= a or ((not b) and (not d)) or (not b) and c) or (a and (not b) and c and d);
	s4 <= (not b) and ((not d) or b) and (not d);
	s5 <= a or ((not c) and (not d)) or ((not b) and c) or (b and (not d));
	s6 <= a or (b and ((not d) or b));
end process;
end Behavioral;

