ListArray balls;

boolean moving;

void setup() {
  size(600, 600);
  moving = true;

  balls = new ListArray();
}//setup

void draw() {
  background(0);

  showBalls();
  if (moving) {
    moveBalls();
    collisionCheck();
  }
}//draw

void keyPressed() {
  if (key == ' ') {
    moving = !moving;
  }//play/pause
  if (key == '+') {
    balls.add(new Ball(width, height));
  }//add a Ball
}//keyPressed


void showBalls() {
  for (int i=0; i<balls.getSize(); i++) {
    balls.get(i).display();
  }
}//showBalls

void moveBalls() {
  for (int i=0; i<balls.getSize(); i++) {
    balls.get(i).move(0, width, 0, height);
  }
}//moveBalls

void collisionCheck() {

  for (int i=0; i<balls.getSize(); i++) {
    boolean hit = false;
    for (int j=0; j < balls.getSize(); j++) {
      if (j != i) {
        if (balls.get(i).collisionCheck(balls.get(j))) {
          hit = true;
          break;
        }//collision!
      }//j  exists
    }//j loop
    if (hit) {
      balls.get(i).inside = color(255, 0, 255);
    }
    else {
      balls.get(i).inside = color(0, 255, 255);
    }
  }//i loop
}//collisionCheck
