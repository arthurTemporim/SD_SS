library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto1 is
	port(
		e : in  std_logic_vector (3 downto 0) := "0000";
		s : out std_logic_vector (6 downto 0)
	);
end projeto1;

architecture Behavioral of projeto1 is
begin

process (e)
	begin 
		s(0) <= e(2) or e(0) or (not e(1)) and (not e(3)) or e(1) and e(3);
		s(1) <= (not e(1)) or ((not e(2)) and (not e(3))) or (e(2) and e(3));
		s(2) <= (not e(2)) or e(1) or e(3);
		s(3) <= e(0) or ((not e(1)) and (not e(3))) or ((not e(1)) and e(2)) or (e(0) and (not e(1)) and e(2) and e(3));
		s(4) <= (not e(1)) and ((not e(3)) or e(2)) and (not e(3));
		s(5) <= e(0) or ((not e(2)) and (not e(3))) or ((not e(1)) and e(2)) or (e(1) and (not e(3)));
		s(6) <= e(0) or (e(2) and ((not e(3)) or e(1)));
end process;
end Behavioral;

