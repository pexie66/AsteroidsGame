//your variable declarations here
Spaceship one = new Spaceship ();
Star two [] = new Star [500];
Asteroid three [] = new Asteroid [25];

public void setup() 
{
  //your code here
  size (800, 600);
  for (int i = 0; i < two.length; i++)
  {
    two[i] = new Star();   
  }
  for (int k = 0; k < three.length; k++)
  {
  	three[k] = new Asteroid();
  }
}

public void draw() 
{
  //your code here
  background(0);
  one.show();
  one.move();
  for (int i = 0; i < two.length; i++)
  {
    two[i].show();
  }
  for (int k = 0; k < three.length; k++)
  {
  	three[k].show();
  	three[k].move();
  }

}

public void keyPressed()
{
  //accelerate
  if(key == 'i')
  {
    one.accelerate(0.1);
  }
  
  //turn left
  if (key == 'j')
  {
    one.turn(-2);
  }  
  
  //turn right
  if (key == 'l')
  {
    one.turn(2);
  }
  
  //hyperspace: stop the ship; new random position and direction
  if (key == 'k')
  {
    one.show();
    one.setX((int)(Math.random()*800));
    one.setY((int)(Math.random()*600));
    one.setPointDirection((int)(Math.random()*360));
  }
}
