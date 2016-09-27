library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fdsa is
	port (
		e : in  std_logic_vector (3 downto 0):= "0100";
		s: out std_logic_vector (6 downto 0)
	);
end fdsa;

architecture Behavioral of fdsa is

begin
s <= "0110000" when e = "0001" else
	  "1101101" when e = "0010" else
	  "1111001" when e = "0011" else
	  "0110010" when e = "0100" else
	  "1011010" when e = "0101" else
	  "1011111" when e = "0110" else
	  "1110000" when e = "0111" else
	  "1111111" when e = "1000" else
	  "1111011" when e = "1001" ;
end Behavioral;
