#set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports {CLK}]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -period 7.820 -name CLK -waveform {0.000 3.910} [get_ports CLK]
