void setup()
{
 size(500,400);
}
int x=250,y=200;
void draw()
{
  background(215,184,200);
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(3);
  rect(240,155,20,20);
  
  fill(204,102,156);
  strokeWeight(3);
  ellipse(x,y,55,55);
  
  line(x,y,mouseX,mouseY);
}
