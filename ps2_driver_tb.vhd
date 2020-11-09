---------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity ps2_driver_tb is 
end ps2_driver_tb;

architecture ps2_driver_tb of ps2_driver_tb  is
-- sinais do driver
 signal clock_in: std_logic:='0';
 signal reset_in: std_logic:='0';
 signal clock_ps2:std_logic:='0';
 signal data_ps2: std_logic:='1';
 signal data_p:   std_logic_vector(7 downto 0):= (others=>'0');
 signal data_p_en:std_logic:='0';	
----------testa-----------------------------------------------
-

------testes---------
type testes is array (0 to 35) of std_logic_vector(0 to 7);
constant entradas:testes:=(
x"16",x"1E",x"26",x"25",x"2E",x"36",x"3D",x"3E",x"46",x"45",
x"15",x"1D",x"24",x"2D",x"2C",x"35",x"3C",x"43",x"44",x"4D",
x"1C",x"1B",x"23",x"2B",x"34",x"33",x"3B",x"42",x"4B",
x"1A",x"22",x"21",x"2A",x"32",x"31",x"3A");

begin   

ps2_driver: entity work.ps2_driver
		port map(clock_in,reset_in, clock_ps2, data_ps2,data_p,data_p_en);

reset_in<='1', '0' after 100 ns;
clk: process
		begin
			WAIT FOR 5 ns;
			clock_in <= not clock_in;	
		end process clk;

clockPS2: process
		begin
			WAIT FOR 500 ns;
			clock_ps2 <= not clock_ps2;	
		end process clockPS2;
	
ps2: process(clock_ps2,reset_in)

begin
	
end process ps2;
	

end ps2_driver_tb;