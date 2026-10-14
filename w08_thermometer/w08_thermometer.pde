void setup() {
  size(300, 600);
  textAlign(CENTER, CENTER);
  drawThermometer(50, 50, 200, 500, 75);

  saveFrame("a08_thermometer.png");
}//setup



void drawThermometer(int x, int y, int w, int h, float temp) {

  //bounding box
  fill(193, 169, 219);
  rect(x, y, w, h);

  int scaleWidth = int(w * 0.4);
  int scaleHeight = int(h * 0.9);

  //inner box
  fill(255);
  drawReading(x+(w-scaleWidth)/2, y+(h-scaleHeight)/2, scaleWidth, scaleHeight, temp);

  text(temp, x+ w/2, y+15);
}//drawThermometer

void drawReading(int x, int y, int w, int h, float temp) {

  rect(x, y, w, h);
  int tempHeight = 0;
  tempHeight = int(temp / 100.0 * h);

  fill(255, 0, 0);
  rect(x, y+(h-tempHeight), w, tempHeight);

  //scale
  drawScale(x-15, y+h, h);
}//drawReading

void drawScale(int x, float y, int h) {

  fill(0);
  //println(h);
  int scaleStop = 0;
  int scaleStart = 0;
  float scaleIncrease = 0;

  scaleStop = 100;
  scaleIncrease = h/100.0;

  for (; scaleStart<=scaleStop; scaleStart++) {
    if (scaleStart % 5 == 0) {
      line(x, y, x+10, y);
      text(scaleStart, x-10, y);
    }
    y-= scaleIncrease;
    //println(scaleStart + " y: " + y);
  }//draw marks
}//drawScale
