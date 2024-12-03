cube_side = 2500;
cube_depth = 250;
difference()
{
    difference()
    {
        group()
        {
            cube([cube_side, cube_side, cube_depth], center=true);
            rotate([0, 0, 45])
            {
                cube([cube_side, cube_side, cube_depth], center = true);
            }
        }
        translate([0, 0, 50]) {
            cylinder(cube_depth * 0.75 , cube_side / 2, cube_side / 2, center=true);
        }
    }
    surface("./images/rhino.png", center=true, invert = true);
}