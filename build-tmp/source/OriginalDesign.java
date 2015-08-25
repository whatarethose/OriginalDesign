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

public void setup()
{
	size(600,600,P3D);
	background(0);
}
public void draw()
{
	sun();
	mercury();
}

public void sun() 
{
	noStroke();
	fill(300,205,0);//yellow
	lights();//just for test
	translate(300,300,50);//moved to the center of the screen
	sphere(20);
}

public void mercury(){
	noStroke();
	lights();
	translate(100,100,60);
	sphere(20);
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
