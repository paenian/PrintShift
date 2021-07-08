---
title: "PrintShift 3.0 Step 6: Raspberry Pi and Octopi Install"
---


# PrintShift 3.0 Build Series: Step 6

Once you've got your Prusa Mini able to eject parts, we highly recommend adding a Raspberry Pi to it and running Octoprint.  This allows you to access your printer remotely, and with plugins you can also print continuously, or even hook the machine up for random users to use.  More on that next time - for now just focus on the mechanics.

### Previous Step:
[PrintShift Gcode: Ejecting Parts](/portfolio/PrintShift-3-0-Step-5-PrintShift-Gcode)
### Next Step:
[PrintShift Step 7: Too Much Automation](/portfolio/PrintShift-3-0-Step-7-cloud-automation)

## Materials Needed
1. Prusa Mini, assembled, printing, with the conveyor belt bed, ejector motor, and control microswitch attached and wired together.
2. Pi Case - the top and bottom of either the Pi 3 or Pi 4 case.
   * [pi 4 top](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/Pi_4_Case_40mm_fan_top%20v3.stl)
   * [pi 4 bottom](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/Pi_4_Case_bottom%20v3.stl)
   * [pi 3 top](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/pi_3_case_top.stl)
   * [pi 3 bottom](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/pi_3_case_bottom.stl)
3. Camera Mount
   * [pi rear camera mount](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/pi%20camera%20mount%20-%20rear.stl)
   * [todo - webcam mount]()
     * The webcam mount I made has a 1/4" hole - common mounting for webcams in the US is 1/4x20 bolt
4. 4 * M2.5 screws, 35mm long.  These go through the mounting points, through the case top and bottom, AND through the Pi.  You could get away with long M3 screws, but you'd have to drill out all those components.
5. 4 * M2.5 hex nuts
6. Raspberry Pi 3 or 4 - either's fine, don't need extra ram or anything.  I don't run active cooling on my octoprint pi's, but certainly feel free to throw a fan on.
7. Pi Camera, OR webcam - see octoprint.org for compatible ones.


## Tools Needed

## Start & End Gcode

## Full PrusaSlicer Profile
