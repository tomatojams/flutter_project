typedef Operation = void Function(int x, int y);

void add(int x, int y) {
  print('결과값:${x + y}');
}

void subtract(int x, int y) {
  print('결과값:${x - y}');
}

void main() {
  Operation oper = add;
  oper(1, 2);

  oper = subtract;
  oper(1, 3);
}
