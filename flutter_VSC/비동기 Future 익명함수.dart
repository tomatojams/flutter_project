import 'dart:async';

void main() {
  addNumbers(1, 1);
}

void addNumbers(int number1, int number2) {
  print('$number1 + $number2 계산시작');

  FutureOr<dynamic> Function()? sum = () {
    print('$number1 + $number2 = ${number1 + number2}');
  }; // 익명함수 활용

  Future.delayed(Duration(seconds: 3), sum); // future delayed

  //Future.delayed(Duration(seconds: 3), () {
  //  print('$number1 + $number2 = ${number1 + number2}');});을 나눠서 표현

  // (){} 은 익명함수 스타일의 funtion
  //delayed가 첫번째 인자로  duration
  //두번째 인자로 FutureOr<dynamic> Function()?을 받으므로

  print('$number1 + $number2 계산끝');
}
