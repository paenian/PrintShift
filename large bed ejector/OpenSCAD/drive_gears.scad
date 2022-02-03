include <configuration.scad>
use <herringbone_gears.scad>
use <functions.scad>

//gear variables

motor_shaft_rad = 5/2+.2;
//drive_shaft_rad = 12/2+.2;

drive_shaft_rad = 25.4/2/2+.2;

small_teeth = 9;
big_teeth = 47;
gear_thick = 13;
distance_between_axles = 50;

circular_pitch = 360*distance_between_axles/(small_teeth+big_teeth);

part = 101;

if(part == 1){
   mirror([0,0,1]) motor_drive_gear();
}

if(part == 2){
    mirror([0,0,1]) roller_drive_gear();
}

if(part == 3){
    mirror([0,0,1]) roller_drive_gear(solid = true);
}

if(part == 100){
    assembled();
}

if(part == 101){
    assembled(solid = true);
}

module assembled(solid = false){
    difference(){
        union(){
            mirror([0,0,1]) motor_drive_gear();
            mirror([0,0,1]) roller_drive_gear(solid = solid);
        }
        //translate([0,100,0]) cube([200,200,200], center=true);
    }
}

module motor_drive_gear(){
    translate([distance_between_axles+1,0,0]) gear1(gear1_teeth = small_teeth, circular_pitch=circular_pitch, gear_height=gear_thick);
}

module roller_drive_gear(wall = 3, solid = false){
    %motor_drive_gear();
    
    radius = gear_radius(big_teeth, circular_pitch);
    outer_radius = gear_outer_radius(big_teeth, circular_pitch);
    
    gear_chamfer_radius = (outer_radius - radius) / tan(45);
    
    lift = gear_thick+1;
    
    difference(){
        union(){
            //gear
            chamfered_herring_gear(height=gear_thick, number_of_teeth=big_teeth, circular_pitch=circular_pitch, teeth_twist=-1);
        }
        
        if(solid == false){
        //the shaft
        translate([0,0,-.5]) cylinder(r=drive_shaft_rad, h=gear_thick+1);
        
        //gotta hold it on somehow
        
                //screws and nuts to mount to the shaft
                translate([0,0,gear_thick/2]) for(i=[0:120:359]) rotate([0,0,i]) {
                    rotate([90,0,0]) cap_cylinder(r=m5_rad, h=25);
                    rotate([90,0,0]) cap_cylinder(r=m3_rad+.25, h=75);
                    //nut trap
                    rotate([90,0,0]) cylinder(r2=8.135/cos(180/6)/2,r1=8.135/cos(180/6)/2+.3, h=10, $fn=6);
                }
                
        translate([0,0,gear_thick/2]) difference(){
            //hollow most of the gear
            cylinder(r=outer_radius-6.1, h=gear_thick+1, center=true);
            
            //but leave the middle for attachments
            difference(){
                cylinder(r=drive_shaft_rad+7, h=gear_thick+2, center=true);
            }
            
            //biohazard!
            for(i=[30:120:359]) rotate([0,0,i]) difference(){
                translate([(outer_radius-3.5)/2,0,0]) cylinder(r=(outer_radius-5)/2,h=gear_thick, center=true);
                translate([(outer_radius-4+8-2.5)/2,0,0]) cylinder(r=(outer_radius-5-8)/2,h=gear_thick+1, center=true);
            }
        }
    }}
}
