void setup()
{
  size(400, 400);
}
void draw()
{
  background(255);
  fill(#FFDC0F);//填充黃色
  float angle=frameCount%180;
  float b=radians(mouseX);
  if (angle<45)angle=radians(angle);
  else if (angle<90)angle=radians(90-angle);
  else if (angle<135)angle=radians(angle-90);
  else if (angle<180)angle=radians(180-angle);
  arc(200, 200, 300, 300, b+0+angle, b+PI*2-angle, PIE);
}
