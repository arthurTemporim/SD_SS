library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;

entity sumSub is
	Port (
		entrada1 : in std_logic_vector (2 downto 0) := "000";
		entrada2 : in std_logic_vector (2 downto 0) := "000";
		sel		: in Std_logic;
		saida    : out std_logic_vector (2 downto 0);
		cout     : out std_logic;
		E			: out std_logic
	);
end sumSub;

architecture Behavioral of sumSub is

signal cin0 : std_logic;
signal cin1 : std_logic;
signal cin2 : std_logic;

signal complemento1 : std_logic_vector (2 downto 0);
signal complemento2 : std_logic_vector (2 downto 0);

begin

	process (entrada1, entrada2, sel)
	begin
		if (sel = '0') then
			--saida <= entrada1 + entrada2;
			
			if(entrada1(2) = '1') then
				--inverte a
				complemento1 <= entrada1 xor "111";
				
				complemento2(0) <= entrada1(0) xor '1';
				cin0 <= entrada1(0) and '1';
			
				complemento2(1) <= entrada1(1) xor '1' xor cin0;
				cin1 <= (entrada1(1) and cin0) or (entrada1(1) and '1') or ('1' and cin0);
				
				complemento2(2) <= entrada1(2) xor '1' xor cin1;
				cin2 <= (entrada1(1) and cin1) or (entrada1(1) and '1') or ('1' and cin1);
				
			elsif (entrada2(2) = '1') then
				--inverte b
				complemento1 <= entrada2 xor "111";
				
				complemento2(0) <= entrada2(0) xor '1';
				cin0 <= entrada2(0) and '1';
			
				complemento2(1) <= entrada2(1) xor '1' xor cin0;
				cin1 <= (entrada2(1) and cin0) or (entrada2(1) and '1') or ('1' and cin0);
				
				complemento2(2) <= entrada2(2) xor '1' xor cin1;
				cin2 <= (entrada2(1) and cin1) or (entrada2(1) and '1') or ('1' and cin1);
			end if;
			
			saida(0) <= entrada1(0) xor entrada2(0);
			cin0 <= entrada1(0) and entrada2(0);
			
			saida(1) <= entrada1(1) xor entrada2(1) xor cin0;
			cout <= (entrada1(1) and cin0) or (entrada1(1) and entrada2(1)) or (entrada2(1) and cin0);
				
			saida(2) <= '0';
		else
			--saida <= entrada1 - entrada2;
			if(entrada1(2) = '1') then
				--inverte a
				complemento1 <= entrada1 xor "111";
				
				complemento2(0) <= entrada1(0) xor '1';
				cin0 <= entrada1(0) and '1';
			
				complemento2(1) <= entrada1(1) xor '1' xor cin0;
				cin1 <= (entrada1(1) and cin0) or (entrada1(1) and '1') or ('1' and cin0);
				
				complemento2(2) <= entrada1(2) xor '1' xor cin1;
				cin2 <= (entrada1(1) and cin1) or (entrada1(1) and '1') or ('1' and cin1);
				
			elsif (entrada2(2) = '1') then
				--inverte b
				complemento1 <= entrada2 xor "111";
				
				complemento2(0) <= entrada2(0) xor '1';
				cin0 <= entrada2(0) and '1';
			
				complemento2(1) <= entrada2(1) xor '1' xor cin0;
				cin1 <= (entrada2(1) and cin0) or (entrada2(1) and '1') or ('1' and cin0);
				
				complemento2(2) <= entrada2(2) xor '1' xor cin1;
				cin2 <= (entrada2(1) and cin1) or (entrada2(1) and '1') or ('1' and cin1);
			end if;
			
			-- Aplica o complemento no B
			-----------------------------------------------------------------------------
				complemento1 <= entrada2 xor "111";
				
				complemento2(0) <= entrada2(0) xor '1';
				cin0 <= entrada2(0) and '1';
			
				complemento2(1) <= entrada2(1) xor '1' xor cin0;
				cin1 <= (entrada2(1) and cin0) or (entrada2(1) and '1') or ('1' and cin0);
				
				complemento2(2) <= entrada2(2) xor '1' xor cin1;
				cin2 <= (entrada2(1) and cin1) or (entrada2(1) and '1') or ('1' and cin1);
			-----------------------------------------------------------------------------
			
			saida(0) <= entrada1(0) xor entrada2(0);
			cin0 <= entrada1(0) and entrada2(0);
			
			saida(1) <= entrada1(1) xor entrada2(1) xor cin0;
			cout <= (entrada1(1) and cin0) or (entrada1(1) and entrada2(1)) or (entrada2(1) and cin0);
				
			saida(2) <= '0';			
		end if;
	end process;

end Behavioral;