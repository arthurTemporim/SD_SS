library ieee;  
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity Main is

	port(
		modo 		 : in  std_logic							 := '0'; 		  -- Gera / Valida. 							 [sel 1]
		k			 : in  std_logic_vector (3 downto 0)  := "1000"; 	  -- Seleciona um grupo de até 16 bits. [sel 2~5]
		s			 : in  std_logic_vector (3 downto 0)  := "0000"; 	  -- Seleciona um valor.					 [sel 6~9]
		hab_clk	 : in  std_logic							 := '1';			  -- Habilitador de clock. 				 [sel 10]
		but_clk   : in  std_logic							 := '0';			  -- Botão pra trabalhar como clock.    [sel 11]
		clk		 : in  std_logic 							 := '0';			  -- Clock do circuito.
		display 	 : out std_logic_vector (6 to 0);						  -- Display usado para mostrar estatisticas.
		leds		 : out std_logic_vector (15 downto 0)					  -- LEDs de saída do circuito.
	);
		
end Main;

architecture Behavioral of Main is

	-- Vetor usado para deslocamento de bits.
	signal vetor 			: std_logic_vector (15 downto 0) := "0000000000000010";
	-- Guarda quantas vezes o valor de 'S' aparece.
	signal estatistica	: std_logic_vector (3 downto 0) 	:= "0000";
	-- Sinal para conectar estatística com display.
	signal bcd 				: std_logic_vector (6 to 0);
	-- Conta quantas vezes o valor de 'S' aparece no vetor.
	signal conta_s 		: integer range 0 to 15;

begin
	
	process (vetor, clk, modo)
		-- Transforma o valor binário do grupo 'k' en inteiro.
		variable grupo : integer range 0 to 15;
	begin
		-- Função GERA e VALIDA implementadas juntas.
		if (modo = '0') then
			-- Variável que contém tamanho do grupo.
			grupo := to_integer(unsigned(k));
			-- Aplica a gerção aleatória.
			vetor(grupo) <= vetor(0) xor vetor(1);
			-- Da o shift nos bits em borda de subida.
			if (clk'event and clk = '1' and hab_clk = '1') then			
				vetor <= std_logic_vector(unsigned(vetor) srl 1);
			end if;
			-- Se os 4 últimos digitos do vetor foram iguais ao valor de 'S' então conta.
			if (vetor(0) = s(0) and vetor(1) = s(1) and vetor(2) = s(2) and vetor(3) = s(3)) then
				conta_s <= conta_s + 1;
			end if;
		end if;
	end process;
	
	-- Atribui valor inteiro da contagem para sinal.
	estatistica <= std_logic_vector(to_unsigned(conta_s, 4));
	
	-- BCD.
	process (estatistica, clk)
	begin
		if 	(estatistica = "0000") then -- 0
			bcd <= "1111110";
		elsif (estatistica = "0001") then -- 1
			bcd <= "0110000";
		elsif (estatistica = "0010") then -- 2
			bcd <= "1101101";
		elsif (estatistica = "0011") then -- 3
			bcd <= "1111001";
		elsif (estatistica = "0100") then -- 4
			bcd <= "0110010";
		elsif (estatistica = "0101") then -- 5
			bcd <= "1011010";
		elsif (estatistica = "0110") then -- 6
			bcd <= "1011111";
		elsif (estatistica = "0111") then -- 7
			bcd <= "1110000";
		elsif (estatistica = "1000") then -- 8
			bcd <= "1111111";
		elsif (estatistica = "1001") then -- 9
			bcd <= "1111011";
		elsif (estatistica = "1010") then -- A
			bcd <= "1110111";
		elsif (estatistica = "1011") then -- B
			bcd <= "0011111";
		elsif (estatistica = "1100") then -- C
			bcd <= "1001110";
		elsif (estatistica = "1101") then -- D
			bcd <= "0111101";
		elsif (estatistica = "1110") then -- E
			bcd <= "1001111";
		else
			bcd <= "1000111"; -- Caso defaul -> 'F'
		end if;
	end process;
	
	display <= bcd xor "1111111";
	-- Atribui o valor do vetor deslocado aos LEDs de saida.
	leds <= vetor;
	
end Behavioral;