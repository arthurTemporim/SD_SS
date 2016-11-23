library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prova is
	port(
		entrada : in std_logic_vector (6 downto 0) := "0000000";
		display : out std_logic_vector (6 downto 0)
	);
end prova;

architecture Behavioral of prova is

signal bcd : std_logic_vector (6 downto 0);

begin

-- BCD.
process (entrada)
begin
	if 	(entrada = "0000000") then -- 0
		bcd <= "1111110";
	elsif (entrada = "0000001") then -- 1
		bcd <= "0110000";
	elsif (entrada = "0000010") then -- 2
		bcd <= "1101101";
	elsif (entrada = "0000100") then -- 3
		bcd <= "1111001";
	elsif (entrada = "0001000") then -- 4
		bcd <= "0110010";
	elsif (entrada = "0010000") then -- 5
		bcd <= "1011010";
	elsif (entrada = "0100000") then -- 6
		bcd <= "1011111";
	else
		bcd <= "1110000";
	end if;
end process;

display <= bcd;

end Behavioral;

	