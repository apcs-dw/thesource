char c, rc;
int rotnum;
int SIZE;

void setup() {
  size(1040, 500);
  SIZE = 40;
  textAlign(CENTER, CENTER);

}//setup

void draw() {
  background(0);
  numberRow(0, 0, SIZE);

  textAlign(LEFT, TOP);
  text("selected number: ", 0, SIZE*2);
  text(rotnum, textWidth("selected number: ") + 5, SIZE*2);

  text("entered char: ", 0, SIZE * 3);
  text(c, textWidth("entered char: ") + 5, SIZE * 3);

  text("encoded char: ", 0, 240);
  text(rc, textWidth("encoded char: ") + 5, 240);
}//draw

void keyPressed() {

  if (key >= 'a' && key <= 'z' || key >= 'A' && key <= 'Z') {
    c = key;
    rc = rotX(c, rotnum);
  }
  //println(c, rc);
}//keyPressed

char rotX(char c, int offset) {
    if (c >= 'A' && c <= 'Z') {
        return (char) ((c - 'A' + offset) % 26 + 'A');
    }
    else if (c >= 'a' && c <= 'z') {
        return (char) ((c - 'a' + offset) % 26 + 'a');
    }
    return c;
}//rotX

void mousePressed() {
  rotnum = getNum(mouseX, mouseY, 40);
  rc = rotX(c, rotnum);
}//mousePressed

void numberRow(int x, int y, int s) {
  for (int i=0; i<26; i++) {
    numberBox(i, x, y, s);
    x+= s;
  }
}//numberRow

void numberBox(int i, int x, int y, int s) {
  noFill();
  stroke(255);
  square(x, y, s);

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(s-5);
  text(i, x+s/2, y+s/2);
}//numberBox

int getNum(int x, int y, int s) {
  if (y > s) {
    return -1;
  }
  else {
    return x / s;
  }
}//getNum
