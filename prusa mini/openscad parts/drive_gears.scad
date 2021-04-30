include <configuration.scad>
use <herringbone_gears.scad>
use <functions.scad>

//gear variables

motor_shaft_rad = 6/2+.2;
motor_shaft_d = 4.8;

drive_shaft_rad = 25.4*(5/16)/2+.2;

small_teeth = 15;
big_teeth = 17;
gear_thick = 19;
distance_between_axles = 40;

cone_distance_1=1000;
cone_distance_2=80;
pressure_angle=30;
clearance = .25;
backlash = .25;   

circular_pitch = 360*distance_between_axles/(small_teeth+big_teeth);

part = 100;

if(part == 1){
   mirror([0,0,1]) motor_drive_gear();
}

if(part == 2){
    mirror([0,0,1]) roller_drive_gear();
    %cylinder(r=21, h=1, center=true);
}

if(part == 3){
    shaft_clamp();
}

if(part == 4){
    translate([distance_between_axles+1,0,-gear_thick]) rotate([0,180,0]) logo();
    
    mirror([0,0,1]) motor_drive_gear();
}

if(part == 5){
    mirror([0,0,1]) motor_drive_gear_clamp();
}

if(part == 100){
    assembled();
}

module assembled(){
    difference(){
        union(){
            //render() mirror([0,0,1]) motor_drive_gear();
            render() mirror([0,0,1]) motor_drive_gear_clamp();
            render() mirror([0,0,1]) roller_drive_gear();
        }
        //translate([0,100,0]) cube([200,200,200], center=true);
    }
}

module logo(){
    sc = .4; 
    
    scale([sc,sc,1]) translate([-89.75,-171,0]) linear_extrude(height=5) import("../logos/printshift.dxf", layer="p");
    
    scale([sc,sc,1]) translate([-89.75,-171,0]) linear_extrude(height=5) import("../logos/printshift.dxf", layer="sides");
}

module motor_drive_gear(){
    outer_radius = gear_outer_radius(small_teeth, circular_pitch);
    motor_offset = 6+12; //distance to move gear away from the motor
    d_offset = 3.25;
    
    fillet = 7;
    sc = .44;
    
    translate([distance_between_axles+1,0,0]) rotate([0,0,360/small_teeth])
        difference(){
            union(){
                rotate([0,0,0]) chamfered_herring_gear(height=gear_thick, number_of_teeth=small_teeth, circular_pitch=circular_pitch, teeth_twist=0, pressure_angle=pressure_angle, cone_distance_1=cone_distance_1, cone_distance_2=cone_distance_2,clearance = clearance, backlash = backlash);
                //raised center
                translate([0,0,-motor_offset]) cylinder(r=motor_shaft_rad+5, h=gear_thick+motor_offset);
                
                //shaft fillet
                difference(){
                    translate([0,0,-fillet]) cylinder(r=motor_shaft_rad+5+fillet, h=fillet);
                    translate([0,0,-fillet]) rotate_extrude(){
                        translate([motor_shaft_rad+5+fillet,0,0]) circle(r=fillet);
                    }
                }
            }
            
            //D-shaft
            #translate([0,0,-motor_offset-.1]) union(){
                intersection(){
                    cylinder(r=motor_shaft_rad, h=gear_thick+motor_offset-1);
                    translate([0,(motor_shaft_rad*2-motor_shaft_d)/2,0]) cube([motor_shaft_rad*2, motor_shaft_d, gear_thick*6], center=true);
                }
                cylinder(r=motor_shaft_rad, h=d_offset);
            }
            
            //set screws hole on the D shaft
            for(i=[-motor_offset/2]){ //gear_thick/2, 
                translate([0,0,i]) rotate([90,0,0]) {
                    cylinder(r=1.6, h=50);
                    translate([0,0,8]) cylinder(r=6/2, h=25);
                }
            }
            
            //extend the square nuts
            *translate([0,-4,gear_thick/2])
            rotate([90,0,0]) hull(){
                cube([6,6,3], center=true);
                translate([0,gear_thick,0]) cube([6,6,3], center=true);
            }
            translate([0,-4,-motor_offset/2])
            rotate([90,0,0]) hull(){
                cube([6,6,3], center=true);
                translate([0,-gear_thick,0]) cube([6,6,3], center=true);
            }
            
            
            //speed holes
            *translate([0,0,gear_thick/2]) difference(){
                //hollow most of the gear
                cylinder(r=outer_radius-7, h=gear_thick+7, center=true);
            
                //but leave the middle for attachments
                difference(){
                    cylinder(r=motor_shaft_rad+5, h=gear_thick+8, center=true);
                }
                for(i=[30:120:359]) rotate([0,0,i]) difference(){
                    translate([(outer_radius-5)/2,0,0]) cylinder(r=(outer_radius-6)/2,h=gear_thick+7, center=true);
                    translate([(outer_radius-4+8-2.5-2)/2,0,0]) cylinder(r=(outer_radius-5-8)/2,h=gear_thick+7.5, center=true);
                }
            }
            
            //logo speed holes
            translate([0,0,,gear_thick-3]){
                mirror([1,0,0]) scale([sc,sc,1]) translate([-89.75+3,-171-1,0]) linear_extrude(height=gear_thick+motor_offset+1) import("../logos/printshift.dxf", layer="sides");
            }
            //logo p
            translate([0,0,gear_thick-1]){
                mirror([1,0,0]) scale([sc,sc,1]) translate([-89.75+3,-171-1,0]) linear_extrude(height=2) import("../logos/printshift.dxf", layer="p");
            }
        }
}

module shaft_clamp(){
    difference(){
        cylinder(r=drive_shaft_rad+9, h=8);
        
        //the shaft
        translate([0,0,-.5]) cylinder(r=drive_shaft_rad, h=9);
        
        //cutout
        translate([(drive_shaft_rad+7)/2,0,0]) {
            cube([drive_shaft_rad+11,2,50], center=true);
            
            //screw and nut trap
            translate([2.5,-4,4]) {
                hull(){
                        cube([6,3,6], center=true);
                        translate([0,0,gear_thick]) cube([6,3,6], center=true);
                    }
                    translate([0,-5,0]) rotate([-90,0,0]) cylinder(r=3.4/2, h=25);
                    translate([0,8,0]) rotate([-90,0,0]) cylinder(r=6/2, h=25);
                }
        }
    }
}

module roller_drive_gear(wall = 3){
    %rotate([0,0,180]) motor_drive_gear();
    
    gear_offset = 2;
    
    radius = gear_radius(big_teeth, circular_pitch);
    outer_radius = gear_outer_radius(big_teeth, circular_pitch);
    
    gear_chamfer_radius = (outer_radius - radius) / tan(45);
    
    lift = gear_thick+1;
    
    fillet = 3;
    
    difference(){
        union(){
            //gear
            rotate([180,0,0]) translate([0,0,-gear_thick])
            chamfered_herring_gear(height=gear_thick, number_of_teeth=big_teeth, circular_pitch=circular_pitch, teeth_twist=0, pressure_angle=pressure_angle, cone_distance_1=cone_distance_2, cone_distance_2=cone_distance_1,clearance = clearance, backlash = backlash);
            //raised center
            translate([0,0,-gear_offset]) cylinder(r=drive_shaft_rad+4, h=gear_thick+gear_offset);
            
           //shaft fillet
                difference(){
                    translate([0,0,-fillet]) cylinder(r=drive_shaft_rad+4+fillet, h=fillet);
                    translate([0,0,-fillet]) rotate_extrude(){
                        translate([drive_shaft_rad+4+fillet,0,0]) circle(r=fillet);
                    }
                }
            
        }
        
        //the shaft
        translate([0,0,-.5-gear_offset-1]) cylinder(r=drive_shaft_rad, h=gear_thick+1+gear_offset+1);
        
        //clamping system
        rotate([0,0,7]) translate([0,0,-.5]) {
            //cutout a clamp segment
            translate([(drive_shaft_rad+8)/2,0,0]) cube([drive_shaft_rad+8,2,50], center=true);
            intersection(){
                difference(){
                    cylinder(r=drive_shaft_rad+8, h=gear_thick+1);
                    translate([0,0,-.5]) cylinder(r=drive_shaft_rad+7, h=gear_thick+2);
                }
                union(){
                    translate([0,25,0]) cube([50,50,50], center=true);
                }
            }
            
            //this makes it look more like a pokeball.
           translate([-(drive_shaft_rad+8)/2,0,gear_thick+.5]) cube([drive_shaft_rad+8,1,1], center=true);
            translate([0,0,gear_thick]) difference(){
                cylinder(r=drive_shaft_rad+8, h=gear_thick+1);
                translate([0,0,-.5]) cylinder(r=drive_shaft_rad+7, h=gear_thick+2);
            }
                
                
            
            
            //front screwhole & nut trap
            translate([drive_shaft_rad+3.5,-5,gear_thick-4.5]) {
                hull(){
                    cube([6,3,6], center=true);
                    translate([0,0,gear_thick]) cube([6,3,6], center=true);
                }
                translate([0,-5,0]) rotate([-90,0,0]) cylinder(r=3.4/2, h=25);
                translate([0,10,0]) rotate([-90,0,0]) cylinder(r=6/2, h=25);
            }
            
            //rear screwhole & nut trap
            mirror([0,0,1]) translate([drive_shaft_rad+3.5,-5,-5]) {
                hull(){
                    cube([6,3,6], center=true);
                    translate([0,0,gear_thick]) cube([6,3,6], center=true);
                }
                translate([0,-5,0]) rotate([-90,0,0]) cylinder(r=3.4/2, h=25);
                translate([0,10,0]) rotate([-90,0,0]) cylinder(r=6/2, h=25);
            }
        }
        
    }
}

//this version uses the d-shaft fully and has clamp nuts like the roller drive gear.  The set-screw style kept breaking :-(
module motor_drive_gear_clamp(){
    outer_radius = gear_outer_radius(small_teeth, circular_pitch);
    motor_offset = 6; //distance to move gear away from the motor
    d_offset = .75;
    
    motor_shaft_thick = 5+3;
    
    motor_shaft_d = 5.5;
    
    fillet = 3;
    sc = .42;
    
    translate([distance_between_axles+1,0,0]) rotate([0,0,360/small_teeth])
        difference(){
            union(){
                //rotate([180,0,0]) translate([0,0,-gear_thick]) 
                chamfered_herring_gear(height=gear_thick, number_of_teeth=small_teeth, circular_pitch=circular_pitch, teeth_twist=0, pressure_angle=pressure_angle, cone_distance_1=cone_distance_1, cone_distance_2=cone_distance_2,clearance = clearance, backlash = backlash);
                //raised center
                translate([0,0,-motor_offset]) cylinder(r=motor_shaft_rad+motor_shaft_thick, h=gear_thick+motor_offset);
                
                //shaft fillet
                difference(){
                    translate([0,0,-fillet]) cylinder(r=motor_shaft_rad+motor_shaft_thick+fillet, h=fillet);
                    translate([0,0,-fillet]) rotate_extrude(){
                        translate([motor_shaft_rad+motor_shaft_thick+fillet,0,0]) circle(r=fillet);
                    }
                }
            }
            
            //D-shaft
            rotate([0,0,-90]) translate([0,0,-motor_offset-1.1]) union(){
                intersection(){
                    cylinder(r=motor_shaft_rad, h=gear_thick+motor_offset-1);
                    translate([0,(motor_shaft_rad*2-motor_shaft_d)/2,0]) cube([motor_shaft_rad*2, motor_shaft_d, gear_thick*6], center=true);
                }
                cylinder(r=motor_shaft_rad, h=d_offset);
            }
            
            //clamp slot
            translate([0,0,-3]){
                translate([(motor_shaft_rad+9)/2,0,0]) cube([motor_shaft_rad+11,1,gear_thick*2+2], center=true);
                intersection(){
                    difference(){
                        cylinder(r=drive_shaft_rad+9, h=gear_thick+1);
                        translate([0,0,-.5]) cylinder(r=drive_shaft_rad+8, h=gear_thick+2);
                    }
                    union(){
                        translate([0,25,0]) cube([50,50,50], center=true);
                    }
                }
            }
            
            //clamp screwhole & nut trap
            translate([motor_shaft_rad+3.5,-5,-motor_offset/2]) {
                hull(){
                    cube([6,3,6], center=true);
                    translate([0,0,-gear_thick]) cube([6,3,6], center=true);
                }
                translate([0,-5,0]) rotate([-90,0,0]) cylinder(r=3.4/2, h=25);
                translate([0,10,0]) rotate([-90,0,0]) cylinder(r=6/2, h=25);
            }
            
            //second screwhole and nut trap
            translate([motor_shaft_rad+3.5,-5,gear_thick/2-1]) {
                hull(){
                    cube([6,3,6], center=true);
                    translate([0,0,gear_thick]) cube([6,3,6], center=true);
                }
                translate([0,-5,0]) rotate([-90,0,0]) cylinder(r=3.4/2, h=25);
                translate([0,10,0]) rotate([-90,0,0]) cylinder(r=6/2, h=25);
            }
            
            //set screws hole on the D shaft
            *for(i=[-motor_offset/2]){ //gear_thick/2, 
                translate([0,0,i]) rotate([90,0,0]) {
                    cylinder(r=1.6, h=50);
                    translate([0,0,8]) cylinder(r=6/2, h=25);
                }
            }
            
            //extend the square nuts
            *translate([0,-4,gear_thick/2])
            rotate([90,0,0]) hull(){
                cube([6,6,3], center=true);
                translate([0,gear_thick,0]) cube([6,6,3], center=true);
            }
            *translate([0,-4,-motor_offset/2])
            rotate([90,0,0]) hull(){
                cube([6,6,3], center=true);
                translate([0,-gear_thick,0]) cube([6,6,3], center=true);
            }
            
            
            //logo speed holes
            translate([0,0,,gear_thick-1.5]){
                mirror([1,0,0]) scale([sc,sc,1]) translate([-89.75+3,-171-1,0]) linear_extrude(height=gear_thick+motor_offset+1) import("../logos/printshift.dxf", layer="sides");
            }
            //logo p
            translate([0,0,gear_thick-1]){
                mirror([1,0,0]) scale([sc,sc,1]) translate([-89.75+3,-171-1,0]) linear_extrude(height=2) import("../logos/printshift.dxf", layer="p");
            }
        }
}
