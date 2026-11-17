public class Lightning {

  private PVector[] points;
  private int currentPoint;

  public Lightning() {
    points = new PVector[50];
    currentPoint = 0;

    populate();
  }//constructor


  private void populate() {

    points[0] = new PVector(random(width), 0);
    for (int p=1; p < points.length; p++) {
      float x = points[p-1].x + random(-15, 15);
      float y = points[p-1].y + random(5, 20);
      points[p] = new PVector(x, y);
    }//make new points
  }


  public void fullBolt() {
    stroke(255);
    strokeWeight(5);

    for (int p=0; p < points.length-1; p++) {
      line(points[p].x, points[p].y, points[p+1].x, points[p+1].y);
    }
  }//fullBolt

  public void display() {
    stroke(255);
    strokeWeight(5);
    if (currentPoint == points.length - 1) {
      fullBolt();
      return;
    }//past the end

    for (int p=0; p < currentPoint; p++) {
      line(points[p].x, points[p].y, points[p+1].x, points[p+1].y);
    }
    currentPoint++;
  }//display

  public boolean isComplete() {
    return  currentPoint == points.length - 1;
  }


}//Lightning
