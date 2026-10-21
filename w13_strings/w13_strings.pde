void setup() {

  String p0 = makeOutWord("[[]]", "ahoy there");
  println("problem 0:\n" + p0);

  String p1 = extraEnd("Hello");
  println("\nproblem 1:\n" + p1);

  String p2 = firstTwo("Hello");
  println("\nproblem 2:\n" + p2);

  String p3 = withoutX("Hxix");
  println("\nproblem 3:\n" + p3);
}//setup


public String makeOutWord(String out, String word) {
  String n = out.substring(0, 2);
  n+= word;
  n+= out.substring(2);
  return n;
}//makeOutWord (problem 0)

public String extraEnd(String str) {
  String backend = str.substring(str.length()-2);
  return backend + backend + backend;
}//extraEnd (problem 1)

public String firstTwo(String str) {
  if (str.length() < 2) {
    return str;
  }
  else {
    return str.substring(0, 2);
  }
}//firstTwo

public String withoutX(String str) {
  int start = 0;
  int end = str.length();
  if (str.length() != 0 && str.charAt(start) == 'x') {
    start++;
  }
  if (end > 1 && str.charAt(end-1) == 'x') {
    end--;
  }
  return str.substring(start, end);
}//withoutX
