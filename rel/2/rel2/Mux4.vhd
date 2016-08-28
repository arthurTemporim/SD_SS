library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4 is
    Port ( seletora : in  STD_LOGIC_VECTOR (1 downto 0);
           entrada : in  STD_LOGIC_VECTOR (3 downto 0);
           saida : out  STD_LOGIC);
end Mux4;

architecture Behavioral of Mux4 is

signal s1 : STD_LOGIC;

begin

mux: process (seletora,entrada)
begin
	if (seletora = "00") then
			saida <= entrada(0);
		elsif (seletora = "01") then
			saida <= entrada(1);
		elsif (seletora = "10") then
			saida <= entrada(2);
		else
			saida <= entrada(3);
	end if;
end process;

end Behavioral;

