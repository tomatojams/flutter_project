void main() {
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  final newBlackPink = blackPinkList.map(
    (element) => '블랙핑크 $element',
  );
  print(newBlackPink);

  final allMembders = blackPinkList
      .reduce((value, element) => value + '+' + element); // 반환값 + 새로운 매개변수
  print(allMembders);
}
