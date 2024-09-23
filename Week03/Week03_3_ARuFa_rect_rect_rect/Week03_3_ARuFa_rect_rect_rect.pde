PImage img;
void setup()
{
  size(600, 400);
  img=loadImage("ARuFa.jpg");
}
void draw()
{
  image(img, 0, 0);
  noCursor();
  noStroke();
  fill(193, 253, 255, 128);///顏色加透明(R,G,B,透明度)
  rect(mouseX+140, mouseY, 80, 70);
  rect(mouseX+70, mouseY, 80, 70);///加上mouseX,mouseY，讓rect跟著滑鼠跑
  rect(mouseX, mouseY, 80, 70);
  rect(mouseX-70, mouseY, 80, 70);
  ///上三塊
  rect(mouseX+35, mouseY-60, 80, 70);
  rect(mouseX-35, mouseY-60, 80, 70);
  rect(mouseX+105, mouseY-60, 80, 70);
  ///下三塊
  rect(mouseX+35, mouseY+60, 80, 70);
  rect(mouseX-35, mouseY+60, 80, 70);
  rect(mouseX+105, mouseY+60, 80, 70);
  ///上兩塊
  rect(mouseX+70, mouseY-120, 80, 70);
  rect(mouseX, mouseY-120, 80, 70);
  ///下兩塊
  rect(mouseX+70, mouseY+120, 80, 70);
  rect(mouseX, mouseY+120, 80, 70);
  ///上一塊
  rect(mouseX+35, mouseY-180, 80, 70);
  ///下一塊
  rect(mouseX+35, mouseY+180, 80, 70);
}
