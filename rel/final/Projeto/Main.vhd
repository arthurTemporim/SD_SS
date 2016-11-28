library ieee;  
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;  

entity Main is

  port(seletoras : in unsigned(16 downto 0); -- Seletoras.
		botaoN : std_logic := '0'; -- Botão da direita para ter função de "Next".
		botaoC : std_logic := '0'; -- Botão de baixo para cancelar o processo.
      SEL : in unsigned(1 downto 0);  
      SO : out unsigned(7 downto 0);
		display : out unsigned (0 to 6));
		
end Main;

architecture Behavioral of Main is

signal DI : unsigned (7 downto 0);
signal resultado : unsigned (16 downto 0);
begin
	--process (seletoras, botaoN, botaoC)
	--begin
		--if (seletoras <= 8192) then -- Mostra no display.
			-- Chama componente do display.
		--elsif (seletoras <= 8192 & seletoras >= 65535) then -- Mostra nos LEDs.
			-- Chama componente dos LEDs.
		--else
			-- Zera.
		--end if;
	--end process
	
    with SEL select  
      SO <= DI when "00",  
            DI sll 1 when "01",  
            DI sll 3 when "10",  
            DI sll 2 when others;
				
end Behavioral;

