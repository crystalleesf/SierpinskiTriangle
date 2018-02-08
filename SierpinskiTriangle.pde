public void setup()
{
  size(300,300);
  //background(0);
  noStroke();
}
public void draw()
{
  sierpinski(25,290,250);
}
public void mousePressed()//optional
{
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=20)
  triangle(x,y,x+len,y,x+len/2,y-len);
  else {
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);}
  
}