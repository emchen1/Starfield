Particle[] aBunch;
//Particle[] aBunch = new Particle[500];

//OddballParticle oddie;
//JumboParticle bob;
void setup()
{
  size(500, 500);
  frameRate(20);

aBunch= new Particle[500];
  for(int i=0;i<2; i++)
  {
   aBunch[i]= new JumboParticle();
  }
  for(int i=2;i<11; i++)
  {
   aBunch[i]= new OddballParticle();
  }
   for (int i=10; i<500; i++)
  {
   aBunch[i]= new NormalParticle();
  }
   
}
void draw()
{
  background(0);   
  for(int i=0; i<450; i++)
  {
  aBunch[i].move();
  aBunch[i].show();
  }
  for(int j=0; j>450; j++)
  {
  aBunch[j].move();
  aBunch[j].show();
  }
}

class NormalParticle implements Particle
{
  double myX, myY, mySpeed, myDirection;
  NormalParticle()
  {
    myX=250;
    myY=250;
    mySpeed=Math.random()*10;
    myDirection=Math.random()*10;
  }
  public void show()
  {
    fill(255);   
    ellipse((float)myX, (float)myY, 2, 2);
  }
  public void move()
  {
    myX= myX+(mySpeed)*(Math.cos(myDirection)); 
    myY= myY+(mySpeed)*(Math.sin(myDirection));
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double myX, myY, mySpeed, myDirection;
  OddballParticle()
  {
    myX=0;
    myY=0;
    mySpeed=Math.random()*2;
    myDirection=Math.random()*2;
  }
  public void show()
  {
    fill(255, 100, 200);   
    rect((float)myX, (float)myY, 5, 5);
  }
  public void move()
  {
    myX= myX+(mySpeed)*(Math.cos(myDirection)); 
    myY= myY+(mySpeed)*(Math.sin(myDirection));
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
    ellipse((float)myX,(float)myY, 10, 10);
  }
}