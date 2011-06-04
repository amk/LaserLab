// optical breadboard  - on 25 mm metric pitch, with M6 nuttraps 
// GNU GPLv2
//amk


board();

x=175;
y=100;
z = 10; // overall thickness
z1=4; //thickness of solid flat section
pitch = 25;
xmax=(x-pitch/2)/pitch;
ymax=(y-pitch/2)/pitch;



module board(){
difference(){
union(){
translate([0, 0,-((z-z1)/2)]) cube([x,y,z1], center=true);
board2();
translate([-x/2+pitch/4, -y/2+pitch/4,z1/2])cylinder(z,3,3, center=true);
translate([x/2-pitch/4, -y/2+pitch/4,z1/2])cylinder(z,3,3, center=true);
translate([-x/2+pitch/4, y/2-pitch/4,z1/2])cylinder(z,3,3, center=true);
translate([x/2-pitch/4, y/2-pitch/4,z1/2])cylinder(z,3,3, center=true);
}

union(){
for (i=[0:xmax])
for (j=[0:ymax])
translate([-x/2+pitch/2+pitch*i, -y/2+pitch/2+pitch*j,0])cylinder(11,3,3, center=true);
for (i=[0:xmax])
for (j=[0:ymax])
translate([-x/2+pitch/2+pitch*i,-y/2+pitch/2+pitch*j,z1/2])cylinder(r=5.8, h=z-z1, center=true, $fn=6); 
}
}
}

module board2(){
intersection(){
translate([0, 0,z1/2]) cube([x,y,z-z1], center=true);

union(){
for (i=[0:xmax])
for (j=[0:ymax])
translate([-x/2+pitch/2+pitch*i,-y/2+pitch/2+pitch*j,z1/2])cylinder(r=6.8, h=z, center=true, $fn=6); 
}
}
}


