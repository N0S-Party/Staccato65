# Staccato65
A 65% board with OLED, rotary encoder support, and a 3D printed case.

**Specs:** 
* 3D printed case (top mounted)
* rotary encoder support
* OLED screen
* ATMega32u4 as microcontroller
* USB C connector (with USB 2.0)
* choice of a stepped caps lock
* hot-swappable (if I don't end up cutting costs!)

**Design goals:**
* separated arrow keys
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

## Update 8/6
Got to making the key layout on the PCB. I'm thankful I have a spare top plate and a caliper to help me confirm my switch placement. A modification I made from my initial plan is that I'm now using the "columns" in the schematics as rows. I need about 14 keys per row, and have 7 keys per column in the schematic makes that transform easy. I'll now have two disjoint traces per row on the PCB. Also, I can't get that damn encoder footprint to be centered... I'll leave that for next time.

## Update 8/12
I haven't updated here in a while, but that doesn't mean I haven't been working hard! I've finally managed to finish routing the PCB to a degree that I'm satisfied with. I might have to work a bit more on making the top right routing better, but I'd say the key routing was not too shabby. Fun fact, using Kicad 5.0.2 makes routing a pain. Traces never consistently "stuck" to each other the way I wanted it to. Thankfully, Kicad 5.1.6 was way more route-friendly. Unfortunately I couldn't really group the traces into fours that were aligned with the diode groups since some of the rows contained five switches instead of four. Nevertheless, clean routing was still possible and it still looks good as long as you don't look at it too hard. See below for pictures (you can see what I was talking about with the schematic matrix not being entirely 1-to-1 in dimension to the keyboard).

![PCB](https://github.com/N0S-Party/Staccato65/blob/master/images/pcb_0812.png)

![Schematic](https://github.com/N0S-Party/Staccato65/blob/master/images/sch_0812.png)
