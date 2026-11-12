public class Ball {


  private int _x;
  private int _y;
  private int _xspeed;
  private int _yspeed;
  private int _size;
  private color _inside;

  public Ball(int x, int y, int xs, int ys, int cs, color c) {
    _x = x;
    _y = y;
    _xspeed = xs;
    _yspeed = ys;
    _size = cs;
    _inside = 255;
  }//Ball

  public Ball(int maxX, int maxY) {
    _size = (int)random(10, 100);
    _xspeed = _yspeed = 1;
    if (random(2) >= 1) {
      _xspeed*= -1;
    }
    if (random(2) >= 1) {
      _yspeed*= -1;
    }

    _x = (int)random(_size/2, maxX - _size/2);
    _y = (int)random(_size/2, maxY - _size/2);

    //inside = color(random(255), random(255), random(255));
    _inside = 255;
  }

  public void setInside(color inside) {
    _inside = inside;
  }

  public boolean isSelected(int x, int y) {
    float d = dist(x, y, this._x, this._y);
    return d <= _size/2;
  }

  public boolean collisionCheck(Ball other) {
    float d = dist(this._x, this._y, other._x, other._y);
    return d <= (this._size/2 + other._size/2);
  }

  public void display() {
    fill(_inside);
    circle(_x, _y, _size);
  }//display

  private boolean hitHorizonatalWall(int left, int right) {
    return _x >= right - _size/2 || _x <= left + _size/2;
  }
  private boolean hitVerticalWall(int top, int bottom) {
    return _y >= bottom - _size/2 || _y <= top + _size / 2;
  }

  public void move(int left, int right, int top, int bottom) {
    if (hitHorizonatalWall(left, right)) {
      _xspeed*= -1;
      if (_xspeed < 0) {
        _xspeed--;
      }
      else {
        _xspeed++;
      }
    }
    if (hitVerticalWall(top, bottom)) {
      _yspeed*= -1;
      if (_yspeed < 0) {
        _yspeed--;
      }
      else {
        _yspeed++;
      }
    }
    _x+= _xspeed;
    _y+= _yspeed;
  }//move


}//ball class
