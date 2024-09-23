int[] boardX = {140, 70, 0, -70, 35, -35, 105, 35, -35, 105, 70, 0, 70, 0, 35, 35};
int[] boardY = {0, 0, 0, 0, -60, -60, -60, 60, 60, 60, -120, -120, 120, 120, -180, 180};
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

  for (int i = 0; i <16; i++) {
    rect(mouseX + boardX[i], mouseY + boardY[i], 80, 70);
  }
}
