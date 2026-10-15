int INFO_TEXT_SIZE = 50;
int TEXT_SIZE = 100;

int fizz;
int buzz;
int count;
boolean play;
int speed;

void setup() {
  size(500, 500);
  textSize(TEXT_SIZE);
  textAlign(CENTER, CENTER);
  frameRate(30);

  fizz = 3;
  buzz = 5;
  count = 0;
  play = true;
  speed = 15;
  text(count, width/2, height/2);
}//setup


void draw() {
  background(0);
  showNums();
  if (count % (fizz * buzz) == 0) {
    text("FIZZBUZZ", width/2, height/2);
  }//fizzbuzz
  else if (count % fizz == 0) {
    text("FIZZ", width/2, height/2);
  }//fizz
  else if (count % buzz == 0) {
    text("BUZZ", width/2, height/2);
  }//buzz
  else {
    text(count, width/2, height/2);
  }

  if (play && frameCount % speed == 0) {
    count++;
  }//incriment

}//draw

void keyPressed() {
  if (key == 'r') {
    count = 0;
  }//reset
  else if (key == ' ' ) {
    play = !play;
  }//play/pause
  else if (key >= '1' && key <= '9') {
    fizz = key - '0';
  }
  else if (keyCode == UP) {
    speed--;
    if (speed < 1) {
      speed = 1;
    }
  }
  else if (keyCode == DOWN) {
    speed++;
  }
}//keyPressed


void showNums() {
  textSize(INFO_TEXT_SIZE);
  textAlign(LEFT, TOP);
  text(fizz, 0, 0);
  textAlign(RIGHT, TOP);
  text(buzz, width, 0);
  textSize(TEXT_SIZE);
  textAlign(CENTER, CENTER);
}//showNums
