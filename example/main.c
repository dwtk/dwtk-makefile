/*
 * dwtk-makefile: A generic Makefile for AVR projects using dwtk.
 * Copyright (C) 2020 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 *
 * This program can be distributed under the terms of the GPL-2 License.
 * See the file COPYING.
 */

// Toggle a led every 100ms.
//
// Circuit for this example is composed by attiny25 with a LED connected to PB1
// via a 470R resistor and to ground.

#include <avr/io.h>


int
main(void)
{
    // PB1 is OC1A, which is our output (LED)
    DDRB = (1 << 1);

    // enable CTC, toggle OC1A, prescaler 16384
    TCCR1 = (1 << CTC1) | (1 << COM1A0) |
        (1 << CS13) | (1 << CS12) | (1 << CS11) | (1 << CS10);

    // we run at 8MHz. with prescaler 16384, we have 2.048ms per tick.
    // to toggle output every 100ms, we need to count to 48.8 (49).
    OCR1C = 49;

    while (1);

    return 0;
}
