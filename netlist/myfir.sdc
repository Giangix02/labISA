###################################################################

# Created by write_sdc on Mon Oct 20 15:45:00 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports clk]  -name CLK  -period 3.4  -waveform {0 1.7}
set_clock_uncertainty 0.07  [get_clocks CLK]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[10]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[9]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[8]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[7]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[6]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[5]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[4]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[3]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[2]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[1]}]
set_output_delay -clock CLK  -max 0.5  [get_ports {DOUT[0]}]
set_output_delay -clock CLK  -max 0.5  [get_ports VOUT]
