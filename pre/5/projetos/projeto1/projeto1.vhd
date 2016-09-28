library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto1 is
	port (
		d		: in std_logic := '0';									  -- Entrada 'D'	
		sel     : in  std_logic_vector (2 downto 0) := "000";   -- Entradas "ABC"
		s_m   : out std_logic
	);
end projeto1;

architecture Behavioral of projeto1 is

signal saida_mux : std_logic;

begin

-- Multiplexador 8 para 1.
process (sel, d)
begin
	if(sel = "000") then
		saida_mux <= (not d);
	elsif(sel = "001") then
		saida_mux <= (not d);
	elsif(sel = "010") then
		saida_mux <= sel(0);
	elsif(sel = "011") then
		saida_mux <= d;
	elsif(sel = "100") then
		saida_mux <= d;
	elsif(sel = "101") then
		saida_mux <= '0';
	elsif(sel = "110") then
		saida_mux <= '0';
	else
		saida_mux <= '0';
	end if;
end process;
s_m <= saida_mux;

end Behavioral;
