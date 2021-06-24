---
title: "PrintShift 3.0 Step 4: Power the PrintShift Conveyor Belt"
---


# PrintShift 3.0 Build Series: Step 4

This chapter includes both how to power AND how to control your PrintShift ejector!  For this build, the control system is moving the Z axis to the top and activating a microswitch to turn on the ejector motor.

I'll post an alternative control later - using a relay activated by the raspberry pi.


### Previous Step:
[Motorize the PrintShift Conveyor Belt](/portfolio/PrintShift-3-0-Step-3-Motorize-the-PrintShift-Conveyor-Belt)
### Next Step:
[Power the PrintShift Belt](/portfolio/PrintShift-3-0-Step-4-Power-the-PrintShift-Conveyor-Belt)

## Materials Needed
1. Prusa Mini, assembled, printing, with the conveyor belt bed and ejector motor already attached.
  * see [PrintShift Step 3](/portfolio//portfolio/PrintShift-3-0-Step-3-Motorize-the-PrintShift-Conveyor-Belt) for details.
2. Parts Printed in Step 1, from the [Small Parts](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/PrintShift%20-%20all%20small%20parts.stl) stl
  * 1 - [limit switch mount](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/limit%20switch%20mount.stl)
3. Parts from the [Parts Kit](/portfolio/Bill-of-Materials)
  *  3 - M3 screw, 12mm long
  *  3 - post-instert 3030 T-Nut, m3 tapped
  *  1 - ring terminal
  *  1 - microswitch
  *  various lengths of wire
  *  3 - wire nuts
  *  1 - 24v->5v buck converter (optional, only needed if you want to add a pi later (hint: you do))
  *  4 - heat shrink solder tubes
  *  4 - zip ties


## Tools Needed
1. 2.5mm allen key
2. wire cutter/stripper
3. heat gun

## Procedure
1. First the microswitch, since we need to wire it up before installing.
   * There are three pins on the microswitch
     * C - Common, at the root of the lever
     * NO - Normally Open, in the middle
     * NC - Normally Closed, at the roller or end of the lever
   * We're going to connect C and NO; that means that, normally the switch is off, but when we press the lever it will turn the motor on.
   * First cut 2 of the heat shrink solder tubes so that there's only a little heatshrink past the solder
   * then thread both onto the same (at least) 40" or 1 meter length of red wire, long sides together.
     * Later we'll cut this wire - one side goes to the motor, the other goes to the HOT junction
     * for now, though, it's easier to leave it long
   * Strip the ends of the wire, and thread one end through the C terminal, and the other through the NO terminal
   * Slide the heat shrink solder tubes into place, and heat til the solder melts onto the wire + terminal
2. The microswitch then gets mounted to the top front of the Z axis
   * Insert the loop of wire first, and then the microswitch into the microswitch mount.  The lever end should point AWAY from the mounting hole!
     * Use a small zip tie to secure the microswitch
   * Take one 12mm M3 screw and one post-insert T-Nut and mount the [limit switch mount](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/limit%20switch%20mount.stl) to the front, top of the Z axis
   * The bottom of the microswitch mount's should be just above the top of the Z axis extrusion - but we can fine-adjust it later.
3. Mount the buck converter
   * Using two 12mm M3 screws and two post-insert T-Nuts, mount the microswitch on the bottom of the right side of the Z extrusion
     * Make sure the wires are facing the rear - it looks nicer.
4. Wire up the Motor
   * Run the wire from the microswitch (still un cut) over to the motor.  I like to zip tie it to the Y motor cable to help keep it out of the way.
   * We're going to connect it to the + terminal on the motor
   * Cut the wire a bit longer than you need to reach the motor and strip the end
   * Thread the wire onto the motor's + terminal, and using another heat shrink solder tube melt it into place.
   * Get your other wire, and similarly attach one end of it to the motor.
   * You can run it back parallel to the red wire
5. Next we're going to wire up the microswitch
   * Power from the mini goes into a wire nut, and from there goes to the microswitch and the buck converter
   * Neutral from the mini goes into a wire nut, and from there goes to the motor and the buck converter
     * If you wired the motor backwards, you can switch the motor and the microswitch to the opposite wire nuts :-)
   * The wire nuts can slot right into the 3030 extrusion and provide good wire management
   * So cut off some of the non-motor red wire from the microswitch (again leaving a bit extra) such that it'll reach the bottom of the Z extrusion.
     * Strip all three ends
     * In the wire nut, put the red microswitch wire, the red buck converter wire, and one end of the red wire you just cut off
     * You might need to strip the buck converter wire to get a good connection
     * Just leave the end for now
6. Next, wire up the buck converter
   * The converter got half-wired in the previous step
   * Cut the end off of the not-red wire from the motor such that it easily reaches the bottom of the Z extrusion
     * Strip all three ends again
     * In the wire nut, put the not-red motor wire, the black buck converter wire, and one end of the not-red wire you just cut off
7. CHECK your wiring!
   * You should have two stripped, unconnected wire ends - red and not-red - and no other unconnected wire.
   * Red goes to a wire nut, which then goes to the buck converter and the the microswitch.
     * The microswitch has one wire coming in from the wire nut, and one running over to the motor.
   * Not-red goes to a wire nut, then to the buck converter and then to the motor.
8. UNPLUG the Prusa Mini!!!
   * I mean, it should've been unplugged this whole time...
9. Open up the electronics case
   * The RED wire is powered from the power switch - either the always-on leg, or the switched leg.
     * Either way is fine - mainly depends on if you want the Pi on when the printer is off.
     * Slide one of the switch connectors off, put the stripped red wire through the hole in the terminal, and slide the connector back on
   * The other wire needs a ring terminal crimped onto it - this can be done with pliers, but most wire strippers will have a pokey crimp lug.
     * Once the wire is crimped, we need a 2.5mm hex driver to remove one of the Buddy Boards screws - right by the power inlet.
     * The screw goes through the ring terminal and right back - it's connected to the ground plane of the buddy board.
10. DONE!  I know it's a lot of fiddling, but the wiring's not too bad.
     
## Video Walkthrough
{% include video id="kofxEpY8BTg" provider="youtube" %}
