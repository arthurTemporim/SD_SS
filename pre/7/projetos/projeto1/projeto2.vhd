library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto2 is
	port(
		clock : in std_logic
	);
end projeto2;

architecture Behavioral of projeto2 is

component flip_flop_jk
   port( J,K: in  std_logic;
         Reset: in std_logic;
         Clock_enable: in std_logic;
         Clock: in std_logic;
         Output: out std_logic);
end component;

begin
	f1 : flip_flop_jk port map ('1','1','0','1', clock);
	--f2 : flip_flop_jk port map ('1','1','0','1', clock);
	--f3 : flip_flop_jk port map ('1','1','0','1', clock);


end Behavioral;

