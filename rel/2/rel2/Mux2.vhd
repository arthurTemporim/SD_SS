library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           S : out  STD_LOGIC);
end Mux2;

architecture Behavioral of Mux2 is

begin

mux: process (A, B, Sel)
begin
	if (Sel = '0') then
			S <= A;
		else
			S <= B;
	end if;
end process;

end Behavioral;