---------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity ps2_driver is port(
 clock_in: in std_logic;
 reset_in: in std_logic;
 clock_ps2:in std_logic;
 data_ps2: in std_logic;
 data_p:   out std_logic_vector(7 downto 0);
 data_p_en:out std_logic
);
end ps2_driver;

FIFO_ASYNC: entity work.FIFO_ASYNC
    port map
    (
        wr_clk    => wr_clk,
        rd_clk    => rd_clk,
        rst       => rst,
        wr_en     => wr_en,
        wr_data   => wr_data,
        rd_en     => rd_en,
        rd_data   => rd_data,
        sts_full  => sts_full,
        sts_empty => sts_empty,
        sts_high  => sts_high,
        sts_low   => sts_low,
        sts_error => sts_error
    );

architecture ps2_driver of ps2_driver  is


end ps2_driver;