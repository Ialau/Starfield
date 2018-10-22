Particle[] particles;
JumboParticle jumbo;
OddballParticle oddBall;
void setup()
{
  noStroke();
	size(400,400);
  background(0,0,0);
  particles = new Particle[300];
  for(int i = 0; i < particles.length; i++){
  particles[i] = new NormalParticle();
  
  }
  jumbo = new JumboParticle();
  oddBall = new OddballParticle();
}
void draw()
{
	for(int i = 0; i < particles.length; i++){
  particles[i].show();
  particles[i].move();
  
  
  }
  jumbo.show();
  jumbo.move();
  oddBall.show();
  oddBall.move();
}
class NormalParticle implements Particle
{
	double myX, myY, myAngle, mySpeed;
  int myColor;
  NormalParticle(){
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (int)(Math.random()*11);
    myX = 200;
    myY = 200;
    myColor = (int)((Math.random()*100));
  }
  void move(){
    myX = (Math.cos(myAngle)*mySpeed)+myX;
    myY = (Math.sin(myAngle)*mySpeed)+myY;
  }
  
  void show(){
    fill(myColor,(int)Math.random()*255,(int)Math.random()*255);
    ellipse((float)myX,(float)myY,10,10);
    
  }
}
interface Particle
{
	public void show();
  public void move();
}
class OddballParticle //uses an interface
{
	double myX, myY, myAngle, mySpeed;
  int myColor;
  OddballParticle(){
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (int)(Math.random()*11);
    myX = 0;
    myY = 100;
    myColor = (int)((Math.random()*100));
  }
  void move(){
    myX = (int)(Math.random()*5)+myX;
    myY = (int)(Math.random()/5)+myY;
    if(myX == 400){
      myX = 400;
      myY = (int)(Math.random()*5)+myY;
    }
  }
  
  void show(){
    fill((int)Math.random()*255,(int)Math.random()*255, myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
}
class JumboParticle //uses inheritance
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
	JumboParticle(){
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (int)(Math.random()*11);
    myX = 200;
    myY = 200;
    myColor = (int)((Math.random()*100));
  }
  void move(){
    myX = (Math.cos(myAngle)*mySpeed)+myX;
    myY = (Math.sin(myAngle)*mySpeed)+myY;
  }
  
  void show(){
    fill(myColor,(int)Math.random()*255,(int)Math.random()*255);
    ellipse((float)myX,(float)myY,50,50);
  }
}
