library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity projeto2 is
	port(
		clock : in std_logic;
		a : in std_logic := '0';
		b : in std_logic := '0';
		c : in std_logic := '0';
		sa : out std_logic;
		sb : out std_logic;
		sc : out std_logic
	);
end projeto2;

architecture Behavioral of projeto2 is

-- SIGNALS
signal clear : std_logic;
signal inA : std_logic;
signal outA : std_logic;
signal outB : std_logic;
signal outC : std_logic;

-- COMPONENTS
component flip_flop_jk
   port( J,K: in  std_logic;
         Reset: in std_logic;
         Clock_enable: in std_logic;
         Clock: in std_logic;
         Output: out std_logic);
end component;

begin
	f1 : flip_flop_jk port map (inA,inA,clear,'1', clock);
	f2 : flip_flop_jk port map (outA,outA,clear,'1', clock);
	f3 : flip_flop_jk port map (outB,outB,clear,'1', clock);


end Behavioral;

