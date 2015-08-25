void setup()
{
	size(600,600,P3D);
	background(0);
}
void draw()
{
	sun();
	mercury();
}

void sun() 
{
	noStroke();
	fill(300,205,0);//yellow
	lights();//just for test
	translate(300,300,50);//moved to the center of the screen
	sphere(20);
}

void mercury(){
	noStroke();
	lights();
	translate(100,100,60);
	sphere(20);
}