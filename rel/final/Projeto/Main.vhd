library ieee;  
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity Main is

	port(
		modo 		 : in std_logic							 := '0'; 		  -- Gera / Valida.
		k			 : in std_logic_vector (3 downto 0)  := "1000"; 	  -- Seleciona um grupo de até 16 bits
		clk		 : in  std_logic 							 := '0';			  -- Clock do circuito.
		leds		 : out std_logic_vector (15 downto 0)					  -- LEDs de saída do circuito.
	);
		
end Main;

architecture Behavioral of Main is

	-- Vetor usado para deslocamento de bits.
	signal vetor : std_logic_vector (15 downto 0) := "0000000000000010";
	
begin
	
	process (vetor, clk, modo)
		variable grupo : integer range 0 to 15; 
	begin
		-- Função GERA.
		if (modo = '0') then
			-- Variável que contém tamanho do grupo.
			grupo := to_integer(unsigned(k));
			-- Aplica a gerção aleatória.
			vetor(grupo) <= vetor(0) xor vetor(1);
			if (clk'event and clk = '1') then			
				vetor <= std_logic_vector(unsigned(vetor) srl 1);
			end if;
		-- Função Valida.
		else 
		end if;
	end process;
	
	-- Atribui o valor do vetor deslocado aos LEDs de saida.
	leds <= vetor; 
	
end Behavioral;