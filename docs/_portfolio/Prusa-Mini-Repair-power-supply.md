---
title: "Prusa Mini Repair: Mini Power Supply"
---



So, let's say your Prusa Mini power supply kicks the bucket.  Can you fix it?  Should you fix it?

## Output and Connector
The mini uses a round four pin plug.  Two of the pins are for power input, the other two are ground - and the sheath is theoretically a separate ground.  Looking at the plug, though, we've only got two pins - so the sheath is the same ground as the two pins.  No big deal - if it was high voltage or current you'd like to see independent ground, but this supply is 24v, 160w - nothing too exciting.

If your supply's been hit by a tiny meteorite or otherwise beyond repair, replacements are available from (Prusa Research)[https://shop.prusa3d.com/en/minimini/1026-psu.html] for $58 US dollars or 52 euros.

The connector is a 4-pin Mini-Din Kycon Snap and Lock DC Power Connector.  Two pins are 24v, the other two pins and the sheath are grounded.  The power pins join up immediately upon entering the mini, as do the grounding pins.

If you need to replace the connector, [digikey](https://www.digikey.at/product-detail/en/kycon-inc/KPPX-4P/2092-KPPX-4P-ND/9990085?cur=EUR&lang=en) sells them, and has links to the datasheet so you can find the connector on your preferred electronics site.

You could also easily bypass the connector, and run 24v right into the buddy board; for this, I would use a ring terminal for the ground and connect the power wire directly to the power switch.


## What's inside?
If your power supply has failed, are there any user servicable parts inside?  Hope so.  I'll be opening it live to see what's in there.  I'm not an electrical engineer, my background is computer science but I've been around power supplies for some time.  Mostly, you look for the part that's burnt and replace it.
