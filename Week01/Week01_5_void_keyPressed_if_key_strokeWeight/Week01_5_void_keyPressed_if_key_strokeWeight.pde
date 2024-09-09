void setup() {
  size(500, 500);
}
void draw() {
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}//如果按下滑鼠，就在現在的座標到放開滑鼠的座標之間畫線
void keyPressed()
{
  if (key=='1')strokeWeight(1);
  if (key=='2')strokeWeight(5);
  if (key=='3')strokeWeight(10);
}//按鍵可以改變畫筆粗細
