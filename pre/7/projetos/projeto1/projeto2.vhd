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
--###################################################--
-- COMPONENTS
-- FLIP-FLOP
component flip_flop_jk
   port( J: in  std_logic;
			K: in  std_logic;
         Reset: in std_logic;
         Clock_enable: in std_logic;
         Clock: in std_logic;
         Output: out std_logic);
end component;

-- DISPLAY

--###################################################--
-- SINAIS
signal inA : std_logic := '0';

-- FLIP-FLOPs
-- SINAIS GENERICOS DOS FFs
   signal Reset : std_logic := '0';
   signal Clock_enable : std_logic := '1';
   signal Clock : std_logic := '0';

--FF1
   --Inputs
   signal Ja : std_logic := '0';
   signal Ka : std_logic := '0';
 	--Outputs
   signal OutA : std_logic;
--###################################################--

begin
	f1: flip_flop_jk PORT MAP (
		J => Ja,
		K => Ka,
		Reset => Reset,
		Clock_enable => Clock_enable,
		Clock => Clock,
		Output => OutA
	);
end Behavioral;

