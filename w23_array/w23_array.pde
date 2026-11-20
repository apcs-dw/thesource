Ball[] balls;
int ballCount;

boolean moving;

void setup() {
  size(600, 400);
  moving = true;

  balls = new Ball[10];
  ballCount = 0;
}//setup

void draw() {
  background(0);

  showBalls();
  if (moving) {
    moveBalls();
    collisionCheck();
  }
}

void keyPressed() {
  if (key == ' ') {
    moving = !moving;
  }
  if (key == '+' && ballCount < balls.length) {
    balls[ballCount] = new Ball(width, height);
    ballCount++;
  }
  if (key == '-' && ballCount > 0) {
    ballCount--;
    balls[ballCount] = null;
  }
}//keyPressed

void mousePressed() {
  for (int i=0; i<balls.length; i++) {
    if (balls[i] != null) {
      if (balls[i].isSelected(mouseX, mouseY)) {
        balls[i] = null;
        return;
      }
    }
  }
}//mousePressed

void showBalls() {
  for (int i=0; i<balls.length; i++) {
    if (balls[i] != null) {
      balls[i].display();
    }
  }
}

void moveBalls() {
  for (int i=0; i<balls.length; i++) {
    if (balls[i] != null) {
      balls[i].move(0, width, 0, height);
    }
  }
}

void collisionCheck() {

  for (int i=0; i<balls.length; i++) {
    boolean hit = false;
    if (balls[i] != null) {
      for (int j=0; j < balls.length; j++) {
        if (j != i && balls[j] != null) {
          if (balls[i].collisionCheck(balls[j])) {
            hit = true;
            break;
          }//collision!
        }//j  exists
      }//j loop
      if (hit) {
        balls[i].inside = color(255, 0, 255);
      }
      else {
        balls[i].inside = color(0, 255, 255);
      }
    }//i exists
  }//i loop
}//collisionCheck
