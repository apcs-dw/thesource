public class Ball {

  private int cx;
  private int cy;
  private int xspeed;
  private int yspeed;
  private int csize;
  private color inside;

  public Ball(int x, int y, int xs, int ys, int cs, color c) {
    cx = x;
    cy = y;
    xspeed = xs;
    yspeed = ys;
    csize = cs;
    inside = c;
  }//Ball

  public Ball(int maxX, int maxY) {
    csize = (int)random(10, 100);
    xspeed = yspeed = 1;
    if (random(2) >= 1) {
      xspeed*= -1;
    }
    if (random(2) >= 1) {
      yspeed*= -1;
    }

    cx = (int)random(csize/2, maxX - csize/2);
    cy = (int)random(csize/2, maxY - csize/2);

    inside = color(random(255), random(255), random(255));
  }

  public void display() {
    fill(inside);
    circle(cx, cy, csize);
  }//display

  private boolean hitHorizonatalWall(int left, int right) {
    return cx >= right - csize/2 || cx <= left + csize/2;
  }
  private boolean hitVerticalWall(int top, int bottom) {
    return cy >= bottom - csize/2 || cy <= top + csize / 2;
  }

  public void move(int left, int right, int top, int bottom) {
    if (hitHorizonatalWall(left, right)) {
      xspeed*= -1;
      if (xspeed < 0) {
        xspeed--;
      }
      else {
        xspeed++;
      }
    }
    if (hitVerticalWall(top, bottom)) {
      yspeed*= -1;
      if (yspeed < 0) {
        yspeed--;
      }
      else {
        yspeed++;
      }
    }
    cx+= xspeed;
    cy+= yspeed;
  }//move


}//ball class
