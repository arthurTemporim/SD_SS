library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto2 is
	port (
		a : in std_logic := '0';
		b : in std_logic := '0';
		c : in std_logic := '0';
		s : out std_logic
	);
end projeto2;

architecture Behavioral of projeto2 is

signal multiplex   : std_logic;
signal demultiplex : std_logic_vector (1 downto 0);

begin

process (multiplex, a, b, c)
begin
	if(a = '0') then
		multiplex <= '0';
	else
		multiplex <= c;
	end if;
end process;

s <= multiplex;

process (multiplex, a, b, c)
begin
	if (a = '0') then
		demultiplex(0) <= multiplex;
	else
		demultiplex(1) <= multiplex;
	end if;
end process;

end Behavioral;

