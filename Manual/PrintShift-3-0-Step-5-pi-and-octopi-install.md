---
title: "PrintShift 3.0 Step 5: Raspberry Pi and Octopi Install"
---


# PrintShift 3.0 Build Series: Step 5

Once you've got your Prusa Mini able to eject parts, we highly recommend adding a Raspberry Pi to it and running Octoprint.  This allows you to access your printer remotely, and with plugins you can also print continuously, or even hook the machine up for random users to use.  More on that next time - for now just focus on the mechanics.

### Previous Step:
[PrintShift Gcode: Ejecting Parts](/portfolio/PrintShift-3-0-Step-4.5-PrintShift-Gcode)
### Next Step:
[PrintShift Step 6: Too Much Automation](/portfolio/PrintShift-3-0-Step-6-cloud-automation)

## Materials Needed
1. Prusa Mini, assembled, printing, with the conveyor belt bed, ejector motor, and control microswitch attached and wired together.
2. Pi Case - the top and bottom of either the Pi 3 or Pi 4 case.
   * [pi 4 top](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/Pi_4_Case_40mm_fan_top%20v3.stl)
   * [pi 4 bottom](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/Pi_4_Case_bottom%20v3.stl)
   * [pi 3 top](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/pi_3_case_top.stl)
   * [pi 3 bottom](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/pi_3_case_bottom.stl)
3. Camera Mount
   * [pi rear center camera mount](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/pi%20camera%20mount%20-%20rear.stl)
   * [front corner webcam mount](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/mini%20mounts%20and%20enhancements/raspi/corner%20webcam%20mount.stl)
     * The webcam mount I made has a 1/4" hole - common mounting for webcams in the US is 1/4x20 bolt
4. 4 * M2.5 screws, 35mm long.  These go through the mounting points, through the case top and bottom, AND through the Pi.  You could get away with long M3 screws, but you'd have to drill out all those components.
5. 4 * M2.5 hex nuts
6. Raspberry Pi 3 or 4 - either's fine, don't need extra ram or anything.  I don't run active cooling on my octoprint pi's, but certainly feel free to throw a fan on.
7. Pi Camera, OR webcam - see octoprint.org for compatible, but most will work.
   * With a Pi Camera, I also get a longer cable - something like 200mm - so that you can attach it to the bed.  A fixed camera is pretty rough when printing, attaching the camera to the bed works a lot better.


## Tools Needed
 * 2mm hex key
 * needlenose pliers

## Steps
1. Download and install Octopi onto a handy microSD card.
   * The [Octopi Instructions](https://octoprint.org/download/) are amazing and I'm not gonna repeat 'em here.
   * Put the card into your Raspberry Pi - it's possible to do (and remove) after installation, but it's more finicky.
2. Install the Raspberry Pi
   * You'll need all of the 2.5mm screws and nuts, and the pi camera cable if you're going that route.  (Webcams can be plugged in later)
   * If you have a heatsink or fan for your Pi, now's the time to install it.
     * I've never had heat issues, but usually use a passive heatsink if I can find one lying around
   * Install the pi camera ribbon cable onto the Pi, and feed it out of the pi case top.
   * The pi should follow, into the top of the case - then the bottom, of course.
   * Install the pi in its case so that the power plug is facing out, and the ports are facing towards the Prusa Mini's power.
     * it's cool to put a pi in upside down.  All the kids are doing it.
   * You should be able to plug in the power from your buck converter installed when wiring up the motor - now's a good time to make sure it'll reach :-)
3. Install your pi camera using the cable that should be sticking out, OR your webcam.
4. Fire it up!
5. Install Plugins
   * [Continuous Print](https://plugins.octoprint.org/plugins/continuousprint/) - Nice local plugin for repeat-printing.  By default it has a bed clearing script - you can either put the start/end gcode in there, or make it blank and keep the gcode files with ejection code.  For portability, I prefer to keep each file having its own bed clearing - that way I can use other print services.
6. Explore Cloud Printing!
   * [Autodrop3d](https://www.autodrop3d.com/)
   * [Polar Cloud](https://about.polar3d.com/octoprint)
   * [Raise3d Cloud](https://cloud.raise3d.com/raise3d.html)
   * [Spaghetti Detective](https://www.thespaghettidetective.com/)

## Congratulations!
With this step, you've got a fully functional part-ejecting 3D Printer that can be controlled from anywhere in the world - 
