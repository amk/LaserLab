// lens holder for 25 mm lenses, to fit onto 8 mm bar
// GNU GPLv2
// by amk


h =8; //height of cylinder section to fit over 8 mm bar
l=28; //separation of vertical screws > lens diameter
module a()
{
difference(){
difference(){
union(){
translate([0, 0,0])cube([l+8,10,5], center=true);
translate([-((l+8)/2)-1, 0,-1.5])cylinder(8,5,5, center=true);
translate([((l+8)/2)-1, 0,-1.5])cylinder(8,5,5, center=true);
translate([0, 0,0])cylinder(5,8,8, center=true);
}
translate([0, -4.5, 2.51])rotate([90,0,90]) linear_extrude(height = 20, center = true, convexity = 10, twist = 0) polygon( points=[[0,0],[9,0],[4.5,-2.5]] );
}

translate([(-(l+8)/2)-1, 0,0])cylinder(14,2,2, center=true);
translate([((l+8)/2)-1, 0,0])cylinder(14,2,2, center=true);

}

}


module b(){
rotate([0,180,0])translate([0, 0,2.5])cylinder(h,8,8, center=false);
translate([0, -8,-h+3.5])rotate([0,90,0])cylinder(10,6,6, center=true); //cylinder for grub screw
//translate([0, -8,-h+3.5])sphere(6, center=true); // or sphere for grub screw
}





module c(){
difference(){
union(){
a();
b();
}
rotate([0,180,0])translate([0, 0,2.5])cylinder(h+2,4,4, center=false);
translate([0, -8,-h+3.5])rotate([90,0,0])cylinder(20,1.5,1.5, center=true);
translate([0, -9.5,-h+3.5])cube([8,3,12], center=true);
translate([(-(l+8)/2)-1,0,-4.1])cylinder(r=4, h=3, center=true, $fn=6); 
translate([((l+8)/2)-1,0,-4.1])cylinder(r=4, h=3, center=true, $fn=6); 
}
}

rotate([0,180,0]) c();
rotate([0,180,0]) translate([0,17,0]) a();

