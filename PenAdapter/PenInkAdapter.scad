//Author: Paul J White
//Date: 4/23/22
//Purpose: Have and editible pen ink adapter
//Note: All Mesaurements are in Millimeters

//How far you want it to go into the pen
iHeight = 7.68;
//How far you want to make the top of the head
pHeight = 8.07;
//Inner diam of you ink cartridge 
iDiam   = 4.42;
//Diam for the stopper on the pen
pDiam   = 5.57;
//Diam for the hole in the middle
sDiam = 1;
//How good of a cylander do you want (Higher is more circular)
res = 60;
//How much to taper the pen insert (lower is more)
taper = .95;


//-----Maths------
iRad = iDiam /2;
pRad = pDiam /2;


difference(){
    union()
    {
        //Insert into Pen
        cylinder($fn =res, h=pHeight, r1=pRad*taper, r2=pRad);
       

        //top
        translate([0,0,pHeight])
        {
            //insert into ink
            cylinder($fn =res, h=iHeight, r=iRad);
        }
    }
    //Safety hole
    cylinder($fn = res, h=iHeight+pHeight+1, r=sDiam);
}
