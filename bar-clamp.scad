// clamp to hold 8 mm bar - for optics holders
// 8 mm bar held with M3 grubscrew
// GNU GPLv2
// by amk



%cube([200,200,0.01],true);



difference(){
translate([0, 0,0])cube([32,10,10], center=true);
translate([-6, 0,0])cylinder(14,4.5,4.5, center=true);
translate([6, 0,0])rotate([90,0,0])cylinder(14,4.5,4.5, center=true);
translate([13, 0,0])rotate([90,0,0])cube([3,8,12], center=true);
translate([-13, 0,0])cube([3,8,12], center=true);
translate([14, 0,0])rotate([0,90,0])cylinder(10,1.5,1.5, center=true);
translate([-14, 0,0])rotate([0,90,0])cylinder(10,1.5,1.5, center=true);
}


