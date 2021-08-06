---
title: "Making a Better Belt - Who is Bad Horse?"
---



# ok, what's this Bad Horse that I've never heard about?

I started developing PrintShift on Prusa Minis in order to make it more accessible - but I started my research on beltprinters well before PrintShift became a thing.  Here I'll give a brief overview of development, and 


## Early Days
The first part-ejector was developed by a makerbot user, Charles Edward Pax, and his 2010 blog about it is [still online](https://charlespax.wordpress.com/2010/03/17/makerbot-conveyor-belt/) - yeah.  This was further developed by Charles as a Makerbot employee, and unfortunately patented - which is one reason why later development shifted towards angled printers.
[The first part ejected on video!](https://www.youtube.com/watch?v=J-I98wzJUJo)

## Angled Printers?  What?
Angled printers are ones where one of the axes is not perpendicular to the other two.  This can also be used to enable infinitely long prints, or at least prints that are longer than the printer.  The first of these was a project by Bill Steel and unveiled in 2017 at the [MidwestRepRapFestival](https://hackaday.com/2017/03/25/mrrf-17-the-infinite-build-volume-printer/) - to the surprise of everyone.
A Kickstarter for [Blackbelt3D](https://blackbelt-3d.com/) came a few months later, followed by a growing set of similar machines.
Just to list a few, I've got my [Printrbelt](https://www.youtube.com/watch?v=CK171ShYIeA) here, there's also the [White Knight](https://www.youtube.com/channel/UCai5w5hngu5sUbCGnCuKQYA) which contributed to [Creality's CR-30](https://www.creality3dofficial.com/products/cr-30-infinite-z-belt-3d-printer) and the [Powerbelt3D](https://powerbelt3d.com/) printers - which are cool because you can buy 'em.

I did design my own, scaled-up Printrbelt, which was where I started to play with different conveyor belts.  However, it's pretty oversized, which means that changing the belt could get expensive for more exotic materials.

## Bertha
This is when the pandemic hit my shop... which left me with free time, some odd parts and a powerful need to print face shields.  So I built two more belt-based part ejection machines.
Bertha is my deltabot, or rather Berthest, apparently.  I've been messing with and modifying deltabots for a while; its [part ejector](https://www.youtube.com/watch?v=_Ud6TqBTL1Y) is based on some new ideas I had that I'll cover at the end.  Of note is that this is a cartesian part ejector - the nozzle is perpendicular to the build plate.  Another note is that this printer has two Y axes - the weird combo axis from the Deltabot, and the bed itself - powered by stepper motors, it can be moved precisely.

Thomas Sanladerer captured my reasoning for moving away from angled-bed 3D Printers in his [lowered CR-30 video](https://www.youtube.com/watch?v=tP1g2b8RmYE&t=4s), and again with his 
[real print bed](https://www.youtube.com/watch?v=8O9E9rcH6Us) automated voron.

## Bad Horse
So, bad horse.  Bad Horse was designed as a development printer to test out new conveyor belt ideas, and that's what I plan to use it for again going forwards.
It was built from parts I had on hand, and I solved problems as they came up.  The unique feature of this printer is that its normal Y axis is on a gantry - so while it's shaped like a Prusa style bedslinger, the bed is in fact fixed in place.
Or, I could fix the gantry in place - and use the bed to supply all Y movement


## Video Walkthrough
{% include video id="_wT68gNBn74" provider="youtube" %}
