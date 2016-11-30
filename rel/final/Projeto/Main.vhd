library ieee;  
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity Main is

	port(
		seletoras : in std_logic_vector(16 downto 0) := "00000000001000000"
	);
		
end Main;

architecture Behavioral of Main is

signal t1 : std_logic_vector (16 downto 0);

begin
		
		t1 <= std_logic_vector(unsigned(seletoras) sll 1);
		
end Behavioral;