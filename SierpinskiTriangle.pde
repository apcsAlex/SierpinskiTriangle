public void setup()
{  
  size(400,400);
  background (255);
}
public void draw()
{
  //fill((int)(Math.random()*257),(int)(Math.random()*257),(int)(Math.random()*257));
  stroke((int)(Math.random()*257),(int)(Math.random()*257),(int)(Math.random()*257));
  sierpinski(0,400,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <=20) {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
    ellipse(x,y,5,5);
    ellipse(x+len,y,5,5);

  }

}