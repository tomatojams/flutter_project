import 'package:dart_mappable/dart_mappable.dart';

part 'signup_request.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SignUpRequest with SignUpRequestMappable {
  SignUpRequest({
    required this.introduction,
    required this.islandName,
    required this.profilePic,
    required this.username,
  });

  final String introduction;
  final String islandName;
  final String profilePic;
  final String username;
  // final DefaultProfile defaultProfile; <- 추후에 추가

  factory SignUpRequest.empty() => SignUpRequest(
        introduction: '',
        islandName: '',
        profilePic: '',
        username: '',
      );
}
