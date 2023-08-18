import 'dart:async';

void main() {
  final controller = StreamController();

  final stream = controller.stream.asBroadcastStream();

  final streamLinstener1 = stream.listen((event) {
    print('listening 1');
    print(event);
  });

  final streamLinstener2 = stream.listen((event) {
    print('listening 2');
    print(event);
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
}
