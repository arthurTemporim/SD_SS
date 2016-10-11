library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto2 is
	port (
		a : in std_logic := '0';
		b : in std_logic := '1';
		c : in std_logic := '0';
		s : out std_logic
	);
end projeto2;

architecture Behavioral of projeto2 is

signal multiplex   	: std_logic;
signal out_multiplex	: std_logic;
signal demultiplex 	: std_logic;

begin

process (multiplex, a, b, c)
begin
	if(a = '0') then
		multiplex <= b;
	else
		multiplex <= c;
	end if;
	out_multiplex <= multiplex;
end process;

process (out_multiplex, a, b, c)
begin
	if (a = '0') then
		demultiplex <= out_multiplex;
	else
		demultiplex <= out_multiplex;
	end if;
end process;

s <= demultiplex;

end Behavioral;