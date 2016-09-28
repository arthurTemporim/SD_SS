library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto2 is
	port (
		a   : in  std_logic_vector (3 downto 0) := "0001";		-- Entrada A.
		b   : in  std_logic_vector (3 downto 0) := "0000";		-- Entrada B.
		clk : in  std_logic							 := '0';			-- Clock.
		display1 : out  std_logic_vector (6 downto 0);
		display2 : out  std_logic_vector (6 downto 0)
	);
end projeto2;

architecture Behavioral of projeto2 is

signal saida_mux : std_logic_vector (3 downto 0);
signal bcd 		  : std_logic_vector (6 downto 0); -- BCD.

begin

-- Mux 8->4.
process (a,b, clk)
begin
	if (clk = '0') then
		saida_mux <= a;
	else
		saida_mux <= b;
	end if;
end process;

-- BCD.
process (a,b,clk, saida_mux, bcd)
begin
	if 	(saida_mux = "0000") then -- 0
		bcd <= "1111110";
	elsif (saida_mux = "0001") then -- 1
		bcd <= "0110000";
	elsif (saida_mux = "0010") then -- 2
		bcd <= "1101101";
	elsif (saida_mux = "0011") then -- 3
		bcd <= "1111001";
	elsif (saida_mux = "0100") then -- 4
		bcd <= "0110010";
	elsif (saida_mux = "0101") then -- 5
		bcd <= "1011010";
	elsif (saida_mux = "0110") then -- 6
		bcd <= "1011111";
	elsif (saida_mux = "0111") then -- 7
		bcd <= "1110000";
	elsif (saida_mux = "1000") then -- 8
		bcd <= "1111111";
	elsif (saida_mux = "1001") then -- 9
		bcd <= "1111011";
	elsif (saida_mux = "1010") then -- A
		bcd <= "1110111";
	elsif (saida_mux = "1011") then -- B
		bcd <= "0011111";
	elsif (saida_mux = "1100") then -- C
		bcd <= "1001110";
	elsif (saida_mux = "1101") then -- D
		bcd <= "0111101";
	elsif (saida_mux = "1110") then -- E
		bcd <= "1001111";
	else
		bcd <= "1000111"; -- Caso defaul -> 'F'
	end if;
end process;


-- Mux 1->2.
process (bcd, clk)
begin
	if (clk = '0') then
		display1 <= bcd;
	else
		display2 <= bcd;
	end if;
end process;


end Behavioral;