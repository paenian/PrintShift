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


## Installing and Taming AutoDrop3d
Here I'll be installing Autodrop 3d.

It can be installed on its own, as an Octoprint replacement or as an octoprint plugin; personally, I like the plugin approach as the most flexible, but it is a little more involved.

The goal of this printer is to open it up to test prints - from anywhere in the world.  I'll also be firing up a streaming option, so that you can share your creation as its being printed - I'm expecting folks to use it to send messages, or other silly things.

Anyways.  Before installing the Autodrop3d plugin, you need Python 3 - which you have if you're on Octopi 0.18.  If you're not:
1. Take a backup from inside OctoPrint's 'Backup and Restore' tab, and download it.
2. Download & install OctoPi 0.18
3. Once installed, you can restore your backup using 'Backup and Restore' again.

### Installing the Plugin
https://github.com/Autodrop3d/AD3d-octoprint-connect/archive/master.zip

### Setting up Autodrop3d
Material, location, printer, etc

### Safe slicing settings for Autodrop3d
We're going to add a raft and supports for every part - to ensure build plate adhesion.  Additionally, this raft is beefier than most!

### Watch your print being printed!
I'll have CannonFodder here streaming the prints live - and will make weekly roundups of interesting streams from the machine up on this channel.


## Congratulations!
With this step, you've got a fully functional part-ejecting 3D Printer that can be controlled from anywhere in the world - 
