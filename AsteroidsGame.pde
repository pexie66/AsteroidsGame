//your variable declarations here
Spaceship one = new Spaceship ();
Star two [] = new Star [500];
ArrayList <Asteroid> three;

public void setup() 
{
  //your code here
  size (800, 600);
  for (int i = 0; i < two.length; i++)
  {
    two[i] = new Star();
  }

  three = new ArrayList <Asteroid>();
  for (int k = 0; k < 16; k++)
  {
    three.add(k, new Asteroid());
  }
}

public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < two.length; i++)
  {
    two[i].show();
  }

  for (int k = 0; k < three.size(); k++)
  {
    three.get(k).show();
    three.get(k).move();
  }
  
  for (int k = 0; k < three.size(); k ++)
    {
      if (dist(one.getX(), one.getY(), three.get(k).getX(), three.get(k).getY()) < 20)
        three.remove(k);
    }
  
  one.show();
  one.move();
}

public void keyPressed()
{
  //accelerate
  if (keyCode == UP)
  {
    one.accelerate(0.1);
  }

  //turn left
  if (keyCode == LEFT)
  {
    one.turn(-20);
  }  

  //turn right
  if (keyCode == RIGHT)
  {
    one.turn(20);
  }

  //hyperspace: stop the ship; new random position and direction
  if (key == 'h') 
  {
    int setPointDirection = (int)(Math.random()*360);
    int setX = (int)(Math.random()*800);
    int setY = (int)(Math.random()*600);     
    one.setDirectionX(0);
    one.setDirectionY(0);    
    one.setPointDirection(setPointDirection);
    one.setX(setX);
    one.setY(setY);
  }
  
}
