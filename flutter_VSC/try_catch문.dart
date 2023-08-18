void main() {
  try {
    final String name = "토마토";

    throw Exception('이름이 잘못됐음'); // 강제로 에러발생
    print(name); // 에러가 없으면 이문장 실행
  } catch (e) {
    print(e);
  }
}
