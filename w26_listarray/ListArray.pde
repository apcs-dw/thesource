public class ListArray {

  private PVector[] data;
  private int size;

  private int ARR_SIZE = 100;


  public ListArray() {
    data = new PVector[ARR_SIZE];
    size = 0;
  }//constructor

  public int getSize() {
    return size;
  }

  public PVector get(int i) {
    if (i < 0 || i >= size) {
      return null;
    }
    return data[i];
  }//get

  public void add(PVector p) {
    if (size == data.length) {
      grow();
    }
    data[size] = p;
    size++;
  }//add

  private void grow() {
    PVector[] newData = new PVector[size + ARR_SIZE];
    for (int i = 0; i < size; i++) {
      newData[i] = data[i];
    }
    data = newData;
  }

}//ListArray
