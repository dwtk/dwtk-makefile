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

# When using USB-To-TTL devices, configure the serial port device. When
# setting this, any dwtk-ice device plugged is ignored.
#DWTK_SERIAL = /dev/ttyUSB0

# Build firmware for release (with optimizations, without debug helpers).
#AVR_RELEASE = 1
