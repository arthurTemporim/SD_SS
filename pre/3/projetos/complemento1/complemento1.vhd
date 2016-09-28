library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento1 is
    Port ( entrada : in  STD_LOGIC_VECTOR (2 downto 0) := "000";
           sel     : in  STD_LOGIC := '1';
			  saida   : out STD_LOGIC_VECTOR (2 downto 0)
	 );
end complemento1;

architecture Behavioral of complemento1 is

signal aux : STD_LOGIC_VECTOR (2 downto 0);

begin

process (entrada,sel,aux)
	begin
		if (sel = '1') then
			aux <= entrada xor "111";
		else
			aux <= entrada;
		end if;
end process;
	saida <= aux;
end Behavioral;

