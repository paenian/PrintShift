# Prusa Mini Conveyor Belt!

![Status: Fully Functional!](https://flat.badgen.net/badge/STATUS/Full%20Functional/green)

Quick overview - this repo contains all the files I used to add a conveyor belt to my Prusa Mini.

## BELT MATERIAL
The current belt is made from .2mm thick Kapton, ordered from AliExpress and lasercut.  You can totally hand-cut it, but tracking of the belt is a bit of a pain.

The belt is designed to be easily replaced - other materials I have used:
 * .01" polyester film: Cuts easily, prints stick very well with hairspray.  This belt has higher thermal expansion, but with PLA or lower temps on the heater it works great, and is quite cheap.  It does break down at PETG temperatures, so I recommend the kapton as the most versatile belt.
   * https://www.mcmaster.com/8567K92/
   * Use hairspray to help prints stick.
 * .225mm Kapton: Low thermal expansion.  More expensive than the polyester.
   * https://www.aliexpress.com/item/4000699107361.html?spm=a2g0s.9042311.0.0.19534c4dqCLd9z
   * Use hairspray to help prints stick.
 * .005" ULTEM/PEI film: Prints stick well, but it's too flexible.  After ~10 hours printing, sheet sheared while printing.  It was under a lot of tension.  Gets expensive quick.
   * https://catalog.cshyde.com/item/films/ultem-pei-polyethermide-resin/36-5f
 * .01" ULTEM/PEI film: Same story as the .005; less flexible, of course, so prints warped less on it.  However, it did shear mid-print after maybe 100 hours of printing - it lasted longer, but split right in two.  My assumption is more due to fatigue from all the rolling.
   * https://catalog.cshyde.com/item/films/ultem-pei-polyethermide-resin/36-10f

 I have used thicker and stiffer belts, too - various stainless steels and conveyor materials, usually covering the belt itself in PET tape to get good adhesion and release.  However, these require larger, stronger rollers - so aren't compatible with the printers in this repository.


## CONTROL
The belt is controlled by a microswitch mounted on the top of the Z axis.  When the Z gets high enough and Y is forward enough, your parts scoot.  The nice part is no modification of the firmware is required - just some special start and end GCODE in your slicer.  I do take power for the motor from inside the Prusa Mini box for neatness - I like my printers as self-contained as possible.

The other modifications to the Prusa Mini involve raising the bed 4mm - so combined with the switch up top, you're losing about 15mm of usable Z axis.

Right now, the belt is 145mm in width - so your Y axis shrinks a bit when printing on the belt.  You can, however, still print using the entire bed - just put the metal build plate on top of the belt!


## INSTALLATION
This repository now contains a website: https://paenian.github.io/PrintShift

Instructions, videos, tips and tricks will all be posted there.

This project is supported by patrons on Patreon - go to https://www.patreon.com/PrintShift if you'd like to help develop part ejecting printers!
