void setup()
{
  size(500, 400);
}
void keyPressed()
{
  if(keyCode==RIGHT)x+=1;
  if(keyCode==LEFT)x-=1;
  if(keyCode==UP)y-=1;
  if(keyCode==DOWN)y+=1;
}
float x=250, y=200;
void draw()
{
  //background(215,184,200);
  background(219);
  stroke(210);
  strokeWeight(1);
  for (int i=0; i<30; i++)
  {
    line(0, i*30, 500, i*30);
    line(i*30, 0, i*30, 500);
  }
  float dx=mouseX-x, dy=mouseY-y;
  float angle=atan2(dy, dx);

  myTank(x, y, angle);
}
void myTank(float x, float y, float angle)
{
  translate(x, y);
  rotate(angle);
  fill(167, 167, 175);
  stroke(110, 110, 113);
  strokeWeight(4);
  rect(25, -10, 20, 20);

  fill(204, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(3);
  ellipse(0, 0, 55, 55);

  ///line(x,y,mouseX,mouseY);
}
