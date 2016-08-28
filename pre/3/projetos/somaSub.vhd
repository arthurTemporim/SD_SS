library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somaSub is
	Port (
		A   : in std_logic_vector (2 downto 0) := "001";
		B   : in std_logic_vector (2 downto 0) := "001";
		sel : in std_logic := '0';
		S   : out std_logic_vector (2 downto 0);
		E   : out std_logic
	);
end somaSub;

architecture Behavioral of somaSub is

signal aux   : std_logic_vector (2 downto 0);
signal c     : std_logic;
signal over  : std_logic;
--signal comp1 : std_logic_vector (2 downto 0);
--signal comp2 : std_logic_vector (2 downto 0);

begin

	process (a,b,sel)
	begin
		-- Soma
		if (sel = '0') then
			aux(0) <= a(0) xor b(0);
			c <= a(0) and b(0);
			aux(1) <= a(1) xor b(1) xor c;
			aux(2) <= (a(1) and b(1)) or (a(1) and c) or (b(1) and c);
			
			over <= c xor aux(2);
		--subtrai
		else
		end if;
--		s <= aux(2 downto 0);
	end process;
	
	e <= over;
	s <= aux;
end Behavioral;

--Soma1
-- aux(0) <= a(0) xor b(0);
-- c(1) <= a(0) and b(0);

--Soma2
-- aux(1) <= a(1) xor b(1) xor c(1);
-- aux(2) <= a(1) and b(1) or a(1) and c(1) or b(1) and c(1);



--Complemento1
--comp1(0) <= a(0) xor '1';
--comp1(1) <= a(1) xor '1';
--comp1(2) <= a(2) xor '1';

--Complemento2
-- comp2(1) <= a(0) xor b(0);
-- c(1) <= a(0) and b(0);
-- comp2(0) <= a(1) xor b(1) xor c(1);
-- c(2) <= a(1) and b(1) or a(1) and c(1) or b(1) and c(1);

--Overflow
-- e <= c(0) xor aux(2);