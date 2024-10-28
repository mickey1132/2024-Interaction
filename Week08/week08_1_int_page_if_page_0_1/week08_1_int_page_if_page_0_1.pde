PImage img;
void setup()
{
  size(480,360);
  img=loadImage("0.jpg");
}
int page=0;
void draw()
{
  if(page==0)
  {
    background(0);
    textSize(70);
    textAlign(CENTER,CENTER);
    text("Opening",240,180);
  }
  else if(page==1)
  {
    background(img);
  }
}
void mousePressed()
{
  if(page==0) page=1;
}
