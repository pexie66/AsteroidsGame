class Spaceship extends Floater  
{   
    //the 10 abstract set and get functions inhereted from Floater
    public Spaceship()
    {
       corners = 4;
       xCorners = new int [corners];
       yCorners = new int [corners];
       myColor = color (255,184,31);
       xCorners [0] = -16;
       yCorners [0] = 16;
       xCorners [1] = -4;
       yCorners [1] = 0;
       xCorners [2] = -16;
       yCorners [2] = -16;
       xCorners [3] = 16;
       yCorners [3] = 0;
       myCenterX = 400;
       myCenterY = 300;
       myDirectionX = myDirectionY = 0;
       myPointDirection = 0;
    }

  public void setX(int x) {myCenterX = x;} 
  public int getX() {return (int)myCenterX;}  
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;}   
  public void setDirectionX(double x) {myDirectionX = x;}   
  public double getDirectionX() {return myDirectionX;}  
  public void setDirectionY(double y) {myDirectionY = y;} 
  public double getDirectionY() {return myDirectionY;}   
  public void setPointDirection(int degrees) {myPointDirection = degrees;}  
  public double getPointDirection() {return myPointDirection;}
}