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
COMPONENT display
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         display1 : OUT  std_logic_vector(6 downto 0)
        );
END COMPONENT;

-- SINAIS
--###################################################--
signal Clock : std_logic := '0';
-- FLIP-FLOPs
-- SINAIS GENERICOS DOS FFs
   signal Reset : std_logic := '0'; -- Funciona como Clear.
   signal Clock_enable : std_logic := '1';


--FFa
   --Inputs
   signal Ja : std_logic := '1';
   signal Ka : std_logic := '1';
 	--Outputs
   signal OutA : std_logic;
--FFb
   --Inputs
   signal Jb : std_logic := '1';
   signal Kb : std_logic := '1';
 	--Outputs
   signal OutB : std_logic;
--FFc
   --Inputs
   signal Jc : std_logic := '1';
   signal Kc : std_logic := '1';
 	--Outputs
   signal OutC : std_logic;
	
--DISPLAYs
   --Inputs
   signal inDisplay1 : std_logic_vector(3 downto 0) := (others => '0');
 	--Outputs
   signal outDisplay1 : std_logic_vector(6 downto 0);	
--###################################################--

begin

-- Inicializa componentes
--###################################################--
--FFs
	fa: flip_flop_jk PORT MAP (
		J => Ja,
		K => Ka,
		Reset => Reset,
		Clock_enable => Clock_enable,
		Clock => Clock,
		Output => outA
	);
	fb: flip_flop_jk PORT MAP (
		J => Jb,
		K => Kb,
		Reset => Reset,
		Clock_enable => Clock_enable,
		Clock => Clock,
		Output => outB
	);
	fc: flip_flop_jk PORT MAP (
		J => Jc,
		K => Kc,
		Reset => Reset,
		Clock_enable => Clock_enable,
		Clock => Clock,
		Output => outC
	);
	
-- DISPLAYs
   display1: display PORT MAP (
      a => inDisplay1,
      clk => Clock,
		display1 => outDisplay1
   );

--###################################################--
clock <= clk;
--	process(Ja,Ka,Jb,Kb,Jc,Kc,Reset,outA,outB,outC,clk)
--	begin
		Ja <= '1';
		Ka <= '1';
		Jb <= outA;
		Kb <= outA;
		Jc <= (outA and outB);
		Kc <= (outA and outB);
		inDisplay1(3) <= '0';
		inDisplay1(2) <= OutC;
		inDisplay1(1) <= OutB;
		inDisplay1(0) <= OutA;
--	end process;
	sa <= outA;
	sb <= outB;
	sc <= outC;
end Behavioral;