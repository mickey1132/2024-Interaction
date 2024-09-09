void setup() {
  size(500, 500);
}
void draw() {
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}//如果按下滑鼠，就在現在的座標到放開滑鼠的座標之間畫線
