int MAX_POINTS = 100;

PVector[] points;
int numPoints;

void setup() {
  size(600, 400);
  background(0);
  stroke(255);
  points = new PVector[100];
  numPoints = 0;

}//setup

void draw() {
  background(0);
  drawLines(points);
}//draw


void drawLines(PVector[] points) {
  for (int i=0; i<numPoints-1; i++) {
    line(points[i].x, points[i].y, points[i+1].x, points[i+1].y);
  }//line loop
}//drawLines

void mousePressed() {
  points[numPoints] = new PVector(mouseX, mouseY);
  numPoints++;
}//mousePressed

void mouseDragged() {
  points[numPoints] = new PVector(mouseX, mouseY);
  numPoints++;
}//mousePressed


void keyPressed() {
  if (key == ' ') {
    points[numPoints] = new PVector(random(width), random(height));
    numPoints++;
  }//random point
  if (key == 'r') {
    numPoints = 0;
  }//reset

  if (keyCode == UP) {
    for (int i=0; i<numPoints; i++) {
      points[i].y--;
    }
  }//move up
  if (keyCode == DOWN) {
    for (int i=0; i<numPoints; i++) {
      points[i].y++;
    }
  }//move up
  if (keyCode == LEFT) {
    for (int i=0; i<numPoints; i++) {
      points[i].x--;
    }
  }//move up
  if (keyCode == RIGHT) {
    for (int i=0; i<numPoints; i++) {
      points[i].x++;
    }
  }//move up

  if (key == '+') {
    for (int i=0; i<numPoints; i++) {
      points[i].x*=1.25;
      points[i].y*=1.25;
    }
  }//grow
  if (key == '-') {
    for (int i=0; i<numPoints; i++) {
      points[i].x*=0.75;
      points[i].y*=0.75;
    }
  }//shrink
}//keyPressed
