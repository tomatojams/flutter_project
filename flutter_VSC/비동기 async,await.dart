Future<void> addNumbers(int number1, int number2) async {
  print('$number1 + $number2 계산시작');

  await Future.delayed(Duration(seconds: 3), () {
    print('$number1 + $number2 = ${number1 + number2}');
  });

  print('$number1 + $number2 코드실행끝');
}

void main() {
  addNumbers(1, 2);
  addNumbers(3, 4);
}
