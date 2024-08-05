// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_mappable/dart_mappable.dart';

part 'login_response.mapper.dart';

@MappableClass(
  caseStyle: CaseStyle.snakeCase,
)
class LoginResponse with LoginResponseMappable {
  final bool registered;
  final String? profilePic;
  final String accessToken;
  final String refreshToken;

  LoginResponse({
    required this.registered,
    this.profilePic,
    required this.accessToken,
    required this.refreshToken,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponseMapper.fromJson(json);
}
