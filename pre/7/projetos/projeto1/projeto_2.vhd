library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity projeto_2 is
	port (
		entrada : in std_logic_vector (2 downto 0) := "000";
		reset : in std_logic := '0';
		enable : in std_logic := '1';
		clk : in std_logic;
		saida : out std_logic_vector (2 downto 0)
	);
end projeto_2;

architecture Behavioral of projeto_2 is

signal auxEntrada : std_logic_vector (2 downto 0);

begin
	process (clk, reset)
		begin		
			if (reset = '1') then
				auxEntrada <= "000";
			elsif (rising_edge(clk)) then
				if (enable = '1') then
					if (entrada = "000") then
						auxEntrada <= "010";
					elsif (entrada = "010") then
						auxEntrada <= "101";
					elsif (entrada = "101") then
						auxEntrada <= "110";
					else 
						auxEntrada <= "000";
					end if;
				end if;
			end if;			
			saida <= auxEntrada;
	end process;		
end Behavioral;