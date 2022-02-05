int z = 100;
int a = (int)(Math.random()*256);
int b = (int)(Math.random()*256);
int c = (int)(Math.random()*256);
public void setup()
{
  size(600, 600);
}
public void draw()
{
  background(0);
  stroke(255);
  fill(a,b,c);
  sierpinski(25, 575, z);
}
public void mousePressed()
{
  if (mouseButton == LEFT)
  {
   z = z + 20;
   a = (int)(Math.random()*256);
   b = (int)(Math.random()*256);
   c = (int)(Math.random()*256);
   redraw();
  } else if (mouseButton == RIGHT)
  {
    if(z > 20)
    z = z - 20;
    a = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    c = (int)(Math.random()*256);
    redraw();
  }
}
public void keyPressed() {
  if (key == CODED)
  {
    if(keyCode == UP)
    {
      z = z + 20;
    } else if(keyCode == DOWN)
    {
      if(z > 20)
      z = z - 20;
    }
  }
}

public void sierpinski(int x, int y, int len)
{
  if (len <= 20)
  {
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
