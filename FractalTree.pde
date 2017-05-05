private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;

int itri1 = 0;

public void setup() 

{   
	size(650,490);   
	frameRate(3);
} 
public void draw() 
{   
	background(0);   
	stroke(150,255,130);   
	line(320,480,320,450-itri1);   
	drawBranches(320,450-itri1,itri1,3*Math.PI/2);
	itri1 = (int)(Math.abs(100*sin(frameCount)));
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here   
	
	double anglea= angle+branchAngle;
	double angleb= angle-branchAngle;
	branchLength=branchLength*fractionLength;
	int endXa = (int)(branchLength*Math.cos(anglea) + x);
	int endYa = (int)(branchLength*Math.sin(anglea) + y);
	int endXb = (int)(branchLength*Math.cos(angleb) + x);
	int endYb = (int)(branchLength*Math.sin(angleb) + y);
	line(x,y,endXa,endYa);
	line(x,y,endXb,endYb);

	if (branchLength>smallestBranch){
		drawBranches(endXa,endYa,branchLength,anglea+7);
		drawBranches(endXb,endYb,branchLength,angleb-7);
	}



} 