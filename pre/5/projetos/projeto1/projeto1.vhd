library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto1 is
	port (
		m     : in  std_logic_vector (3 downto 0) := "00000000"; -- Multiplex 4->1
		sel   : in  std_logic_vector (1 downto 0) := "000";      -- Seletora
		d     : in  std_logic := '0';										-- Demux 1->4
		s_m   : out std_logic
	);
end projeto1;

architecture Behavioral of projeto1 is

signal saida_mux : std_logic;

begin

-- Multiplexador 4 para 1.
process (m, sel)
begin
	if(sel = "00") then
		saida_mux <= m(0);
	elsif(sel = "01") then
		saida_mux <= m(1);
	elsif(sel = "10") then
		saida_mux <= m(2);
	else
		saida_mux <= m(3);
	end if;
end process;
s_m <= saida_mux;


end Behavioral;

