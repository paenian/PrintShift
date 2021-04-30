in = 25.4;

screw_slop = .2;
slop = .2;
laser_slop = -.1;

beam = 20;

//standard screw variables
m3_nut_rad = 6.01/2+slop;
m3_nut_height = 2.4;
m3_rad = 3.1/2+slop;
m3_cap_rad = 3.5;
m3_cap_height = 2;
m3_sq_nut_rad = 7.9/2;

m4_nut_rad = 7.66/2+slop;
m4_nut_height = 3.2;
m4_rad = 4/2+slop;
m4_cap_rad = 7/2+slop;
m4_cap_height = 2.5;

m5_nut_rad = 8.79/2;
m5_sq_nut_rad = (8*sqrt(2)+slop/2)/2;
m5_nut_rad_laser = 8.79/2-.445;
m5_nut_height = 4.7;
m5_rad = 5/2+slop;
m5_rad_laser = 5/2-.1;
m5_cap_rad = 10/2+slop;
m5_cap_height = 3;
m5_washer_rad = 11/2+slop;

ten24_rad = (.19*in/2+slop);
ten24_cap_rad = (.361*in/2+slop);
ten24_cap_height = .101*in+slop;
ten24_nut_rad = ((3/8*in)*cos(180/6))/2;
ten24_sq_nut_rad = ((3/8*in)*sqrt(2))/2+slop/2;

ten24_nut_height = 1/8*in+slop;

ten24_rad_laser = ten24_rad+laser_slop/2;
ten24_sq_nut_rad_laser = ten24_sq_nut_rad+laser_slop/2;
ten24_sq_nut_flat = 9.5;
ten24_sq_nut_flat_laser = ten24_sq_nut_flat+laser_slop;

//makes all the holes have lots of segments
$fs=.5;
$fa=.1;
