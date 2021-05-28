---
title: "PrintShift 3.0 Step 1: Printing PrintShift Parts on your Prusa Mini"
---


# PrintShift 3.0 Build Series: Step 1

This page details how to print the PrintShift parts.  I like to print the parts on the Prusa Mini that's destined to be PrintShift-ed - that way you know the machine is up and running and ready to go.  If your mini's acting up or failing in any way... repair it before you upgrade it!

## Materials Needed
1. Prusa Mini.  Yeah.  The whole thing.
   * Prusa sells 'em mostly built: [Prusa Mini+](https://shop.prusa3d.com/en/3d-printers/994-original-prusa-mini.html?gclid=CjwKCAjwqcKFBhAhEiwAfEr7zf-pSXPGu9ojvIkMNvRP-jbV9U_CCwTF5LiVKgkwHjTrwobpf3tJ5xoCql4QAvD_BwE)
   * Or barely assembled: [Prusa Mini+ Kit](https://shop.prusa3d.com/en/3d-printers/1387-original-prusa-mini-kit.html)
   * The mostly built goes together in under an hour; kit is maybe ten hours of building.
2. Filament!
   * You need some high-temperature filament like ABS, PETG, ASA or better for the bed-touching components.
   * You need some stiff filament for the Motor Mount and Standoff - PLA is fine, pretty much anything except TPU.

## Tools Needed
1. The Prusa Mini includes all the tools that you'll need for this portion of the build :-)
   * I do generally use my own 2.5mm allen wrench
   * And some side cutters to trim the zip tie

## Procedure
1. Build your Prusa Mini!  Just follow Prusa's instructions
  * Mostly Built:  [Prusa Mini+ Build Instructions](https://help.prusa3d.com/en/guide/building-your-mini_177717)
  * Kit: [Prusa Mini+ KIT Build Instructions](https://help.prusa3d.com/en/category/original-prusa-mini-kit-assembly_1215)
2. Test Print!  Prusa includes a few on the USB stick that comes with the printer.
3. Print Large PrintShift Parts
  * These are printed with .25mm layers, 3 perimeters, 50% cubic infill.  They need to be strong and rigid.
  * [Rear Motor Plate](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/rear%20motor%20plate.stl)
  * [Motor Plate Standoff with Pi](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/motor%20plate%20standoff%20-%20with%20pi.stl)

4. Print Small PrintShift Parts
  * This is all of the other parts; they need to handle the higher temperatures of the bed, so must be ABS, ASA, PETG or similar. 
  * Mine are printed in blue ABS, .25mm layers, 3 perimeters, 50% cubic infill.  They need to be strong, rigid, and stable up to 100C.
  * [Small Parts](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/small%20parts%20plate.stl)
5. Print (optional) Raspberry Pi components
  * [pi 4 case top](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/Pi_4_Case_40mm_fan_top%20v3.stl)
  * [pi 4 case bottom](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/Pi_4_Case_bottom%20v3.stl)
  * [pi 3 case top](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/pi_3_case_top.stl)
  * [pi 3 case bottom](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/pi_3_case_bottom.stl)
  * [Rear camera mount](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/rear%20camera%20mount.stl)
6. Gather the rest of the parts from the [Bill of Materials](/portfolio/Bill-of-Materials/) and start [Building the Belt](/portfolio/PrintShift-3.0-Step-2:Building-The-Conveyor-Bed)!


## Video Walkthrough
https://www.youtube.com/watch?v=aPgevA5sr5U
