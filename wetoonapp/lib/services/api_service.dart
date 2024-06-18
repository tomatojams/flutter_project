import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wetoonapp/models/webtoon_detail_model.dart';
import 'package:wetoonapp/models/webtoon_model.dart';
import 'package:wetoonapp/models/webtoon_episode_model.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";
  static const String episodes = "episodes";

  static Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today'); // parse는 새로운  uri 객체를 만듬
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // successful
      final List<dynamic> webtoons = // json은 List<dynamci>형으로 구성된다.
          jsonDecode(
              response.body); //response.body형은 String형이므로 그걸 json형식으로 디코딩한다
      // dynamic형 리스트로 변환 그러나 dynamic 하나하나의 요소는 Map형

      for (var webtoon in webtoons) {
        //print(webtoon);
        webtoonInstances.add(WebtoonModel.fromJson(
            webtoon)); // dynamic형 리스트를 인스턴스(클래스)형 리스트로 변환해서 접근성을 좋게 만듬
      }

      return webtoonInstances; // 인스턴스(클래스) 리스트형을 반환 따라서 리스트에서 검색해 클래스의 요소로 접근가능
    }
    throw Error();
  }

  static Future<WebttonDetailModel> getToonById(String id) async {
    final url = Uri.parse('$baseUrl/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);

      return WebttonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpisodeModel>> getLatestEpisodeById(
      String id) async {
    List<WebtoonEpisodeModel> episodesInstaces = [];
    final url = Uri.parse('$baseUrl/$id/$episodes');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        episodesInstaces.add(WebtoonEpisodeModel.fromJson(episode));
      }

      return episodesInstaces;
    }
    throw Error();
  }
}
