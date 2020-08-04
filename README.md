# Keybored65
My first attempt at making a keyboard PCB. Perhaps we'll start at a 65% board, to save on PCB costs.

**Specs:** 
* rotary encoder support
* OLED screen
* ATMega32u4 as microcontroller
* USB C connector (with USB 2.0)
* choice of a stepped caps lock
* hot-swappable (if I don't end up cutting costs!)

**Design goals:**
* seperated arrow keys
* 1.5u alt & ctrl keys with 1.75u shift
* aesthetically pleasing through-hole diode layout on the front layer

Basically the layout will be similar to the Satisfaction75 and ID80, but without the function row. 
I also really like the look of the Discipline keyboards, so the layout of the diodes will somewhat try to reflect that. 

One of my current concerns is that the firmware size might end up too big, since I'll have to use QMK's I2C and roatry encoder libraries in addition to multiple keyboard layouts -- 
but I guess we'll see once we get there.

## Update 8/1
I started building the key matrix in the schematic. I originally wanted the schematic matrix to have a 1-to-1 mapping to the keyboard layout. 
It's actually done that way for the schematic of the Discipline, making it easy to route the traces for the PCB, and organize the layout even pre-PCB design.
Unfortunately, it ended up being 15 columns by 6 rows for me. 
This was far too many pins to support for the ATmega32u4 since I need to save some pins to support the rotary encoder and OLED. 
I'm also planning to save the SCK, MOSI and MISO pins for ISP usage, in case I ever want to set fuse bits 
(though I'm willing to give these pins up if desperate measures need to be in play).

## Update 8/4
Modified the matrix to now use 10 columns and 7 rows. This allows for a maximum of 69 switches and 1 rotary encoder switch. With the rotary encoder and OLED screen added, this oleaves the microcontroller with only one GPIO pin available (which means I *could* turn this into a 75% keyboard). I did come across [mr.keeb's PCB generator](https://builder.mrkeebs.com), but for some reason there is a bug that messes up the layout if you use a non-standard matrix; Can't say I'm not happy, since this means that my previous work wasn't all for nothing. I'm planning on using Kailh hot-swap sockets, but I might undo this if I find that it's too costly. 
