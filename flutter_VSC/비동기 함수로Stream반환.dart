import 'dart:async';
import 'dart:math';

Stream<String> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield 'i =$i';
    await Future.delayed(Duration(seconds: 1));
  }
}

void playStream() {
  calculate(1).listen((event) {
    print(event);
  });
}

void main() {
  playStream();
}
