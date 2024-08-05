import 'package:dart_mappable/dart_mappable.dart';

part 'token.model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class Token with TokenMappable {
  final String accessToken;
  final String refreshToken;

  Token({required this.accessToken, required this.refreshToken});

  factory Token.fromJson(Map<String, dynamic> json) => TokenMapper.fromJson(json);
}
