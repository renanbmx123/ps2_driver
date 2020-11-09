#!/bin/bash
## Compilar e gerar forma de onda
ghdl -a --std=08 -frelaxed-rules --ieee=synopsys ./Modulos/fifo_async.vhd  ps2_driver_tb.vhd ps2_driver.vhd
ghdl -e --std=08 -frelaxed-rules --ieee=synopsys ps2_driver_tb
ghdl -r --std=08 -frelaxed-rules --ieee=synopsys ps2_driver_tb --wave=./Wave/ps2_driver_tb.ghw --stop-time=70ms

