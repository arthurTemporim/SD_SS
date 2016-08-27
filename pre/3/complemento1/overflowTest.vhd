LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY overflowTest IS
END overflowTest;
 
ARCHITECTURE behavior OF overflowTest IS 
 
    COMPONENT overflow
    PORT(
         entrada1 : IN  std_logic_vector(2 downto 0);
         entrada2 : IN  std_logic_vector(2 downto 0);
         cin : IN  std_logic;
         saida1 : IN  std_logic_vector(2 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal entrada1 : std_logic_vector(2 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(2 downto 0) := (others => '0');
   signal cin : std_logic := '0';
   signal saida1 : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: overflow PORT MAP (
          entrada1 => entrada1,
          entrada2 => entrada2,
          cin => cin,
          saida1 => saida1,
          cout => cout
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		saida1 <= entrada1;
      wait for <clock>_period*10;
		entada2 <= "111";
		saida1 <= entrada2;
      -- insert stimulus here 

      wait;
   end process;

END;
