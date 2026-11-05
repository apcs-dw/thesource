//variables for the up-down circle
int udy, udspeed;
//variables for the left-right circle
int lrx, lrspeed;

//variables for part 4
int cx, cy, cxspeed, cyspeed;


//other variables
int csize;
boolean moving;

void setup() {
  size(600, 400);
  udy = height/2;
  lrx = width/2;
  udspeed = lrspeed = 1;

  csize = 40;
  moving = true;

  /* part 4 setup */
  cx = (int)random(csize/2, width-csize/2);
  cy = (int)random(csize/2, height-csize/2);
  cxspeed = 1;
  cyspeed = 1;
}//setup

void draw() {
  background(0);

  circle(width/2, udy, csize);
  circle(lrx, height/2, csize);

  /* part 3 */
  circle(lrx, udy, csize);

  /* part 4 */
  circle(cx, cy, csize);

  if (moving) {
    if (udy >= height - csize/2 ||
        udy <= csize/2) {
        udspeed *= -1;
    }//up/down bounce

    if (lrx >= width - csize/2 ||
        lrx <= csize/2) {
        lrspeed *= -1;
    }//left/right bounce

    udy+= udspeed;
    lrx+= lrspeed;

    /* part 4 */
    if (cx >= width - csize/2 || cx <= csize/2) {
      cxspeed*= -1;
    }
    if (cy >= height - csize/2 || cy <= csize/2) {
      cyspeed*= -1;
    }
    cx+= cxspeed;
    cy+= cyspeed;

  }//moving

}//draw

void keyPressed() {
  if (key == ' ') {
    moving = !moving;
  }
  if (key == 'r') {
    udy = height/2;
    lrx = width/2;

    /* part 4 */
    cx = (int)random(csize/2, width-csize/2);
    cy = (int)random(csize/2, height-csize/2);
  }
}//keyPressed
