class Counter {
  static int i = 0;

  Counter() {
    i++;
    print(i);
  }
}

void main() {
  Counter count1 = Counter();
  Counter count2 = Counter();
  Counter count3 = Counter();
}
