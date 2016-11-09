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

begin
	process (clk, reset)
		variable contagem : integer range 0 to 6;
		begin
			if (reset = '1') then
				contagem := 0;
			elsif (rising_edge(clk)) then
				if (enable = '1') then
					contagem := contagem + 1;
				end if;
			end if;
		saida <= conv_std_logic_vector(contagem,3);
	end process;
end Behavioral;