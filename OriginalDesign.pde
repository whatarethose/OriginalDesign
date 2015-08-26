int centerX = 400;
int centerY = 400;
//figure out what translate is relative to for 3d or does it have to 3d
void setup()
{
  size(800,800,P3D);
  background(0);
}
void draw()
{ 
  noStroke();
  noFill();
  sun();
  mercury();
  venus();
  mars();
  earth();
  fill(255);
  rotateZ(PI);//figure out how to rotate the circle in 3d
  ellipse(200,200,30,30);
}

void sun() 
{
  fill(300,205,0);//yellow
  lights();//just for test
  translate(centerX,centerY,50);//moved to the center of the screen
  sphere(40);
  directionalLight(239,255,80,500,500,500);//figure out how to make the sun shine
}

void mercury(){
  lights();
  fill(64,64,64);
  translate(centerX-350,centerY-400,25);//made it kind of close to sun
  sphere(5);
}
void venus(){
  fill(192,192,192);
  lights();
  translate(centerX-500,centerY-410,30); //kinda of farther than mercury
  sphere(6);
}
void mars(){
  lights();
  fill(249,178,86);
  translate(centerX-360,centerY-440,30);
  sphere(7);
}
void earth(){
 lights();
 fill(0,50,240);
 translate(centerX-320,centerY-330,40);
 sphere(8);
}