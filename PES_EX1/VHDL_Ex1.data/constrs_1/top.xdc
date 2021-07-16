# I/O-Pins

# Bank 13, Vcco = 3.3V
#Set the bank voltage for bank 13 (saves setting the IOSTANDARD for every Pin in that bank).
# set_property IOSTANDARD LVCMOS33 [get_ports -filter { IOBANK == 13 } ]

# At FPGA Pin Y9 an 100 MHz oscillator is connected...
set_property PACKAGE_PIN Y9 [get_ports clk_pin]
set_property IOSTANDARD LVCMOS33 [get_ports clk_pin]


# Bank 33, Vcco = 3.3V
# set_property IOSTANDARD LVCMOS33 [get_ports -filter { IOBANK == 33 } ]
set_property PACKAGE_PIN T22 [get_ports {led_pin[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports led_pin[0]]

set_property PACKAGE_PIN T21 [get_ports {led_pin[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports led_pin[1]]

# set_property PACKAGE_PIN U22 [get_ports {LD2}]
# set_property PACKAGE_PIN U21 [get_ports {LD3}]

### LEDs for example 3
set_property PACKAGE_PIN V22 [get_ports {led_shift_pin[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports led_shift_pin[0]]

set_property PACKAGE_PIN W22 [get_ports {led_shift_pin[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports led_shift_pin[1]]

set_property PACKAGE_PIN U19 [get_ports {led_shift_pin[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports led_shift_pin[2]]

set_property PACKAGE_PIN U14 [get_ports {led_shift_pin[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports led_shift_pin[3]]


# Bank 34, Vcco = Vadj
# set_property IOSTANDARD LVCMOS18 [get_ports -filter { IOBANK == 34 } ]
set_property PACKAGE_PIN P16 [get_ports {BTNC}]
set_property IOSTANDARD LVCMOS18 [get_ports BTNC]

set_property PACKAGE_PIN R16 [get_ports {BTND}]
set_property IOSTANDARD LVCMOS18 [get_ports BTND]

set_property PACKAGE_PIN N15 [get_ports {BTNL}]
set_property IOSTANDARD LVCMOS18 [get_ports BTNL]

set_property PACKAGE_PIN R18 [get_ports {BTNR}]
set_property IOSTANDARD LVCMOS18 [get_ports BTNR]

set_property PACKAGE_PIN T18 [get_ports {BTNU}]
set_property IOSTANDARD LVCMOS18 [get_ports BTNU]


# Bank 35, Vcco = Vadj
# set_property IOSTANDARD LVCMOS18 [get_ports -filter { IOBANK == 35 } ]
set_property PACKAGE_PIN F22 [get_ports {switch_pin[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports switch_pin[0]]

set_property PACKAGE_PIN G22 [get_ports {switch_pin[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports switch_pin[1]]

set_property PACKAGE_PIN H22 [get_ports {switch_pin[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports switch_pin[2]]


# set_property PACKAGE_PIN F21 [get_ports {SW3}]

# set_property PACKAGE_PIN H19 [get_ports {SW4}]

# set_property PACKAGE_PIN H18 [get_ports {SW5}]

# set_property PACKAGE_PIN H17 [get_ports {SW6}]

set_property PACKAGE_PIN M15 [get_ports {reset_pin}]
set_property IOSTANDARD LVCMOS18 [get_ports reset_pin]



