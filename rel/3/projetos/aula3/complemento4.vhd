library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento4 is
    Port ( entrada : in  STD_LOGIC_VECTOR (3 downto 0) := "0000";
           sel     : in  STD_LOGIC := '1';
			  saida   : out STD_LOGIC_VECTOR (3 downto 0)
	 );
end complemento4;

architecture Behavioral of complemento4 is

signal aux : STD_LOGIC_VECTOR (3 downto 0);

begin

process (entrada,sel,aux)
	begin
		if (sel = '1') then
			aux <= entrada xor "1111";
		else
			aux <= entrada;
		end if;
end process;
	saida <= aux;
end Behavioral;
