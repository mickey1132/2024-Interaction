PImage img;
void setup() {
  size(600, 400);
  img = loadImage("ARuFa.jpg");
}

void draw() {
  image(img, 0, 0);
  noCursor();
  noStroke();
  fill(193, 253, 255, 128); // 顏色加透明(R,G,B,透明度)

  // 第一層
  for (int i = -1; i <= 2; i++) {
    rect(mouseX + i * 70, mouseY, 80, 70);
  }

  // 第二層
  for (int i = -1; i <= 1; i++) {
    rect(mouseX + i * 70 + 35, mouseY - 60, 80, 70);
    rect(mouseX + i * 70 + 35, mouseY + 60, 80, 70);
  }

  // 第三層
  for (int i = 0; i <= 1; i++) {
    rect(mouseX + i * 70, mouseY - 120, 80, 70);
    rect(mouseX + i * 70, mouseY + 120, 80, 70);
  }

  // 第四層
  rect(mouseX + 35, mouseY - 180, 80, 70);
  rect(mouseX + 35, mouseY + 180, 80, 70);
}
