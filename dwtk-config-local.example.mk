#
# dwtk-makefile: A generic Makefile for AVR projects using dwtk.
# Copyright (C) 2020 Rafael G. Martins <rafael@rafaelmartins.eng.br>
#
# This program can be distributed under the terms of the BSD 3-Clause License.
# See https://opensource.org/licenses/BSD-3-Clause.
#

# This is an example local configuration. The example can be commited to
# the version control system, but the actual dwtk-config-local.mk file
# shouldn't. Users should copy this file to dwtk-config-local.mk and
# edit the copy instead. This file is evaluated after dwtk-config.mk and
# can override anything set there.

# Enable dwtk debug flag (verbose logging of operations).
#DWTK_DEBUG = 1

# When using dwtk-ice, configure its serial number. The serial number can be
# found using `dmesg` or some USB listing tool. This is required when more
# than one dwtk-ice device is plugged in.
#DWTK_ICE = deadbeef

# When using USB-to-TTL devices, configure the serial port device. This is
# required when more than one USB-to-TTL device is plugged in.
#DWTK_SERIAL = /dev/ttyUSB0

# Build firmware for release (with optimizations, without debug helpers).
# Setting to 0 will force a debug build.
#AVR_RELEASE = 1
