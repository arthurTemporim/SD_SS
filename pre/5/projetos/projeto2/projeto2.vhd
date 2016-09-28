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
signal bcd 		  : std_logic_vector (6 downto 0);

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
	elsif (a = "1111111") then -- 8
		bcd <= "0110000";
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
	elsif (a = "1110") then --	E
		bcd <= "1001111";
	else
		bcd <= "1000111"; -- Caso defaul -> 'F'
	end if;
end process;
end Behavioral;