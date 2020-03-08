#
# dwtk-makefile: A generic Makefile for AVR projects using dwtk.
# Copyright (C) 2020 Rafael G. Martins <rafael@rafaelmartins.eng.br>
#
# This program can be distributed under the terms of the BSD 3-Clause License.
# See https://opensource.org/licenses/BSD-3-Clause.
#

# This is an example configuration. Please check the datasheet of your
# microcontroller and fill the options carefully before uncommenting each
# of them.

### Main settings

# The target AVR microcontroller
#AVR_MCU ?= attiny25

# The frequency of the AVR microcontroller. Must match the actual operating
# clock of the microcontroller, otherwise the delay functions won't work as
# expected.
#AVR_F_CPU ?= 8000000UL


### Fuses (only usable with SPI-capable dwtk-ice hardware)

# Low fuse. Should be configured according to the hardware clock.
#AVR_LFUSE ?= 0xE2

# High fuse. This value must have the SPIEN bit programmed, otherwise it is
# impossible to disable debugWIRE.
#AVR_HFUSE ?= 0xDF

# Extended fuse. Usually not changed. It is safe to keep this commented out.
#AVR_EFUSE ?= 0xFF

# Lock bits. Used to prevent further programming and verification of the chip.
# After programming such bits, it may be necessary to erase the chip to
# unprogram them. Usually not changed. It is safe to keep this commented out.
#AVR_LOCK ?= 0xFF


### Firmware specific settings

# Firmware name. The filename (without extension) of the firmware.
#FIRMWARE_NAME ?= firmware

# Firmware CFLAGS. The CFLAGS needed to build the firmware. Usually contains
# include paths and gcc arguments to disable warnings. The Makefile converts
# any warnings into compilation errors. If some warning must be ignored, the
# specific gcc argument that disables the warning must be added here.
#FIRMWARE_CFLAGS =

# Firmware sources. The source files (C), that should be built into the
# firmware, relative to the directory containing the Makefile.
#FIRMWARE_SOURCES = main.c

# Firmware headers. The source headers (C), that should be built into the
# firmware, relative to the directory containing the Makefile.
#FIRMWARE_HEADERS =
