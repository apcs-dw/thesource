public class ListArray {

  private Ball[] data;
  private int size;

  private int ARR_SIZE = 100;


  public ListArray() {
    data = new Ball[ARR_SIZE];
    size = 0;
  }//constructor

  public int getSize() {
    return size;
  }

  public Ball get(int i) {
    if (i < 0 || i >= size) {
      return null;
    }
    return data[i];
  }//get


  public void add(Ball p) {
    if (size == data.length) {
      grow();
    }
    data[size] = p;
    size++;
  }//add

  private void grow() {
    Ball[] newData = new Ball[size + ARR_SIZE];
    for (int i = 0; i < size; i++) {
      newData[i] = data[i];
    }
    data = newData;
  }

}//ListArray
