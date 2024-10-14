void setup()
{
  size(500, 500);
}
void draw()
{
  background(255, 255, 255);
  line(0, 100, 500, 100);
  line(0, 200, 500, 200);
  line(0, 300, 500, 300);
  line(0, 400, 500, 400);
  line(100, 0, 100, 500);
  line(200, 0, 200, 500);
  line(300, 0, 300, 500);
  line(400, 0, 400, 500);
  fill(0);
  textSize(50);
  textAlign(CENTER, CENTER);
  for (int i=50; i<=450; i+=100)
  {
    text("1", 50, i);
    text("1", 150, i);
    text("1", 250, i);
    text("1", 350, i);
    text("1", 450, i);
  }
}
