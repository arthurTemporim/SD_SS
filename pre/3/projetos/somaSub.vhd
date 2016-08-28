library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somaSub is
	Port (
		A   : in std_logic_vector (2 downto 0) := "011";
		B   : in std_logic_vector (2 downto 0) := "001";
		sel : in std_logic := '0';
		S   : out std_logic_vector (2 downto 0);
		E   : out std_logic
	);
end somaSub;

architecture Behavioral of somaSub is

signal aux   : std_logic_vector (2 downto 0);
signal c     : std_logic;
signal c2    : std_logic;
signal ccomp : std_logic;
signal over  : std_logic;
signal igua  : std_logic;
signal comp1 : std_logic_vector (2 downto 0);
signal comp2 : std_logic_vector (2 downto 0);

begin

	process (a,b,sel,c,c2,comp1,comp2,ccomp,aux, igua)
	begin
		-- Soma
		if (sel = '0') then
			aux(0) <= a(0) xor b(0);
			c <= a(0) and b(0);
			aux(1) <= a(1) xor b(1) xor c;
			aux(2) <= (a(1) and b(1)) or (a(1) and c) or (b(1) and c);
			
			igua <= not(a(0) xor b(0));
			over <= c and igua;
		--subtrai
		else
		-- Aplica complemento de 1 no B
			comp1 <= b xor "111";

		-- Aplica complemento de 2 no B
			comp2(0) <= comp1(0) xor '1';
			ccomp <= comp1(0) and '1';
			comp2(1) <= comp1(1) xor ccomp;
			comp2(2) <= (comp1(1) and '1') or (comp1(1) and ccomp) or ('1' and ccomp);
			
		-- Faz a soma
			aux(0) <= a(0) xor comp2(0);
			c2 <= (a(0) and comp2(0)) or (a(0) and ccomp) or (comp2(0) and ccomp);
			aux(1) <= a(1) xor comp2(1) xor c2;
			aux(2) <= (a(1) and comp2(1)) or (a(1) and c2);
			
			igua <= not(a(0) xor comp2(0));
			over <= c2 and igua;		
		end if;
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