library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento1 is
    Port ( e0 : in  STD_LOGIC;
			  e1 : in  STD_LOGIC;
           e2 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
			  s0 : out  STD_LOGIC;
           s1 : out  STD_LOGIC;
           s2 : out  STD_LOGIC);
end complemento1;

architecture Behavioral of complemento1 is

begin

process (e0,e1,e2,sel)
	begin
		if (sel = '1') then
			s0 <= e0 xor '1';
			s1 <= e1 xor '1';
			s2 <= e2 xor '1';
		else
			s0 <= e0;
			s1 <= e1;
			s2 <= e2;
		end if;
end process;

end Behavioral;

