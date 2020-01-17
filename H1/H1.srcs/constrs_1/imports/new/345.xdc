#set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports {CLK}]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -period 10.000 -name CLK -waveform {0.000 5.000} -add [get_ports CLK]