import 'dart:convert';

void utf8Sample1() {
  // 주어진 문자열
  String input = '[237, 149, 156, 234, 184, 128]';

  // 문자열에서 대괄호 제거 후, 쉼표로 분리
  String cleanedInput = input.substring(1, input.length - 1);
  List<String> strList = cleanedInput.split(',');

  // 문자열 리스트를 정수 리스트로 변환
  List<int> intList = strList.map((str) => int.parse(str.trim())).toList();

  // 정수 리스트를 UTF-8 바이트 배열로 변환하여 문자열로 디코딩
  String decodedString = utf8.decode(intList);

  // 결과 출력
  print(decodedString); // 한글
}

String utf8Sample(String sample) {
  // 주어진 문자열
  // String input = '[237, 149, 156, 234, 184, 128]';

  // 문자열에서 대괄호 제거 후, 쉼표로 분리
  String cleanedInput = sample.substring(1, sample.length - 1);
  List<String> strList = cleanedInput.split(',');

  // 문자열 리스트를 정수 리스트로 변환
  List<int> intList = strList.map((str) => int.parse(str.trim())).toList();

  // 정수 리스트를 UTF-8 바이트 배열로 변환하여 문자열로 디코딩
  String decodedString = utf8.decode(intList);

  // 결과 출력
  return decodedString; // 한글
}
