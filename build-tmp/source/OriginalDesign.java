import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

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
public void setup()
{
  size(800,800,P3D);
  background(0);
}
public void draw()
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
public void lightBall()
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
public void sun() 
{  
  pushMatrix();
  fill(300,205,0);//yellow
  pointLight(240,250,241,100,350,50);//just for test
  translate(400,400,50);//moved to the center of the screen
  sphere(40);
  popMatrix();
}

public void mercury(){
  pushMatrix();
  lights();
  fill(64,64,64);
  translate(100,100,25);//made it kind of close to sun
  sphere(5);
  popMatrix();
}
public void venus(){
  pushMatrix();
  fill(192,192,192);
  lights();
  translate(100,200,30); //kinda of farther than mercury
  sphere(6);
  popMatrix();
}
public void earth(){
  pushMatrix();
  lights();
  fill(0,50,240);
  translate(100,300,40);
  sphere(8);
  popMatrix();
}
public void mars(){
  pushMatrix();
  lights();
  fill(249,178,86);
  translate(100,400,30);
  sphere(7);
  popMatrix();
}

public void jupiter(){
  pushMatrix();
  lights();
  fill(186,154,48);
  translate(100,500,30);
  sphere(20);
  popMatrix();
} 
public void saturn(){
  pushMatrix();
  lights();
  fill(210,186,105);
  translate(100, 600, 30);
  sphere(18);
  popMatrix();
}
public void uranus(){
  pushMatrix();
  lights();
  fill(108,149,250);
  translate(100, 700, 30);
  sphere(12);
  popMatrix();
}
public void neptune(){
  pushMatrix();
  lights();
  fill(3,87,255);
  translate(100,800,30);
  sphere(13);
  popMatrix();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
