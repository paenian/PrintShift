---
title: "PrintShift 3.0 Step 2: Belted Bed Build"
---


# PrintShift 3.0 Build Series: Step 2

This page details how to assemble the PrintShift bed with its conveyor belt, rollers and tensioners.  At the end of this step, you will be able to run test prints on your bed material, but the ejector will not be assembled.

### Previous Step:
[Printing PrintShift Parts on your Prusa Mini](/portfolio/PrintShift-3-0-Step-1-Printing-PrintShift-Parts-on-your-Prusa-Mini)
[Building-a-Continuous-Belt](/portfolio/Building-a-Continuous-Belt/)

### Next Step:
[Powering the PrintShift Conveyor Belt](/portfolio/PrintShift-3-0-Step-3-Motorize-the-PrintShift-Conveyor-Belt)

## Materials Needed
1. Prusa Mini, assembled and printing, preferably having just printed the parts you'll need for this step :-)
  * see [PrintShift Step 1](/portfolio/PrintShift-3-0-Step-1-Printing-PrintShift-Parts-on-your-Prusa-Mini) for details.
2. Parts Printed in Step 1, from the [Small Parts](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/PrintShift%20-%20all%20small%20parts.stl) stl
  * 1 - [mini cable cover](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/MINI-heatbed-cable-cover-bottom.stl)
  * 2 - (one mirrored) - [fixed bushing](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/lifted%20belt%20shaft%20mount%20-%20fixed%20bushing.stl)
  * 2 - (one mirrored) - [tensioner rod holder]https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/lifted%20tensioner%20rod%20holder.stl)
  * 2 - (one mirrored) - [tensioner body](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/tensioner%20body.stl)
3. Parts from the [Parts Kit](/portfolio/Bill-of-Materials)
  *  1 - 8mm shaft collar
  *  1 - 8mm shaft, 210mm long
  *  1 - 8mm shaft, 183mm long
  *  2 - 8mm flanged bushing
  *  6 - m3 hex standoffs, 10mm long
  *  6 - m3 flathead screws, 8mm long
  *  2 - m5 screws, 25mm long
  *  2 - m5 hex nuts, thin
  *  1 - EPDM foam tube
4. A continuous conveyor belt loop - 435mm long, 155mm wide:
  * [Building-a-Continuous-Belt](/portfolio/Building-a-Continuous-Belt/)


## Tools Needed
1. 2.5mm allen key - for the headbed cable cover replacement
2. 2mm allen key - for our new bed screws
3. needlenose pliers
4. TX10 Torx key - for Prusa's bed screws

## Procedure
1. Remove the Prusa Mini bed and the old standoffs
   * Set aside the spring steel print surface
   * Use your TX10 Torx wrench to remove the Prusa Mini's bed.  We're not re-using these screws.
   * Use pliers or a 5mm hex socket to remove the center row of standoffs - they get in the way of the belt.  These will not be reused either.
   * The 
2. Replace the heated bed cable cover to make room for the belt tensioner mount
   * 2.5mm allen key to remove the screw - keep it handy, we use the same screw
   * Slide the cable cover out
   * Move the 3mm locknut to your new cable cover
   * screw in the new cover with the old screw.
3. Replace the six remaining standoffs - going from the original 6mm to fancy new 10mm
   * I put the mini at the edge of a table, and slide the belt all the way forward to replace the front six
   * Rotate, slide the bed all the way back to replace the rear six
   * Re-use the original Prusa Mini screws, but you do not need the 6mm standoffs again.
   * Be sure to tighten the standoffs on, and optionally use some loctite - these will remain in place while we unscrew the bed to swap belts.
4. Build and add the drive rail.
   * The longer drive rail needs to have its shaft coller screwed to one end.
   * Then, insert the brass bushings into the [fixed bushing](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/lifted%20belt%20shaft%20mount%20-%20fixed%20bushing.stl)
     * There's an indent for the bushing's flange on the printed fixed bushing - be sure it's on correctly!
   * Slide the drive shaft through the front bushing
   * Slide the EPDM foam onto the roller - a little air from the open side helps a LOT.
   * Slide the rear bushing on, and then place the drive roller onto the left-side standoffs.
   * Finally, you can clamp one one side of the shaft coupler to complete the mount.
5. Assemble the Tensioner Mounts!
   * Snap an M5 nut into the [tensioner body](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/tensioner%20body.stl)
     * times two!
   * Screw your 25mm M5 screw into the tensioner body through the nut
   * Insert the [tensioner rod holder](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%203.0%20ejector/lifted%20tensioner%20rod%20holder.stl) into the body
   * Insert the idler rod into either side of the tensioner rod holders
   * The tensioner body, as well as the rod holder can then be positioned on the right-side hex standoffs.
6. Mount the Belt - you're almost done!  This is the same procedure as changing the belt
   * First, de-tension the idler as much as you can, sliding the idler in towards the center of the bed
   * Loosely screw the back three screws for the heated bed in place - using our new, 8mm M3 flat-head screws
   * Lift the front of the bed, and remove the front side of the tensioner and idler rods, angling them in towards the center of the bed
   * This will let you slide the belt on, all the way til it's touching the rear center hex standoff
   * Put the drive and idler rod holders back on their hex standoffs, and close up the bed
   * Tighten all six front and rear bed screws
   * With the belt still untensioned, slide the spring steel print surface in between the heated bed and the belt
   * Tension the bed

At this point, you can start a test print!  It won't eject yet, unless you manually rotate the shaft coupler.

## Video Walkthrough
{% include video id="plg7Tx-Cm6E" provider="youtube" %}
