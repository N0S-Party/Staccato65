# Keybored65
My first attempt at making a keyboard PCB. Perhaps we'll start at a 65% board, to save on PCB costs.

**Specs:** 
* rotary encoder support
* OLED screen
* ATMega32u4 as microcontroller
* USB C connector (with USB 2.0)
* choice of a stepped caps lock

**Design goals:**
* seperated arrow keys
* 1.5u alt & ctrl keys with 1.75u shift
* aesthetically pleasing through-hole diode layout on the front layer

Basically the layout will be similar to the Satisfaction75 and ID80, but without the function row. 
I also really like the look of the Discipline keyboards, so the layout of the diodes will somewhat try to reflect that. 

One of my current concerns is that the firmware size might end up too big, since I'll have to use QMK's I2C and ADC libraries in addition to multiple keyboard layouts -- 
but I guess we'll see once we get there.

## Update 8/1
I started building the key matrix in the schematic. I originally wanted the schematic matrix to have a 1-to-1 mapping to the keyboard layout. 
It's actually done that way for the schematic of the Discipline, making it easy to route the traces for the PCB, and organize the layout even pre-PCB design.
Unfortunately, it ended up being 15 columns by 6 rows for me. 
This was far too many pins to support for the ATmega32u4 since I need to save some pins to support the rotary encoder and OLED. 
I'm also planning to save the SCK, MOSI and MISO pins for ISP usage, in case I ever want to set fuse bits 
(though I'm willing to give these pins up if desperate measures need to be in play).
