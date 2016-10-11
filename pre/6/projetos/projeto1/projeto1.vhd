library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto1 is
	port (
		siw : in  std_logic_vector (7 downto 0) := "00000000";
		led : out std_logic_vector (7 downto 0)
	);
end projeto1;

architecture Behavioral of projeto1 is

begin

led(0) <= (not siw(0));
led(1) <= siw(1) and (not siw(2));
led(2) <= siw(1) or siw(3);
led(3) <= siw(2) and siw(3);
led(4) <= siw(4);
led(5) <= siw(5);
led(6) <= siw(6);
led(7) <= siw(7);

end Behavioral;