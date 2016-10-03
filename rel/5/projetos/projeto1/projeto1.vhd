library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto1 is
	port (
		e : in  std_logic_vector (1 downto 0) :=  "00";
		c : in std_logic := '0';
		s : out std_logic
	);
end projeto1;

architecture Behavioral of projeto1 is

signal multiplex : std_logic;

begin

process (multiplex, e, c)
begin
	if(e = "00") then
		multiplex <= '0';
	elsif (e = "01") then
		multiplex <= '1';
	elsif (e = "10") then
		multiplex <= '0';
	else
		multiplex <= c;
	end if;
end process;

s <= multiplex;

end Behavioral;

