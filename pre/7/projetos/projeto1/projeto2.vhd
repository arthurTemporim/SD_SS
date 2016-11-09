library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library adk;
use adk.all;

entity projeto2 is
	port(
		clk : in std_logic;
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
	process (a,b,c,inA,clear,outA,outB,outC,clk)
		begin
		inA <= ((not outC) and outB);
		--f1 : flip_flop_jk port map (
		--	j=>inA,
		--	k=>inA,
		--	Reset=>clear,
		--	Clock_enable=>'1',
		--	Clock=>clk,
		--	Output=>outA);
		--f1 : flip_flop_jk port map (inA,inA,clear,'1', clock, Output => outA);
		--f2 : flip_flop_jk port map (outA,outA,clear,'1', clock, outB);
		--f3 : flip_flop_jk port map (outB,outB,clear,'1', clock, outC);
	end process;
end Behavioral;

