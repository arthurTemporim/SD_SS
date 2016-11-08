library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity projeto1 is
	port( 
		clock, reset, enable, direction : in std_logic;
		q : out std_logic_vector (3 downto 0)
	);
end projeto1;

architecture Behavioral of projeto1 is

begin
	process (clock, reset)
		variable contagem : integer range 0 to 15;
		begin
			if (reset = '1') then
				contagem := 0;
			elsif (clock'event and clock = '1') then
				if (enable = '1') then
					if(direction = '0') then
						contagem := contagem + 1;
					else
						contagem := contagem - 1;
					end if;
				end if;
			end if;
		q <= conv_std_logic_vector(contagem,4);
	end process;
end Behavioral;