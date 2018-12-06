class Spaceship extends Floater  
{   
    //the 10 abstract set and get functions inhereted from Floater
    public Spaceship()
    {
       corners = 16;
       xCorners = new int [corners];
       yCorners = new int [corners];
       myColor = color (121,255,229);
       int [] xS ={4,8,8,16,32,16,8,4,-4,-8,-16,-32,-16,-8,-8,-4};
       int [] yS ={24,16,0,0,-16,-23,-16,-24,-24,-16,-23,-16,0,0,16,24};
       xCorners = xS;
       yCorners = yS;
       myCenterX = 400;
       myCenterY = 300;
       myDirectionX = myDirectionY = 0;
       myPointDirection = 0;
    }
  
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    
    //rocket effect
    if (key == 'i')
    {
       fill(#FFEC58);
       noStroke();
       ellipse((float)myCenterX-50, (float)myCenterY, 5, 5); 
    }

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
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
