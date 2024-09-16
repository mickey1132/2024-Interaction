void setup()
{
  size(400, 400);
}
void draw()
{
  background(255);
  fill(#FFDC0F);//填充黃色
  for (int x=0; x<400; x+=100) {
    for (int y=0; y<400; y+=100) {
      float angle=frameCount%180;
      if (angle<45)angle=radians(angle);
      else if (angle<90)angle=radians(90-angle);
      else if (angle<135)angle=radians(angle-90);
      else if (angle<180)angle=radians(180-angle);
      arc(x+50, y+50, 100, 100, 0 + angle, PI*2 - angle, PIE);
    }
  }
}
