void setup() {
  size(500, 500);
  drawLogo(250, 250, 100);
}//end setup

void drawLogo(int x, int y, int logoSize) {
  fill(255, 0, 0);
  circle(x, y, logoSize);
  fill(255);
  circle(x, y, logoSize * 0.66);
  fill(255, 0, 0);
  circle(x, y, logoSize * 0.33);
}//drawLogo
