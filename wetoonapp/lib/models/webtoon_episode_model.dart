class WebtoonEpisodeModel {
  final String id, title, rating, date;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> jason)
      : id = jason["id"],
        title = jason["title"],
        rating = jason["rating"],
        date = jason["date"];
}
