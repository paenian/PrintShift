include <configuration.scad>

slot_w = 6;
slot_d = 6;
slot_inner_w = 14;
slot_inner_h = 4;

module beam_2060(height=20, v=false, slop=0){
    translate([-beam,0,0]) beam(height=height, v=v, slop=slop);
    beam(height=height, v=v, slop=slop);
    translate([beam,0,0]) beam(height=height, v=v, slop=slop);
}

module beam_2040(height=20, v=false, slop=0){
    translate([-beam/2,0,0]) beam(height=height, v=v, slop=slop);
    translate([beam/2,0,0]) beam(height=height, v=v, slop=slop);
}

module beam(height=20, v=false, slop=0){
	rad = 2;
	

	center_w = 5;

	difference(){
		hull(){
			for(i=[0:90:359])
				rotate([0,0,i])
					translate([beam/2-rad, beam/2-rad, 0]) cylinder(r=rad+slop, h=height);
		}

		//slots
		beamSlots(height=height, v=v, slop=0);

		//center hole
		cube([center_w, center_w, height*3],center=true);
	}
}

module beamSlots(height=20, v=false, slop=0){
    for(i=[0:90:359]) rotate([0,0,i]){
        translate([beam/2,0,0]) cube([slot_d*2-slop*2,slot_w-slop*2,height*3],center=true);
        //v rail
        if(v==true){
            hull(){
                translate([beam/2-slot_d+slot_inner_h+slop,0,0]) cube([.1,slot_w-slop*2,height*3],center=true);
                translate([beam/2-slot_d+slot_inner_h+10-slop,0,0]) cube([.1,slot_w+20-slop*2,height*3],center=true);
            }
        }
    }
    nutSlots(height=height, slop=slop);
}

module nutSlots(height=20, slop=0){
    //angled inner
    for(i=[0:90:359]) rotate([0,0,i]){
			hull(){
				translate([beam/2-slot_d+slop,0,0]) cube([.1,slot_w-slop*2,height*3],center=true);
				translate([beam/2-slot_d+slot_inner_h-slop,0,0]) cube([.1,slot_inner_w-slop*4,height*3],center=true);
			}
        }
}

module endScrew(height=20){
    cylinder(r=m5_rad, h=height*3, center=true);
}

module beamHoles(height=20, slop=.25){
    nutSlots(height=height, slop=slop);
    endScrew(height=height);
}

//a cylinder with a flat on top - for drawing vertical holes.
module cap_cylinder(r=1, h=1, center=false){
	render() union(){
		cylinder(r=r, h=h, center=center);
		intersection(){
			rotate([0,0,22.5]) cylinder(r=r/cos(180/8), h=h, $fn=8, center=center);
			translate([0,-r/cos(180/4),0]) rotate([0,0,0]) cylinder(r=r/cos(180/4), h=h, $fn=4, center=center);
		}
	}
}

//holes for the motor
module motor_holes(screw_rad = m3_rad+slop/2, screw_w = motor_screw_sep, slot=2, slide = false, height = wall*3){
    bump_rad = 12;
    
    cylinder(r=bump_rad, h=height, center=true);
    %translate([0,0,-20]) cylinder(r=pulley_flange_rad, h=height*2);
    if(slide == false){
        for(i=[0:90:359]) rotate([0,0,i]) translate([screw_w/2, screw_w/2, 0]){
            hull(){
                translate([-slot/2,-slot/2,0]) cylinder(r=screw_rad, h=height, center=true);
                translate([slot/2,slot/2,0]) cylinder(r=screw_rad, h=height, center=true);
            }
        }
    }else{
        for(i=[0:1]) for(j=[0:1]) mirror([i,0,0])mirror([0,j,0]) translate([screw_w/2, screw_w/2, 0]){
            hull(){
                translate([0,-slot/2,0]) cylinder(r=screw_rad, h=height, center=true);
                translate([0,slot/2,0]) cylinder(r=screw_rad, h=height, center=true);
            }
        }
    }
}

module motor_body(extra = .1, thick=wall){
    intersection(){
        hull() for(i=[0:1]) for(j=[0:1]) mirror([i,0,0]) mirror([0,j,0]) translate([motor_w/2, motor_w/2, 0]) 
            cylinder(r=extra, h=thick, center=true);
        cylinder(r=motor_r+extra, h=thick, center=true);
    }
}

module screw_hole_m3(cap=false, onion=0, height=wall){
    screw_hole(cap=cap, onion=onion, cap_height=m3_cap_height, rad=m3_rad, cap_rad=m3_cap_rad, height=height);
}

module nut_hole_m3(cap=false, onion=0, height=wall){
    nut_hole(cap=cap, onion=onion, nut_height=m3_nut_height+1, rad=m3_rad, nut_rad=m3_nut_rad, height=height);
}

module screw_hole_m4(cap=false, onion=0, height=wall){
    screw_hole(cap=cap, onion=onion, cap_height=m4_cap_height, rad=m4_rad, cap_rad=m4_cap_rad, height=height);
}

module screw_hole_m5(cap=false, onion=0, height=wall){
    screw_hole(cap=cap, onion=onion, cap_height=m5_cap_height, rad=m5_rad, cap_rad=m5_cap_rad, height=height);
}

//nuthole with a nice recess for the cap.
module nut_hole(cap=false, onion=0, height=wall){
    translate([0,0,-nut_height-1])
        if(cap==true){
            cap_cylinder(r=rad, h=height*3);
        }else{
            cylinder(r=rad, h=height*3);
        }
	translate([0,0,0])
        cylinder(r1=nut_rad, r2=nut_rad+slop, h=height, $fn=6);
        
}

//nuthole with a nice recess for the cap.
module screw_hole(cap=false, onion=0, height=wall){
    translate([0,0,cap_height-.05+onion])
        if(cap==true){
            cap_cylinder(r=rad, h=height);
        }else{
            cylinder(r=rad, h=height);
        }
	translate([0,0,cap_height-height])
        if(cap==true){
            cap_cylinder(r=cap_rad, h=height);
        }else{
            cylinder(r=cap_rad, h=height);
        }
}