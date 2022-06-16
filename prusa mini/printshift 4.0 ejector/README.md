# PrintShift 4.0

4th generation Prusa Mini part ejection system.

## BoM
These are all the parts needed to build PrintShift 4.0.  Feel free to ping me with alternate sources, especially for non-US places.


### Lift the bed up
 - 6 Hex Standoffs - female threaded 5mm or 4.5mm hex standoff 10mm long.  Source: https://www.mcmaster.com/94868A166/
 - 6 flat head screws - M3 by 8mm long, yes you could re-use Prusa's original ones but they're short and torx, which annoys me.  Source: https://www.mcmaster.com/91304A101/
##### Printed Parts
 - [MINI-heatbed-cable-cover-bottom.stl](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%204.0%20ejector/MINI-heatbed-cable-cover-bottom.stl)
   - We need to replace the original heatbed cable cover - shortening it to make room for the tensioner.


### Motor and Idler Mounting
 - 1 Motor - 488:1 6v 20D Metal Gear Motor - Source: https://www.pololu.com/product/3711
   - To fit the other parts, the motor needs a 4mm shaft and two M2.5 screws spaced 7.5mm from the shaft.
   - Another motor is fine, but you'd need to adjust other parts, too.   
 - 2 Motor Mounting Screws - M2.5 by 10mm flat head screws - Source: https://www.mcmaster.com/92125A088/
 - 4 bearings - 8mmx12mmx3.5mm - that's 8mm inside diameter, 12mm outside diameter and 3.5mm thick.  Source: https://smile.amazon.com/gp/product/B082PPLHLQ/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1
 - 1 4mm bore 16 tooth Gt2 pulley.  Source: https://smile.amazon.com/gp/product/B09N79R6TG/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1
 - 1 8mm bore 40 tooth Gt2 pulley.  Source: https://smile.amazon.com/gp/product/B07K6BRL4K/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1
 - 1 110-2GT closed-loop Gt2 belt - 6mm wide, 55 teeth.  Source: https://smile.amazon.com/BEMONOC-2GT-Timing-Belt-110-2GT-6/dp/B014SSZ3EM
 - 2 8mm by 200mm long hardened steel shafts.  Source: https://smile.amazon.com/dp/B08HYJRRXD/
   - The drive shaft is a tiny bit short doing it like this, but the belt locks it in place so I figure it's fine.
 - 1 ~160mm EPDM rubber sleeve - 5/16 or 8mm in diameter, wall thickness 1/16" or 1.5mm or less.  Source: https://www.mcmaster.com/9776T15/
   - This provides grip to drive the belt.  1mm adhesive EPDM foam sheet works, too, but it's a pain to apply it smoothly.
##### Printed Parts
 - [direct mount motor lifted bushing.stl](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%204.0%20ejector/direct%20mount%20motor%20lifted%20bushing.stl)
   - holds the motor, and the rear of the drive shaft
 - [direct mount idler lifted bushing.stl](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%204.0%20ejector/direct%20mount%20idler%20lifted%20bushing.stl)
   - holds the front of the drive shaft

 
 ### Tension the Belt
 - 2 M5 hex nuts - really any will do - https://www.mcmaster.com/90592A095/
 - 2 M5 screws - I use 20mm long button head M5 screws, but if you have some other M5 lying around they're fine.  Source: https://www.mcmaster.com/97763A458/
 ##### Printed Parts
 - [tensioner body.stl](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%204.0%20ejector/tensioner%20body.stl)
   - You need two: one normal, one mirrored.
 - [tensioner rod holder bearing.stl](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%204.0%20ejector/tensioner%20rod%20holder%20bearing.stl)
   - You need two: one normal, one mirrored.


 ### Microswitch ACTIVATE!
 - Microswitch - 10T85U - 5amp, 250v, roller-lever.  Source: https://smile.amazon.com/MXRS-SPDT1NO-Momentary-Roller-Switch/dp/B07MW3W79B/
 - Wire - 20awg wire, I like the silicone cuz it's super flexible.  Source: https://smile.amazon.com/dp/B08CC1DLQF
 - HeatShrink Tubes - red solder seal wire connectors.  Source: https://smile.amazon.com/gp/product/B07N2G71C2
   - You can also solder the connections
 - M3 30mm T-nut - post-insert.  Source: https://smile.amazon.com/Assembly-Nickel-Plated-Fastener-Aluminum-Profile/dp/B07GVJFZV8
   - These can also be printed: https://www.printables.com/model/127404-3030-m3-drop-in-t-nut-remix
   - if you print them, you need an M3 nut also.
 - M3 by 10mm screw.  Source: https://www.mcmaster.com/91290A115/
 ##### Printed Parts
 - [limit switch mount.stl](https://github.com/paenian/PrintShift/blob/main/prusa%20mini/printshift%204.0%20ejector/limit%20switch%20mount.stl)
   - You need two: one normal, one mirrored.
   
 
 ### The Belt itself!
 - .2mm thick Kapton film
   - 155mm wide, 430mm long. Source: https://www.aliexpress.com/item/2255800287123252.html?spm=a2g0o.order_list.0.0.3e4c1802e5Lrmy&gatewayAdapt=4itemAdapt
   - 1 meter of film should get you 6 belts 
   - There's a jig for making these in the Prusa Mini directory
 - super thin PET tape.  Source: https://www.mcmaster.com/7630A175/
   - This is the best tape I've found.  It still tends to get damaged when printed on, so I time the motor to do a single revolution and don't print on the seam.


 ### POWER.
There are two options for power: external, or steal from the Mini.  Either way, we need 5v at a fair bit of amperage to power the ejection motor and the (optional, but super useful) Raspberry Pi.
External means you don't need to open up your mini's electronics bay, but then your printer takes up two wall plugs.
Internal makes your printer a bit more portable, but functionally it'll work exactly the same.

 #### External
 - 5v, 6A DC Power Supply.  This one can handle 120 or 240 volts.  Source: https://smile.amazon.com/dp/B08762BC1K
   - this plugs into the wall.  Hide it with your printer's big old brick power supply.
 #### Internal
 - 12v/24v in 5V out DC-DC power converter, 10A.  6 amps would be fine if you can find one.  Source: https://smile.amazon.com/dp/B01M03288J
   - This would need to plug into the Prusa Mini's power supply, generally inside the electronics enclosure.
 
 
 #### Adding a Pi
 It's just nice to plug 'em in properly, I don't feel comfy feeding power in through the GPIO pins.
 - Pi 4: 
   - USB-C male plug, 10".  Source: https://smile.amazon.com/dp/B09C7SLHFP
 - Pi 3 and before:
   - USB-Micro-B plug, 12".  Source: https://smile.amazon.com/Micro-Cable-12inch-22AWG-Pigtail/dp/B09DKYPCXK
