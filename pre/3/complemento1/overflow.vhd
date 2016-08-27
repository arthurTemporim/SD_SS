library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overflow is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (2 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (2 downto 0);
           cin : in STD_LOGIC;
           saida1 : in  STD_LOGIC_VECTOR (2 downto 0);
           cout : out  STD_LOGIC);
end overflow;

architecture Behavioral of overflow is

begin

	process (entrada1, entrada2, cin)
	begin
		
	end process;

end Behavioral;

