library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto1 is
	port (
		e : in  std_logic_vector (3 downto 0):= "0000";
		s: out std_logic_vector (3 downto 0)
	);
end projeto1;

architecture Behavioral of projeto1 is
signal aux : std_logic_vector (3 downto 0);
begin

aux(0) <= ((not e(1)) and (not e(3))) or ((not e(0)) and e(2)) or (e(0) and (not e(3))) or (e(1) and e(2)) or ((not e(0)) and e(1) and e(3)) or (e(0) and (not e(1)) and (not e(2)));

s <= aux;

end Behavioral;

