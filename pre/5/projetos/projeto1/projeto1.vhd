library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto1 is
	port (
		e   : in  std_logic_vector (7 downto 0) := "00000000";
		sel : in  std_logic_vector (2 downto 0) := "000";
		s   : out std_logic
	);
end projeto1;

architecture Behavioral of projeto1 is

--signal aux : std_logic_vector (3 downto 0);
signal saida_sel : std_logic;

begin

-- Multiplexador 8 para 1.
process (e, sel)
begin
	if(sel = "000") then
		saida_sel <= e(0);
	elsif(sel = "001") then
		saida_sel <= e(1);
	elsif(sel = "010") then
		saida_sel <= e(2);
	elsif(sel = "011") then
		saida_sel <= e(3);
	elsif(sel = "100") then
		saida_sel <= e(4);
	elsif(sel = "101") then
		saida_sel <= e(5);
	elsif(sel = "110") then
		saida_sel <= e(6);
	else
		saida_sel <= e(7);
	end if;
end process;

end Behavioral;

