import 'dart:async';

void main() {
  final constroller = StreamController(); // Stream controller선언
  final stream = constroller.stream; // Stream 가져오기

  // Stream 에 listen 함수를 실행하면 값이 주입될때마다 콜백함수 실행
  final StreamListener1 = stream.listen((event) {
    print(event);
  });

  constroller.sink.add(1);
  constroller.sink.add(2);
  constroller.sink.add(3);
  constroller.sink.add(4);
}
