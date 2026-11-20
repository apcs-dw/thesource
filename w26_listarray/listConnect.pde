
ListArray points;

void setup() {
  size(600, 400);
  background(0);
  stroke(255);
  points = new ListArray();
}//setup

void draw() {
  background(0);
  drawLines();
}//draw


void drawLines() {
  for (int i=0; i < points.getSize() - 1; i++) {
    PVector p0 = points.get(i);
    PVector p1 = points.get(i+1);
    line(p0.x, p0.y, p1.x, p1.y);
  }//line loop
}//drawLines

void mousePressed() {
  points.add(new PVector(mouseX, mouseY));
}//mousePressed

void mouseDragged() {
  points.add(new PVector(mouseX, mouseY));
}//mousePressed


void keyPressed() {
  if (key == ' ') {
    points.add(new PVector(random(width), random(height)));
  }//random point
  if (key == 'r') {
    points = new ListArray();
  }//reset

  if (keyCode == UP) {
    for (int i=0; i<points.getSize(); i++) {
      points.get(i).y--;
    }
  }//move up
  if (keyCode == DOWN) {
    for (int i=0; i<points.getSize(); i++) {
      points.get(i).y++;
    }
  }//move up
  if (keyCode == LEFT) {
    for (int i=0; i<points.getSize(); i++) {
      points.get(i).x--;
    }
  }//move up
  if (keyCode == RIGHT) {
    for (int i=0; i<points.getSize(); i++) {
      points.get(i).x++;
    }
  }//move up

  if (key == '+') {
    for (int i=0; i<points.getSize(); i++) {
      points.get(i).x*=1.25;
      points.get(i).y*=1.25;
    }
  }//grow
  if (key == '-') {
    for (int i=0; i<points.getSize(); i++) {
      points.get(i).x*=0.75;
      points.get(i).y*=0.75;
    }
  }//shrink

}//keyPressed
