library ieee;  
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity Main is

	port(
		seletoras : in std_logic_vector(15 downto 0) := "00000000001000000";
		clk		 : in std_logic 							:= '0'
	);
		
end Main;

architecture Behavioral of Main is

	signal vetor : std_logic_vector (15 downto 0) := "00000000100000010";
	
begin

	process (vetor, clk)
	begin
		vetor(15) <= vetor(0) xor vetor(1);
		if (clk'event and clk = '1') then			
			vetor <= std_logic_vector(unsigned(vetor) srl 1);
		end if;		
	end process;
	
end Behavioral;