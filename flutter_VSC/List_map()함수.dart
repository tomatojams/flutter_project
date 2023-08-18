void main() {
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  final newBlackPink = blackPinkList.map(
    (element) => '블랙핑크 $element',
  );
  print(newBlackPink);
}
