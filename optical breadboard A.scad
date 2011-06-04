// optical breadboard  - on 25 mm metric pitch, with M6 nuttraps 
// GNU GPLv2
//amk


board();

x=175;
y=100;
z = 10;
pitch = 25;
xmax=(x-pitch/2)/pitch;
ymax=(y-pitch/2)/pitch;

module board(){
difference(){
translate([0, 0,0]) cube([x,y,z], center=true);

union(){
for (i=[0:xmax])
for (j=[0:ymax])
translate([-x/2+pitch/2+pitch*i, -y/2+pitch/2+pitch*j,0])cylinder(11,3,3, center=true);
for (i=[0:xmax])
for (j=[0:ymax])
translate([-x/2+pitch/2+pitch*i,-y/2+pitch/2+pitch*j,2.4])cylinder(r=5.8, h=5.5, center=true, $fn=6); 
}
}
}




