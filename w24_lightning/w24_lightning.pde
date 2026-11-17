Lightning l;

void setup() {
  size(500, 500);
  background(62, 42, 247);

  l = new Lightning();
}

void draw() {
  background(62, 42, 247);
  if (! l.isComplete() ) {
    l.display();
  }
  else {
    l = new Lightning();
  }
}//draw
