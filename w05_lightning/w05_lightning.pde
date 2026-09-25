void setup() {
  size(500, 500);
  background(62, 42, 247);
  int i = 0;
  while (i < 5) {
    drawLightning((int)random(50, width-50), 0);
    i++;
  }
}//setup




void drawLightning(int x, int y) {
  stroke(255);
  strokeWeight(5);

  int nextX, nextY;
  while (y < height) {
    nextX = x + (int)random(-15, 15);
    nextY = y + (int)random(5, 20);

    line(x, y, nextX, nextY);
    x = nextX;
    y = nextY;

  }//draw parts
}//drawLightning
