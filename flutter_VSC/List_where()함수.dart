void main() {
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  final newList = blackPinkList.where(
    (element) => element == '리사' || element == '지수',
  );

  print(newList);
  print(newList.toList());
}
