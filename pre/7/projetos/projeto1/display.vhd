library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display is
	port (
		a   : in  std_logic_vector (3 downto 0) := "0001";		-- Entrada A.
		clk : in  std_logic							 := '0';			-- Clock.
		display1 : out  std_logic_vector (6 downto 0)
	);
end display;

architecture Behavioral of display is

signal bcd : std_logic_vector (6 downto 0); -- BCD.

begin

-- BCD.
process (a, bcd, clk)
begin
	if (rising_edge(clk)) then
		if 	(a = "0000") then -- 0
			bcd <= "1111110";
		elsif (a = "0001") then -- 1
			bcd <= "0110000";
		elsif (a = "0010") then -- 2
			bcd <= "1101101";
		elsif (a = "0011") then -- 3
			bcd <= "1111001";
		elsif (a = "0100") then -- 4
			bcd <= "0110010";
		elsif (a = "0101") then -- 5
			bcd <= "1011010";
		elsif (a = "0110") then -- 6
			bcd <= "1011111";
		elsif (a = "0111") then -- 7
			bcd <= "1110000";
		elsif (a = "1000") then -- 8
			bcd <= "1111111";
		elsif (a = "1001") then -- 9
			bcd <= "1111011";
		elsif (a = "1010") then -- A
			bcd <= "1110111";
		elsif (a = "1011") then -- B
			bcd <= "0011111";
		elsif (a = "1100") then -- C
			bcd <= "1001110";
		elsif (a = "1101") then -- D
			bcd <= "0111101";
		elsif (a = "1110") then -- E
			bcd <= "1001111";
		else
			bcd <= "1000111"; -- Caso defaul -> 'F'
		end if;
	end if;
end process;
display1 <= bcd;

end Behavioral;
