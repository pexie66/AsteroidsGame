class Asteroid extends Floater
{
  private int myRotateSpeed;
  public Asteroid()
  {
    corners = 5;
    xCorners = new int [corners];
    yCorners = new int [corners];
    myColor = color (147, 147, 147);
    int [] xS = {(int)myCenterX, (int)myCenterX+16, (int)myCenterX+8, (int)myCenterX-8, (int)myCenterX-16};
    int [] yS = {(int)myCenterY+16, 0, (int)myCenterY-16, (int)myCenterY-16, 0};
    xCorners = xS;
    yCorners = yS;
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*600;
    myDirectionX = myDirectionY = (int)(Math.random()*3)-1;
    myPointDirection = 0;
    myRotateSpeed = (int)(Math.random()*3)-1;
  }
  // override the move() in floater.pde
  public void move () 
  {
    turn(myRotateSpeed);
    //super refers to the Floater class (the class being extended by Asteroid.pde)
    super.move();
  } 

  public void setX(int x) {
    myCenterX = x;
  } 
  public int getX() {
    return (int)myCenterX;
  }  

  public void setY(int y) {
    myCenterY = y;
  }   
  public int getY() {
    return (int)myCenterY;
  }

  public void setDirectionX(double x) {
    myDirectionX = x;
  }   
  public double getDirectionX() {
    return myDirectionX;
  } 

  public void setDirectionY(double y) {
    myDirectionY = y;
  } 
  public double getDirectionY() {
    return myDirectionY;
  }

  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }  
  public double getPointDirection() {
    return myPointDirection;
  }
}
