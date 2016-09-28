library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.STD_LOGIC_ARITH.ALL;

entity overflow is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (2 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (2 downto 0);
			  sel : in STD_LOGIC;
           saida : out  STD_LOGIC_VECTOR (2 downto 0);
           cout : out  STD_LOGIC);
end overflow;

architecture Behavioral of overflow is

--signal aux : STD_LOGIC_VECTOR (2 downto 0);

begin

process (entrada1, entrada2, sel)
begin
	case sel is
		when '0' =>
			saida <= entrada1 + entrada2;
		when '1' =>
		--saida <= entrada1 - entrada2;
		when others =>
			saida <= "000";
	end case;
end process;
end Behavioral;