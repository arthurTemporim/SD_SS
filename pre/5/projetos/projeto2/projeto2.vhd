library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto2 is
	port (
		a   : in  std_logic_vector (3 downto 0) := "0000";		-- Entrada A.
		b   : in  std_logic_vector (3 downto 0) := "0000";		-- Entrada B.
		clk : in  std_logic							 := '0';			-- Clock.
		s_m : out std_logic_vector (3 downto 0)					-- Saida Mux 8->4.
	);
end projeto2;

architecture Behavioral of projeto2 is

signal saida_mux : std_logic_vector (3 downto 0);
signal bcd 		  : std_logic_vector (6 downto 0); -- BCD de A.
signal bcd2		  : std_logic_vector (6 downto 0); -- BCD de B.

begin

-- Mux 8->4.
process (a,b)
begin
	if (clk = '0') then
		saida_mux <= a;
	else
		saida_mux <= b;
	end if;
end process;

-- BCD de A.
process (a,b)
begin
	if 	(a = "0000" or b = "0000") then -- 0
		bcd <= "1111110";
	elsif (a = "0001" or b = "0001") then -- 1
		bcd <= "0110000";
	elsif (a = "0010" or b = "0010") then -- 2
		bcd <= "1101101";
	elsif (a = "0011" or b = "0011") then -- 3
		bcd <= "1111001";
	elsif (a = "0100" or b = "0100") then -- 4
		bcd <= "0110010";
	elsif (a = "0101" or b = "0101") then -- 5
		bcd <= "1011010";
	elsif (a = "0110" or b = "0110") then -- 6
		bcd <= "1011111";
	elsif (a = "0111" or b = "0111") then -- 7
		bcd <= "1110000";
	elsif (a = "1000" or b = "1000") then -- 8
		bcd <= "1111111";
	elsif (a = "1001" or b = "1001") then -- 9
		bcd <= "1111011";
	elsif (a = "1010" or b = "1010") then -- A
		bcd <= "1110111";
	elsif (a = "1011" or b = "1011") then -- B
		bcd <= "0011111";
	elsif (a = "1100" or b = "1100") then -- C
		bcd <= "1001110";
	elsif (a = "1101" or b = "1101") then -- D
		bcd <= "0111101";
	elsif (a = "1110" or b = "1110") then --	E
		bcd <= "1001111";
	else
		bcd <= "1000111"; -- Caso defaul -> 'F'
	end if;
end process;

-- BCD de B.
process (b)
begin
	if 	(b = "0000") then -- 0
		bcd2 <= "1111110";
	elsif (b = "0001") then -- 1
		bcd2 <= "0110000";
	elsif (b = "0010") then -- 2
		bcd2 <= "1101101";
	elsif (b = "0011") then -- 3
		bcd2 <= "1111001";
	elsif (b = "0100") then -- 4
		bcd2 <= "0110010";
	elsif (b = "0101") then -- 5
		bcd2 <= "1011010";
	elsif (b = "0110") then -- 6
		bcd2 <= "1011111";
	elsif (b = "0111") then -- 7
		bcd2 <= "1110000";
	elsif (b = "1000") then -- 8
		bcd2 <= "1111111";
	elsif (b = "1001") then -- 9
		bcd2 <= "1111011";
	elsif (b = "1010") then -- A
		bcd2 <= "1110111";
	elsif (b = "1011") then -- B
		bcd2 <= "0011111";
	elsif (b = "1100") then -- C
		bcd2 <= "1001110";
	elsif (b = "1101") then -- D
		bcd2 <= "0111101";
	elsif (b = "1110") then --	E
		bcd2 <= "1001111";
	else
		bcd2 <= "1000111"; -- Caso defaul -> 'F'
	end if;
end process;


end Behavioral;