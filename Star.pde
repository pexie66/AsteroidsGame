class Star //note that this class does NOT extend Floater
{
  private float myX, myY, mySize;
  private int myColor;
  public Star()
  {
    myX = (int)(Math.random()*801);
    myY = (int)(Math.random()*601);
    mySize = (int)(Math.random()*8);
    myColor = color (177,255,95);
  }
  
  public void show()
  {
    fill (myColor);
    stroke(250);
    ellipse(myX, myY, mySize, mySize);
  }
}
