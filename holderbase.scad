// base to hold 8 mm bar - for optics holders
// base held down with M6 bolts
// 8 mm bar held with M3 grubscrew
//tube and bottom couple with M3
// GNU GPLv2
// by amk


rotate([0,180,0]) translate([0,0,2.5])tube();
rotate([0,180,0]) translate([0,17,-2.5]) bottom();

h = 30; //height of cylinder section

%cube([200,200,0.01],true);

module bottom()
{
difference(){

union(){
translate([0, 0,0])cube([40,10,5], center=true);
translate([-19, 0,-0])cylinder(5,5,5, center=true);
translate([19, 0,0])cylinder(5,5,5, center=true);
rotate([0,180,0])translate([0, 0,0])cylinder(5,8,8, center=true);
}

translate([-11, 0,0])cylinder(14,3,3, center=true);
translate([-18, 0,0])cube([15,6,12], center=true);
translate([11, 0,0])cylinder(14,3,3, center=true);
translate([18, 0,0])cube([15,6,12], center=true);
translate([0, 0,0])rotate([0,90,0])cube([3,20,8], center=true);
rotate([0,180,0])translate([0, 0,0])cylinder(10,1.5,1.5, center=true);


}

}


module tube(){
difference(){
union(){
rotate([0,180,0])translate([0, 0,2.5])cylinder(h,8,8, center=false);
translate([0, -8,-h+3.5])rotate([0,90,0])cylinder(10,6,6, center=true); //cylinder for grub screw
//translate([0, -8,-h+3.5])sphere(6, center=true); // or sphere for grub screw
}
rotate([0,180,0])translate([0, 0,2.5+3])cylinder(h,4,4, center=false);
rotate([0,180,0])translate([0, 0,0])cylinder(8,1.5,1.5, center=false);
translate([0, -8,-h+3.5])rotate([90,0,0])cylinder(20,1.5,1.5, center=true);
translate([0, -9.5,-h+3.5])cube([8,3,12], center=true);
}
}




