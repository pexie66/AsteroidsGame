class Star //note that this class does NOT extend Floater
{
  private float myX, myY, mySize;
  private int myColor;
  public Star()
  {
    myX = (int)(Math.random()*801);
    myY = (int)(Math.random()*601);
    mySize = (int)(Math.random()*8);
    myColor = color (252,104,82);
  }
  
  public void show()
  {
    fill (myColor);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
}
