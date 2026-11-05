Ball b0;
Ball b1;

boolean moving;

void setup() {
  size(600, 400);
  moving = true;

  b0 = new Ball(width/2, height/2, 1, 1, 40, 255);
  b1 = new Ball(width, height);
}//setup

void draw() {
  background(0);

  b0.display();
  b1.display();

  if (moving) {
    b0.move(0, width, 0, height);
    b1.move(0, width, 0, height);
  }
}

void keyPressed() {
  if (key == ' ') {
    moving = !moving;
  }
  if (key == 'r') {
    b0 = new Ball(width/2, height/2, 1, 1, 40, 255);
    b1 = new Ball(width, height);
  }
}//keyPressed
