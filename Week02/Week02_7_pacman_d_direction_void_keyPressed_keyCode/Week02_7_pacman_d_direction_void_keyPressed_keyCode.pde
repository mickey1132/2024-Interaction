void setup()
{
  size(400, 400);
}
float x=200, y=200, d=0;
void draw()
{
  background(255);
  fill(#FFDC0F);//填充黃色
  float angle=frameCount%180;
  if (angle<45)angle=radians(angle);
  else if (angle<90)angle=radians(90-angle);
  else if (angle<135)angle=radians(angle-90);
  else if (angle<180)angle=radians(180-angle);
  arc(x, y, 100, 100, d+0+angle, d+PI*2-angle, PIE);
}
void keyPressed()
{
  if (keyCode==RIGHT) {
    x++;
    d=PI/2*0;
  }
  if (keyCode==DOWN) {
    y++;
    d=PI/2*1;
  }
  if (keyCode==LEFT) {
    x--;
    d=PI/2*2;
  }
  if (keyCode==UP) {
    y--;
    d=PI/2*3;
  }
}
