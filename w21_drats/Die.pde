public class Die {

  private int dx;
  private int dy;
  private int value;
  private int dsize;

  public Die(int x, int y, int ds) {
    dx = x;
    dy = y;
    dsize = ds;

    //value = int(random(6)) + 1;
    value = 0;
  }//constructor

  public void display() {
    fill(255);
    square(dx, dy, dsize);
    if (value != 0) {
      fill(0);
      textSize(dsize);
      textAlign(CENTER, CENTER);
      text(value, dx+dsize/2, dy+dsize/2);
    }//only show number once value is set
  }//display

  public void reset() {
    value = 0;
  }//reset

  public int roll() {
    value = int(random(6)) + 1;
    return value;
  }//roll

}//Die
