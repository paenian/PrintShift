---
title: "PrintShift 3.0 Step 5: PrintShift Gcode: Ejecting Parts"
---


# PrintShift 3.0 Build Series: Step 5

This is a short, non-building section to discuss PrintShift Gcode.  It's not truly a step, and will hopefully serve as a reference in the future.  If you're in a hurry, no worries - all you NEED to do is copy in the start and end gcode.  I've annotated the gcode itself, so hopefully it's easy enough to edit later, or adapt to your non-Prusa Mini or your non-Prusa slicer.

### Previous Step:
[Power the PrintShift Belt](/portfolio/PrintShift-3-0-Step-4-Power-the-PrintShift-Conveyor-Belt)
### Next Step:
[PrintShift Gcode: Ejecting Parts](/portfolio/PrintShift-3-0-Step-5-PrintShift-Gcode)

## Materials Needed
1. Prusa Mini, assembled, printing, with the conveyor belt bed, ejector motor, and control microswitch attached and wired together.


## Tools Needed
1. Computer of some description
2. PrusaSlicer, or your slicer of choice

## Start & End Gcode
[Latest Github Start and End Gcode](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/PrusaSlicer%20Profile/start_and_end_gcode.txt)

 * The Start Gcode heats up the bed, gives it a spin to even out the heating (I call it the barbecue roll), and then proceeds with the usual Prusa routine of leveling, purging (new purge location, so that it ends up on the belt), heating and printing.
 * The End Gcode cools the printer, parks the extruder, and then runs the bed ejection.  The pause is simply a timed pause; an easy modification is to have the printer wait until the bed cools to a certain temperature, but that's not ideal for me because I switch between PLA and PETG often.  Waiting for PETG to cool off to PETG ejector temps takes a while, and ejecting PLA at PETG bed temps gives you mildly rolled parts!  So yeah.  Timed Pause.  Not exciting, but it works well.


## Full PrusaSlicer Profile
[Latest Github PrusaSlicer Profile](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/PrusaSlicer%20Profile/PrusaSlicer_PrintShift_Config.ini)
