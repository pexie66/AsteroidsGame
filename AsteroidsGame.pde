Spaceship one = new Spaceship();
Star [] two = new Star [250];

public void setup() 
{
  size (800,600);
  for (int i = 0; i < two.length; i++)
  {
   two[i] = new Star(); 
  }
}

public void draw() 
{
  background(0);
  one.show();
  one.move();
  for (int i = 0; i < two.length; i++)
  {
    two[i].show();
  }
}

public void keyPressed()
{
  //accelerate
  if(key == 'i')
  {
    one.accelerate(0.5);
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
   // one.show();
    one.setDirectionX(0);
    one.setDirectionY(0);
    one.setX((int)(Math.random()*800));
    one.setY((int)(Math.random()*600));
    one.setPointDirection((int)(Math.random()*360));
  }
}