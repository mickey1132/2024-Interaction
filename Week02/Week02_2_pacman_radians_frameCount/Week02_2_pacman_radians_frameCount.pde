void setup()
{
  size(400, 400);
}
void draw()
{
  background(255);
  fill(#FFDC0F);//填充黃色
  float angle=radians(frameCount);
  if (angle>PI/4)angle=angle-PI/4;
  arc(200, 200, 300, 300, 0+angle, PI*2-angle, PIE);
}
