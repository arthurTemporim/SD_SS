library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Main is
	port (
		entrada : in std_logic_vector(3 downto 0) := "0001";
		saida : out std_logic_vector( 3 downto 0)
	);
end Main;

architecture Behavioral of Main is

signal aux : std_logic_vector( 3 downto 0) := "0001";
begin

aux <= entrada srl 1;
	
end Behavioral;

