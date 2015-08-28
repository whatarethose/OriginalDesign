//The pushMatrix() function saves the current coordinate system 
//to the stack and popMatrix() restores the prior coordinate system
//. pushMatrix() and popMatrix() are used in conjuction with the other
// transformation functions and may be embedded to control the scope of 
//the transformations.
//setup array for planets x,y,z used later for moving
float [] mercuryCo={450,420,100};
float [] venusCo={430,450,110};
float [] earthCo={320,430,120};
float [] marsCo={520,420,130};
float [] jupiterCo={250,430,160};
float [] saturnCo={600,430,180};
float [] uranusCo={420,600,190};
float [] neptuneCo={150,600,200};
int x = 1;//counter for stars
int [] counter = {1,1,1,1,1,1,1,1};//counter for when planets rotate
float speed =7;
int timer = 5;
void setup()
{
  size(800, 800, P3D);
}
void draw()
{ 
  background(0);
  noStroke();
  noFill();
  point(0, 1);
  timer =timer -1;
  if(timer ==0){//make the stars flash randomly every 5 seconds
  	stars();
  	timer =5;
  }
  lightBall();// the light behind the sun WIP
  sun();
  mercury();
  venus();
  earth();
  mars();
  jupiter();
  saturn();//try and add rings later
  uranus();
  neptune();
  if(key == UP && keyPressed == true){
  	speed = speed + 1;
  }
}
void stars() {//draw stars flashing
  x=x+1;//add one to the star counter
    if(x<3) {//its always less than 3 because it resets after the 
    //function ends
    fill(255, 255, 255);
    rect((int)(Math.random()*800),(int)(Math.random()*800),5,5);
  }
  x=1;
}
void lightBall()
{
  pointLight(400, 400, 400, 350, 400, 230);
  noFill();
  sphere(10);
}
void sun() { 
  pushMatrix();
  fill(300, 205, 0);//yellow
  pointLight(240, 250, 241, 100, 350, 50);//just for test
  translate(400, 410, 50);//moved to the center of the screen
  sphere(40);
  popMatrix();
}

void mercury() {
  pushMatrix();
  fill(64, 64, 64);
  translate(mercuryCo[0], mercuryCo[1], mercuryCo[2]);//made it kind of close to sun
  sphere(5);
  popMatrix();
  if(counter[0]==1){
    mercuryCo[0]=mercuryCo[0]-speed;//moves to the left
    if(mercuryCo[0] <350){//when it reaches left most point go back 
    //behind the sun
      while(mercuryCo[2]>-100){
         mercuryCo[2]=mercuryCo[2]-10;
         counter[0]=2;
      }
    }
  }
  else if(counter[0]==2){//moves to the right
    mercuryCo[0]=mercuryCo[0]+speed;//when it reaches right most point
    //reset to original point
    if(mercuryCo[0] > 450){
        while(mercuryCo[2]<100){
          mercuryCo[2]=mercuryCo[2]+10;
          counter[0]=1;
        }
    }
  }
}
void venus() {
  pushMatrix();
  fill(192, 192, 192);
  translate(venusCo[0], venusCo[1],venusCo[2]); //kinda of farther than mercury
  sphere(6);
  popMatrix();
  if(counter[1]==1){
    venusCo[0]=venusCo[0]-speed;//moves to the left
    if(venusCo[0] < 320){//when it reaches left most point go back 
    //behind the sun
      while(venusCo[2]>-110){
         venusCo[2]=venusCo[2]-10;
         venusCo[1]=430;
         counter[1]=2;
      }
    }
  }
  else if(counter[1]==2){//moves to the right
    venusCo[0]=venusCo[0]+speed;//when it reaches right most point
    //reset to original point
    if(venusCo[0] > 480){
        while(venusCo[2]<110){
          venusCo[2]=venusCo[2]+10;
          counter[1]=1;
        }
    }
  }
}
void earth() {
  pushMatrix();
  fill(0, 50, 240);
  translate(earthCo[0], earthCo[1], earthCo[2]);
  sphere(8);
  popMatrix();
  if(counter[2]==1){
    earthCo[0]=earthCo[0]-speed;//moves to the left
    if(earthCo[0] < 300){//when it reaches left most point go back 
    //behind the sun
      while(earthCo[2]>-120){
         earthCo[2]=earthCo[2]-10;
         counter[2]=2;
      }
    }
  }
  else if(counter[2]==2){//moves to the right
    earthCo[0]=earthCo[0]+speed;//when it reaches right most point
    //reset to original point
    if(earthCo[0] > 500){
        while(earthCo[2]<120){
          earthCo[2]=earthCo[2]+10;
          counter[2]=1;
        }
    }
  }
}
void mars() {
  pushMatrix();
  fill(249, 178, 86);
  translate(marsCo[0],marsCo[1], marsCo[2]);
  sphere(7);
  popMatrix();
  if(counter[3]==1){
    marsCo[0]=marsCo[0]-speed;//moves to the left
    if(marsCo[0]< 280){//when it reaches left most point go back 
    //behind the sun
      while(marsCo[2]>-130){
         marsCo[2]=marsCo[2]-10;
         counter[3]=2;
      }
    }
  }
  else if(counter[3]==2){//moves to the right
   marsCo[0]=marsCo[0]+speed;//when it reaches right most point
    //reset to original point
    if(marsCo[0]> 550){
        while(marsCo[2]<130){
          marsCo[2]=marsCo[2]+10;
          counter[3]=1;
        }
    }
  }
}

void jupiter() {
  pushMatrix();
  fill(186, 154, 48);
  translate(jupiterCo[0],jupiterCo[1],jupiterCo[2]);
  sphere(20);
  popMatrix();
  if(counter[4]==1){
    jupiterCo[0]=jupiterCo[0]-speed;//moves to the left
    if(jupiterCo[0]< 240){//when it reaches left most point go back 
    //behind the sun
      while(jupiterCo[2]>-160){
         jupiterCo[2]=jupiterCo[2]-10;
         jupiterCo[1]=400;
         counter[4]=2;
      }
    }
  }
  else if(counter[4]==2){//moves to the right
    jupiterCo[0]=jupiterCo[0]+speed;//when it reaches right most point
    //reset to original point
    if(jupiterCo[0]> 600){
        while(jupiterCo[2]<160){
          jupiterCo[2]=jupiterCo[2]+10;
          jupiterCo[1]=430;
          counter[4]=1;
        }
    }
  }
} 
void saturn() {
  pushMatrix();
  fill(210, 186, 105);
  translate(saturnCo[0],saturnCo[1], saturnCo[2]);
  sphere(18);
  popMatrix();
  if(counter[5]==1){
    saturnCo[0]=saturnCo[0]-speed;//moves to the left
    if(saturnCo[0]< 220){//when it reaches left most point go back 
    //behind the sun
      while(saturnCo[2]>-180){
         saturnCo[2]=saturnCo[2]-10;
         saturnCo[1]=380;
         counter[5]=2;
      }
    }
  }
  else if(counter[5]==2){//moves to the right
    saturnCo[0]=saturnCo[0]+speed;//when it reaches right most point
    //reset to original point
    if(saturnCo[0]> 650){
        while(saturnCo[2]<180){
         saturnCo[2]=saturnCo[2]+10;
         saturnCo[1]=430;
          counter[5]=1;
        }
    }
  }
}
void uranus() {
  pushMatrix();
  fill(108, 149, 250);
  translate(uranusCo[0],uranusCo[1],uranusCo[2]);
  sphere(12);
  popMatrix();
  if(counter[6]==1){
    uranusCo[0]=uranusCo[0]-speed;//moves to the left
    if(uranusCo[0]< 200){//when it reaches left most point go back 
    //behind the sun
      while(uranusCo[2]>-190){
         uranusCo[2]=uranusCo[2]-10;
         uranusCo[1]=350;
         counter[6]=2;
      }
    }
  }
  else if(counter[6]==2){//moves to the right
   uranusCo[0]=uranusCo[0]+speed;//when it reaches right most point
    //reset to original point
    if(uranusCo[0]> 700){
        while(uranusCo[2]<190){
          uranusCo[2]=uranusCo[2]+10;
          uranusCo[1]=600;
          counter[6]=1;
        }
    }
  }
}
void neptune() {
  pushMatrix();
  fill(3, 87, 255);
  translate(neptuneCo[0],neptuneCo[1],neptuneCo[2]);
  sphere(13);
  popMatrix();
  if(counter[7]==1){
    neptuneCo[0]=neptuneCo[0]-speed;//moves to the left
    if(neptuneCo[0]< 180){//when it reaches left most point go back 
    //behind the sun
      while(neptuneCo[2]>-200){
        neptuneCo[2]=neptuneCo[2]-10;
        neptuneCo[1]=330;
         counter[7]=2;
      }
    }
  }
  else if(counter[7]==2){//moves to the right
    neptuneCo[0]=neptuneCo[0]+speed;//when it reaches right most point
    //reset to original point
    if(neptuneCo[0]> 750){
        while(neptuneCo[2]<200){
          neptuneCo[2]=neptuneCo[2]+10;
          neptuneCo[1]=650;
          counter[7]=1;
        }
    }
  }
}
