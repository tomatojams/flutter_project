import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final uri = Uri.parse('$baseUrl/$today');
    final reponse = await http.get(uri);

    if (reponse.statusCode == 200) {
      final List<dynamic> webJason = jsonDecode(reponse.body);
      for (var i in webJason) {
        webtoonInstances.add(WebtoonModel.fromJson(i));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
