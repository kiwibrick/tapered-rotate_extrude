curve();

module curve();
{
$fn=100;

r1 = 1;
r2 = 3;
R = 21;
th = 2;
angle = 45;
divisions = 90;
    difference()
    {
        skin([for(i=[0 :angle/divisions:angle]) 
              transform(rotation([0,i,0])*translation([R,0,0]), 
                        circle(r1+(r2-r1)*(i/angle)))]);
        
    }

}
use <scad-utils/transformations.scad>
use <scad-utils/shapes.scad>
use <skin.scad>