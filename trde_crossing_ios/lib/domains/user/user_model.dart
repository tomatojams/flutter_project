import 'package:dart_mappable/dart_mappable.dart';

part 'user_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserModel with UserModelMappable {
  UserModel({
    required this.id,
    required this.username,
    required this.islandName,
    this.profilePic,
    this.islandCode,
    required this.introduction,
  });

  final String id;
  final String username;
  final String islandName;
  final String? profilePic;
  final String? islandCode;
  final String introduction;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModelMapper.fromJson(json);
}
