library ieee;  
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity Main is

	port(
		seletoras : in std_logic_vector(16 downto 0) := "00000000001000000";
		clk		 : in std_logic 							:= '0'
	);
		
end Main;

architecture Behavioral of Main is

	signal vetor : std_logic_vector (16 downto 0) := "00000000100000000";
	
begin
		
	process (vetor, clk, seletoras)
	begin
		if (clk'event and clk = '1') then 
			vetor <= std_logic_vector(unsigned(vetor) sll 1);
		end if;
	end process;
	
end Behavioral;