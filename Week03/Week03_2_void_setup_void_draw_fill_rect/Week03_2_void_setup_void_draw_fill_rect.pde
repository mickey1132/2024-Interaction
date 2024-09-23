PImage img;
void setup()
{
  size(600, 400);
  img=loadImage("ARuFa.jpg");
}
void draw()
{
  image(img,0,0);
  noStroke();
  fill(193,253,255,128);///顏色加透明(R,G,B,透明度)
  rect(mouseX,mouseY,80,70);///加上mouseX,mouseY，讓rect跟著滑鼠跑
}
