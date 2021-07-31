---
title: "PrintShift 3.0 Step 6: Cloud Installation"
---


# PrintShift 3.0 Build Series: Step 6

This step is about adding plugins to Octoprint in order to enable cloud printing.  It will be continually updated

### Previous Step:
[PrintShift Step 5: Unleash Octoprint!](/portfolio/PrintShift-3-0-Step-5-pi-and-octopi-install)
### Next Step:
[PrintShift Step 6: Too Much Automation](/portfolio/PrintShift-3-0-Step-6-cloud-automation)

## Materials Needed
1. Prusa Mini, assembled, printing, with the conveyor belt bed, ejector motor, controls, and the Raspberry Pi attached and loaded up with Octoprint.  Yeah.
2. Electrons

## Tools Needed
 * A computer to pester your Octoprint install with

## Cloud Options
1. Autodrop 3d
2. Spaghetti Detective
3. Raise3d Cloud
4. etc

## Cloud Services
One way to get more out of your part-ejecting 3D Printer is to put it on the CLOUD.  The benefit of a cloud service is that it puts your 3D Printer online, so that you can monitor it remotely and even start prints.  There are, of course, other ways to do this like tunneling through your router, but the cloud takes care of security and configuration headaches.

## Installing and Taming AutoDrop3d
Here I'll be talking about the use and installation of Autodrop 3d - doing a deep dive on this particular cloud printing service.  Autodrop 3D is the only part-ejection-aware cloud service that I am -aware- of.  It's a bit rough around the edges, but I'm hoping that calling attention to it - getting it more users - that's where y'all come in - will help speed up the improvement of the service.  Right now, it's free for personal use and offers printers the ability to charge for external prints on their machine - more on that later.

It can be installed on its own, as an Octoprint replacement or as an octoprint plugin; personally, I like the plugin approach as the most flexible, but it is a little more involved.  They also sell a pi with Autodrop pre-installed, and even sell part-ejecting Kossel machines with a cool pusher ejector - worth checking out, certainly.

The goal of this printer is to open it up to test prints - from anywhere in the world.  I've also be fired up a streaming option, so that you can share your creation as its being printed - I'm expecting folks to use it to send messages, or other silly things.

Anyways.  Before installing the Autodrop3d plugin, you need Python 3 - which you have if you're on Octopi 0.18.  If you're not:
1. Take a backup from inside OctoPrint's 'Backup and Restore' tab, and download it.
2. Download & install OctoPi 0.18
3. Once installed, you can restore your backup using 'Backup and Restore' again.

### Installing the Plugin
https://github.com/Autodrop3d/AD3d-octoprint-connect/archive/master.zip

### Setting up Autodrop3d
Material, location, printer, etc - it's a bit of a boondoggle.  I'm not going to run through all of it, just an overview, and thankfully once it's set up you generally don't need to mess with it.

### Safe slicing settings for Autodrop3d
We're going to add a raft and supports for every part - to ensure build plate adhesion.  Additionally, this raft is beefier than most!  Generally, I'm using PrintShift to print large batches of the same part - so tuning the gcode for each part is essential to get the best prints you know, in order to sell parts.  This internal slicer is designed to be used by non-experts printing one-off random parts - so we're being conservative.

### Watch your print being printed!
So, when you want to print, you can upload a new part or - check this out - it's got three 3D editors BUILT IN.
 * A mesh editor/sculptor, that's, well, pretty hard to use to make things, but can be used to smooth out an existing STL or something.  I'm not familiar with these at all, though, so can't compare it to something like Z-Brush.
 * OpenSCAD!  Yeah.  Pretty bare bones, but, it's in there
 * JSketcher, a Javascript-only parametric modeler.
These are nice, but, well, for most jobs if I'm on the internet already I'd be using tinkercad or OnShape.
So mostly I just upload STLs, 

I'll have CannonFodder here streaming the prints live - and will make weekly roundups of interesting streams from the machine up on this channel.


## Congratulations!
With this step, you've got a fully functional part-ejecting 3D Printer that can be controlled from anywhere in the world - and by anyone if you're not careful!  Happy printing, as always.
