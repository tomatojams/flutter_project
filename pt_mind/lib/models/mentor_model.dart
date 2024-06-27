class MentorModel {
  final String id;
  final String gender;
  final String name;
  final String titleName;
  final String slogan;
  final String license;
  final String career;
  final String profile;

  MentorModel({
    required this.id,
    required this.gender,
    required this.profile,
    required this.titleName,
    required this.name,
    required this.slogan,
    required this.license,
    required this.career,
  });

  // Factory 모델을 사용하여 인터넷에서 항상 직접 읽어오지 않고 캐싱을 사용할 수 있음

  // Factory method to create a MentorModel from JSON data
  factory MentorModel.fromJson(Map<String, dynamic> json) {
    return MentorModel(
      id: json['id'],
      gender: json['gender'],
      profile: json['profile'],
      titleName: json['titleName'],
      name: json['name'],
      slogan: json['slogan'],
      license: json['license'],
      career: json['career'],
    );
  }
}
