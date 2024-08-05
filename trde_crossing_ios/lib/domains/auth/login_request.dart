// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_mappable/dart_mappable.dart';

part 'login_request.mapper.dart';

@MappableEnum()
enum OAuthProvider { kakao, google, apple }

@MappableClass(caseStyle: CaseStyle.snakeCase)
class LoginRequest with LoginRequestMappable {
  final String email;
  final String providerId;
  final String? profileUrl;
  final OAuthProvider provider;

  LoginRequest({
    this.profileUrl,
    required this.email,
    required this.providerId,
    required this.provider,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequestMapper.fromJson(json);
}
