; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: prusa mini orbiter
; Filament: frank
; Created: Sun Apr 18 2021 08:56:45 GMT-0400 (Eastern Daylight Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 220 °C
; Bed Temperature = 60 °C
; Retraction Distance = 1.2 mm
; Layer Height = 0.3 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 180 mm
; Bed Size Y = 180 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/m
; Fast Printing Speed = 4200 mm/m
; Movement Speed = 7200 mm/m
; Retract Speed = 4800 mm/m
; Unretract Speed = 4200 mm/m
; Printing Acceleration = 1250 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 2
; Factor Stepping = 0.1
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 88 mm
; Print Size Y = 125 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = false
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s


; custom start gcode for the PrintShift Prusa Mini w/Orbiter 
G90 ; use absolute coordinates
M83 ; extruder relative mode

M92 E655 ; set E steps per mm for the Orbiter extruder
M906 E350 ; set the extruder to 350ma for the Orbiter extruder.  350 is the default, can bump up as needed.
M900 K0.03 ; set the linear advance for the Orbiter

M104 S170 ; set extruder temp for bed leveling
M140 S[first_layer_bed_temperature] ; set bed temp
M109 R170 ; wait for bed leveling temp
M190 S[first_layer_bed_temperature] ; wait for bed temp

G28 ; home all without mesh bed level
G0 Y-3 ;
G0 Z181 F2000 ; move up and actuate the bed for a bbq roll
G4 S45 ; Dwell for 45 seconds
G0 Z170 ; move down to stop the roll

G29 ; mesh bed leveling
G1 X0 Y15 F3000 ; move into priming position
M109 S[first_layer_temperature] ; wait for extruder temp
G92 E0.0

; prime the nozzle
G1 Z0.2 F720
G1 E6.0 F450
G1 X15.0 E10.0 F900
G92 E0.0

M221 S95 ; set flow


;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
T0 ; Switch to tool 0
M104 S220 ; Set nozzle temperature (no wait)
M190 S60 ; Set bed temperature (wait)
G28 ; Home all axes
G1 Z5 F100 ; Z raise
M109 S220 ; Wait for nozzle temp
M204 P1250 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0
G1 X90 Y90 F7200 ; move to start
G1 Z0.3 F1200 ; Move to layer height
G1 E-1.2 F4800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X46 Y27.5 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y27.5 E1.1974 F1200 ; print line
G1 X106 Y27.5 E2.3947 F4200 ; print line
G1 X126 Y27.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y32.5 F7200 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y32.5 E1.1974 F1200 ; print line
G1 X106 Y32.5 E2.3947 F4200 ; print line
G1 X126 Y32.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y37.5 F7200 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y37.5 E1.1974 F1200 ; print line
G1 X106 Y37.5 E2.3947 F4200 ; print line
G1 X126 Y37.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y42.5 F7200 ; move to start
M900 K0.3 ; set K-factor
M117 K0.3 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y42.5 E1.1974 F1200 ; print line
G1 X106 Y42.5 E2.3947 F4200 ; print line
G1 X126 Y42.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y47.5 F7200 ; move to start
M900 K0.4 ; set K-factor
M117 K0.4 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y47.5 E1.1974 F1200 ; print line
G1 X106 Y47.5 E2.3947 F4200 ; print line
G1 X126 Y47.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y52.5 F7200 ; move to start
M900 K0.5 ; set K-factor
M117 K0.5 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y52.5 E1.1974 F1200 ; print line
G1 X106 Y52.5 E2.3947 F4200 ; print line
G1 X126 Y52.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y57.5 F7200 ; move to start
M900 K0.6 ; set K-factor
M117 K0.6 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y57.5 E1.1974 F1200 ; print line
G1 X106 Y57.5 E2.3947 F4200 ; print line
G1 X126 Y57.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y62.5 F7200 ; move to start
M900 K0.7 ; set K-factor
M117 K0.7 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y62.5 E1.1974 F1200 ; print line
G1 X106 Y62.5 E2.3947 F4200 ; print line
G1 X126 Y62.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y67.5 F7200 ; move to start
M900 K0.8 ; set K-factor
M117 K0.8 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y67.5 E1.1974 F1200 ; print line
G1 X106 Y67.5 E2.3947 F4200 ; print line
G1 X126 Y67.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y72.5 F7200 ; move to start
M900 K0.9 ; set K-factor
M117 K0.9 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y72.5 E1.1974 F1200 ; print line
G1 X106 Y72.5 E2.3947 F4200 ; print line
G1 X126 Y72.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y77.5 F7200 ; move to start
M900 K1 ; set K-factor
M117 K1 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y77.5 E1.1974 F1200 ; print line
G1 X106 Y77.5 E2.3947 F4200 ; print line
G1 X126 Y77.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y82.5 F7200 ; move to start
M900 K1.1 ; set K-factor
M117 K1.1 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y82.5 E1.1974 F1200 ; print line
G1 X106 Y82.5 E2.3947 F4200 ; print line
G1 X126 Y82.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y87.5 F7200 ; move to start
M900 K1.2 ; set K-factor
M117 K1.2 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y87.5 E1.1974 F1200 ; print line
G1 X106 Y87.5 E2.3947 F4200 ; print line
G1 X126 Y87.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y92.5 F7200 ; move to start
M900 K1.3 ; set K-factor
M117 K1.3 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y92.5 E1.1974 F1200 ; print line
G1 X106 Y92.5 E2.3947 F4200 ; print line
G1 X126 Y92.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y97.5 F7200 ; move to start
M900 K1.4 ; set K-factor
M117 K1.4 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y97.5 E1.1974 F1200 ; print line
G1 X106 Y97.5 E2.3947 F4200 ; print line
G1 X126 Y97.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y102.5 F7200 ; move to start
M900 K1.5 ; set K-factor
M117 K1.5 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y102.5 E1.1974 F1200 ; print line
G1 X106 Y102.5 E2.3947 F4200 ; print line
G1 X126 Y102.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y107.5 F7200 ; move to start
M900 K1.6 ; set K-factor
M117 K1.6 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y107.5 E1.1974 F1200 ; print line
G1 X106 Y107.5 E2.3947 F4200 ; print line
G1 X126 Y107.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y112.5 F7200 ; move to start
M900 K1.7 ; set K-factor
M117 K1.7 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y112.5 E1.1974 F1200 ; print line
G1 X106 Y112.5 E2.3947 F4200 ; print line
G1 X126 Y112.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y117.5 F7200 ; move to start
M900 K1.8 ; set K-factor
M117 K1.8 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y117.5 E1.1974 F1200 ; print line
G1 X106 Y117.5 E2.3947 F4200 ; print line
G1 X126 Y117.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y122.5 F7200 ; move to start
M900 K1.9 ; set K-factor
M117 K1.9 ; 
G1 E1.2 F4200 ; un-retract
G1 X66 Y122.5 E1.1974 F1200 ; print line
G1 X106 Y122.5 E2.3947 F4200 ; print line
G1 X126 Y122.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X46 Y127.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X66 Y132.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X66 Y152.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 X106 Y132.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X106 Y152.5 E1.1974 F1200 ; print line
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
;
; print K-values
;
G1 X128 Y25.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X130 Y25.5 E0.1197 F1200 ; 0
G1 X130 Y27.5 E0.1197 F1200 ; 0
G1 X130 Y29.5 E0.1197 F1200 ; 0
G1 X128 Y29.5 E0.1197 F1200 ; 0
G1 X128 Y27.5 E0.1197 F1200 ; 0
G1 X128 Y25.5 E0.1197 F1200 ; 0
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y35.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X130 Y35.5 E0.1197 F1200 ; 0
G1 X130 Y37.5 E0.1197 F1200 ; 0
G1 X130 Y39.5 E0.1197 F1200 ; 0
G1 X128 Y39.5 E0.1197 F1200 ; 0
G1 X128 Y37.5 E0.1197 F1200 ; 0
G1 X128 Y35.5 E0.1197 F1200 ; 0
G1 E-1.2 F4800 ; retract
G1 X131 Y35.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X131 Y35.9 E0.0239 F1200 ; dot
G1 E-1.2 F4800 ; retract
G1 X132 Y35.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X132 Y37.5 F7200 ; move to start
G1 X132 Y39.5 F7200 ; move to start
G1 X134 Y39.5 E0.1197 F1200 ; 2
G1 X134 Y37.5 E0.1197 F1200 ; 2
G1 X132 Y37.5 E0.1197 F1200 ; 2
G1 X132 Y35.5 E0.1197 F1200 ; 2
G1 X134 Y35.5 E0.1197 F1200 ; 2
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y45.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X130 Y45.5 E0.1197 F1200 ; 0
G1 X130 Y47.5 E0.1197 F1200 ; 0
G1 X130 Y49.5 E0.1197 F1200 ; 0
G1 X128 Y49.5 E0.1197 F1200 ; 0
G1 X128 Y47.5 E0.1197 F1200 ; 0
G1 X128 Y45.5 E0.1197 F1200 ; 0
G1 E-1.2 F4800 ; retract
G1 X131 Y45.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X131 Y45.9 E0.0239 F1200 ; dot
G1 E-1.2 F4800 ; retract
G1 X132 Y45.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X132 Y47.5 F7200 ; move to start
G1 X132 Y49.5 F7200 ; move to start
G1 X132 Y47.5 E0.1197 F1200 ; 4
G1 X134 Y47.5 E0.1197 F1200 ; 4
G1 X134 Y49.5 F7200 ; move to start
G1 X134 Y47.5 E0.1197 F1200 ; 4
G1 X134 Y45.5 E0.1197 F1200 ; 4
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y55.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X130 Y55.5 E0.1197 F1200 ; 0
G1 X130 Y57.5 E0.1197 F1200 ; 0
G1 X130 Y59.5 E0.1197 F1200 ; 0
G1 X128 Y59.5 E0.1197 F1200 ; 0
G1 X128 Y57.5 E0.1197 F1200 ; 0
G1 X128 Y55.5 E0.1197 F1200 ; 0
G1 E-1.2 F4800 ; retract
G1 X131 Y55.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X131 Y55.9 E0.0239 F1200 ; dot
G1 E-1.2 F4800 ; retract
G1 X132 Y55.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X132 Y57.5 F7200 ; move to start
G1 X134 Y57.5 E0.1197 F1200 ; 6
G1 X134 Y55.5 E0.1197 F1200 ; 6
G1 X132 Y55.5 E0.1197 F1200 ; 6
G1 X132 Y57.5 E0.1197 F1200 ; 6
G1 X132 Y59.5 E0.1197 F1200 ; 6
G1 X134 Y59.5 E0.1197 F1200 ; 6
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y65.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X130 Y65.5 E0.1197 F1200 ; 0
G1 X130 Y67.5 E0.1197 F1200 ; 0
G1 X130 Y69.5 E0.1197 F1200 ; 0
G1 X128 Y69.5 E0.1197 F1200 ; 0
G1 X128 Y67.5 E0.1197 F1200 ; 0
G1 X128 Y65.5 E0.1197 F1200 ; 0
G1 E-1.2 F4800 ; retract
G1 X131 Y65.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X131 Y65.9 E0.0239 F1200 ; dot
G1 E-1.2 F4800 ; retract
G1 X132 Y65.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X132 Y67.5 F7200 ; move to start
G1 X134 Y67.5 E0.1197 F1200 ; 8
G1 X134 Y65.5 E0.1197 F1200 ; 8
G1 X132 Y65.5 E0.1197 F1200 ; 8
G1 X132 Y67.5 E0.1197 F1200 ; 8
G1 X132 Y69.5 E0.1197 F1200 ; 8
G1 X134 Y69.5 E0.1197 F1200 ; 8
G1 X134 Y67.5 E0.1197 F1200 ; 8
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y75.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X128 Y77.5 E0.1197 F1200 ; 1
G1 X128 Y79.5 E0.1197 F1200 ; 1
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y85.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X128 Y87.5 E0.1197 F1200 ; 1
G1 X128 Y89.5 E0.1197 F1200 ; 1
G1 E-1.2 F4800 ; retract
G1 X129 Y85.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X129 Y85.9 E0.0239 F1200 ; dot
G1 E-1.2 F4800 ; retract
G1 X130 Y85.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X130 Y87.5 F7200 ; move to start
G1 X130 Y89.5 F7200 ; move to start
G1 X132 Y89.5 E0.1197 F1200 ; 2
G1 X132 Y87.5 E0.1197 F1200 ; 2
G1 X130 Y87.5 E0.1197 F1200 ; 2
G1 X130 Y85.5 E0.1197 F1200 ; 2
G1 X132 Y85.5 E0.1197 F1200 ; 2
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y95.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X128 Y97.5 E0.1197 F1200 ; 1
G1 X128 Y99.5 E0.1197 F1200 ; 1
G1 E-1.2 F4800 ; retract
G1 X129 Y95.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X129 Y95.9 E0.0239 F1200 ; dot
G1 E-1.2 F4800 ; retract
G1 X130 Y95.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X130 Y97.5 F7200 ; move to start
G1 X130 Y99.5 F7200 ; move to start
G1 X130 Y97.5 E0.1197 F1200 ; 4
G1 X132 Y97.5 E0.1197 F1200 ; 4
G1 X132 Y99.5 F7200 ; move to start
G1 X132 Y97.5 E0.1197 F1200 ; 4
G1 X132 Y95.5 E0.1197 F1200 ; 4
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y105.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X128 Y107.5 E0.1197 F1200 ; 1
G1 X128 Y109.5 E0.1197 F1200 ; 1
G1 E-1.2 F4800 ; retract
G1 X129 Y105.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X129 Y105.9 E0.0239 F1200 ; dot
G1 E-1.2 F4800 ; retract
G1 X130 Y105.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X130 Y107.5 F7200 ; move to start
G1 X132 Y107.5 E0.1197 F1200 ; 6
G1 X132 Y105.5 E0.1197 F1200 ; 6
G1 X130 Y105.5 E0.1197 F1200 ; 6
G1 X130 Y107.5 E0.1197 F1200 ; 6
G1 X130 Y109.5 E0.1197 F1200 ; 6
G1 X132 Y109.5 E0.1197 F1200 ; 6
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
G1 X128 Y115.5 F7200 ; move to start
G1 Z0.3 F1200 ; zHop
G1 E1.2 F4200 ; un-retract
G1 X128 Y117.5 E0.1197 F1200 ; 1
G1 X128 Y119.5 E0.1197 F1200 ; 1
G1 E-1.2 F4800 ; retract
G1 X129 Y115.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X129 Y115.9 E0.0239 F1200 ; dot
G1 E-1.2 F4800 ; retract
G1 X130 Y115.5 F7200 ; move to start
G1 E1.2 F4200 ; un-retract
G1 X130 Y117.5 F7200 ; move to start
G1 X132 Y117.5 E0.1197 F1200 ; 8
G1 X132 Y115.5 E0.1197 F1200 ; 8
G1 X130 Y115.5 E0.1197 F1200 ; 8
G1 X130 Y117.5 E0.1197 F1200 ; 8
G1 X130 Y119.5 E0.1197 F1200 ; 8
G1 X132 Y119.5 E0.1197 F1200 ; 8
G1 X132 Y117.5 E0.1197 F1200 ; 8
G1 E-1.2 F4800 ; retract
G1 Z0.4 F1200 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X180 Y180 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;
