library ieee;  
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;  

entity Main is

  port(DI : in unsigned(7 downto 0);  
      SEL : in unsigned(1 downto 0);  
      SO : out unsigned(7 downto 0));
		
end Main;

architecture Behavioral of Main is

begin
    with SEL select  
      SO <= DI when "00",  
            DI sll 1 when "01",  
            DI sll 3 when "10",  
            DI sll 2 when others;  
	
end Behavioral;

