$fn=180;
resize(newsize=[38,36,45])
{
union();
{
ribs();
bodyout();
}
}
difference()
{
foot();
footcut();
}
collar();

module bodyout()
cylinder (r=19,h=45);
module footcut()
translate([-150,-150,0])
cube ([300,300,300]);
module foot()
translate ([0,0,15])
sphere (r=25);
module ribs()
rotate ([0,90,0])
for (i=[0:45:360]){
rotate ([i,0,0])
translate ([0,0,-18.5])
rotate ([0,-90,0])
cylinder (r=1.5,h=45);
}
module collar()
cylinder (r=20,h=20);