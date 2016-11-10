LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY bla IS
END bla;
 
ARCHITECTURE behavior OF bla IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flip_flop_jk
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         Reset : IN  std_logic;
         Clock_enable : IN  std_logic;
         Clock : IN  std_logic;
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clock_enable : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal Output : std_logic;

   -- Clock period definitions
   constant Clock_enable_period : time := 10 ns;
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flip_flop_jk PORT MAP (
          J => J,
          K => K,
          Reset => Reset,
          Clock_enable => Clock_enable,
          Clock => Clock,
          Output => Output
        );

   -- Clock process definitions
   Clock_enable_process :process
   begin
		Clock_enable <= '0';
		wait for Clock_enable_period/2;
		Clock_enable <= '1';
		wait for Clock_enable_period/2;
   end process;
 
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_enable_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
