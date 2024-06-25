class MentorModel {
  final String id;
  final String gender;
  final String name;
  final String titleName;
  final String slogan;
  final String license;
  final String career;
  final String profile;

  MentorModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        gender = json['gender'],
        name = json['name'],
        titleName = json['titleName'],
        slogan = json['slogan'],
        license = json['license'],
        career = json['career'],
        profile = json['profile'];
}
