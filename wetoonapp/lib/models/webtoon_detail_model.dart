class WebttonDetailModel {
  final String title, about, genre, age;

  WebttonDetailModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        about = json["about"],
        genre = json["genre"],
        age = json["age"];
}
