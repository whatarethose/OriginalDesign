//The pushMatrix() function saves the current coordinate system 
//to the stack and popMatrix() restores the prior coordinate system
//. pushMatrix() and popMatrix() are used in conjuction with the other
// transformation functions and may be embedded to control the scope of 
//the transformations.
float mercuryX = 100;
float mercuryY = 100;
float venusX= 100;
float venusY=100;
float marsX=100;
float marsY=100;
float earthX=100;
float earthY=100;
float jupiterX=100;
float jupiterY=100;
float saturnX=100;
float saturnY=100;
float urnausX=100;
float uranusY=100;
float neptuneX=100;
float neptuneY=100;
float z = 150;
void setup()
{
  size(800,800,P3D);
  background(0);
}
void draw()
{ 
  noStroke();
  noFill();
  point(0,1);
  lightBall();
  sun();
  mercury();
  venus();
  earth();
  mars();
  jupiter();
  saturn();//try and add rings later
  uranus();
  neptune();
 }
void lightBall()
{
  pointLight(240,240,250,mouseX,mouseY,z);
  
  translate(mouseX,mouseY,z);
  
  rotateX(0);
  rotateY(0);
  
  stroke(random(255),random(255),random(255),45);
  noFill();
  sphere(10);
  
  translate(-mouseX,-mouseY,-z);
}
void sun() 
{  
  pushMatrix();
  fill(300,205,0);//yellow
  pointLight(240,250,241,100,350,50);//just for test
  translate(400,400,50);//moved to the center of the screen
  sphere(40);
  popMatrix();
}

void mercury(){
  pushMatrix();
  lights();
  fill(64,64,64);
  translate(100,100,25);//made it kind of close to sun
  sphere(5);
  popMatrix();
}
void venus(){
  pushMatrix();
  fill(192,192,192);
  lights();
  translate(100,200,30); //kinda of farther than mercury
  sphere(6);
  popMatrix();
}
void earth(){
  pushMatrix();
  lights();
  fill(0,50,240);
  translate(100,300,40);
  sphere(8);
  popMatrix();
}
void mars(){
  pushMatrix();
  lights();
  fill(249,178,86);
  translate(100,400,30);
  sphere(7);
  popMatrix();
}

void jupiter(){
  pushMatrix();
  lights();
  fill(186,154,48);
  translate(100,500,30);
  sphere(20);
  popMatrix();
} 
void saturn(){
  pushMatrix();
  lights();
  fill(210,186,105);
  translate(100, 600, 30);
  sphere(18);
  popMatrix();
}
void uranus(){
  pushMatrix();
  lights();
  fill(108,149,250);
  translate(100, 700, 30);
  sphere(12);
  popMatrix();
}
void neptune(){
  pushMatrix();
  lights();
  fill(3,87,255);
  translate(100,800,30);
  sphere(13);
  popMatrix();
}
