// rings+holder for laser pointer, to fit onto 8 mm bar
// place pointer between 2 rings and use m3 bolts to hold and direct laser
//rings couple to holder
// GNU GPLv2
// by amk



translate([0,0,4])ring();
translate([0,45,4]) ring();

translate([35,30,2.5])rotate([0,180,90]) holder();


rotate([0,0,270]) translate([20,-30,5])ring_sw();
 
%cube([200,200,0.01],true);


od = 12.7; //diameter of laser pointer
h =20; //height of cylinder section on ring holder (to sit on 8 mm bar)

l=45; //separation of rings on holder

//******** ring section **************//
module ring(){
difference(){
difference(){
translate([0,0,0])cylinder(8,20,20, center=true);
translate([0,0,0])cylinder(8.1,14,14, center=true);
}



translate([0,-40,0])intersection(){
translate([0,40,0])difference(){
translate([0,0,0])cylinder(8,18,18, center=true);
translate([0,0,0])cylinder(8.1,15.5,15.5, center=true);
}
union(){
rotate([0,0,0])translate([-2.5,40+18,0]) linear_extrude(height = 9, center = true, convexity = 10, twist = 0)  polygon( points=[[0,0],[7,0],[3.5,-18]] );
translate([-15.7,31.1,0])rotate([0,0,120])translate([-2.5,0,0])  linear_extrude(height = 9, center = true, convexity = 10, twist = 0) polygon( points=[[0,0],[7,0],[3.5,-18]] );
translate([15.7,31.1,0])rotate([0,0,240])translate([-2.5,0,0])  linear_extrude(height = 9, center = true, convexity = 10, twist = 0) polygon( points=[[0,0],[7,0],[3.5,-18]] );
}
}

translate([0, 12,0])rotate([90,0,0])cylinder(20,1.5,1.5, center=true);
rotate([0,0,120])translate([0, 12,0])rotate([90,0,0])cylinder(20,1.5,1.5, center=true);
rotate([0,0,240])translate([0, 12,0])rotate([90,0,0])cylinder(20,1.5,1.5, center=true);
rotate([0,0,180])translate([0, 12,0])rotate([90,0,0])cylinder(20,2,2, center=true);
rotate([0,0,180])translate([0, 7,0])rotate([90,0,0])cylinder(20,4,4, center=true);
}
}


//**********  ring holder section   **************//


module bottom()
{

difference(){
union(){
translate([0, 0,0])cube([l+8,10,5], center=true);
translate([-(((l+8)/2)-1), 0,-1.5])cylinder(8,5,5, center=true);
translate([(((l+8)/2)-1), 0,-1.5])cylinder(8,5,5, center=true);
translate([0, 0,0])cylinder(5,8,8, center=true);

}

translate([-(((l+8)/2)-1), 0,0])cylinder(14,2,2, center=true);
translate([(((l+8)/2)-1), 0,0])cylinder(14,2,2, center=true);
translate([0, 0,0])rotate([0,90,0])cube([3,20,8], center=true);
rotate([0,180,0])translate([0, 0,0])cylinder(10,1.5,1.5, center=true);
translate([-(((l+8)/2)-1),0,-4.1])cylinder(r=4, h=3, center=true, $fn=6); 
translate([(((l+8)/2)-1),0,-4.1])cylinder(r=4, h=3, center=true, $fn=6); 

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

module holder(){
translate([10,-20,5])tube();

bottom();
}




//******** ring to hold switch in on position *********///


module ring_sw(){
difference(){
difference(){
translate([-40,0,0])cylinder(10,(od+2)/2,(od+2)/2, center=true);
translate([-40,0,0])cylinder(12.1,od/2,od/2, center=true);
}
translate([-51, 0,0]) cube([12,16,14], center=true);
translate([-40,0 ,0])rotate([90,0,90])cylinder(20,2.5,2.5, center=true);
}
}


