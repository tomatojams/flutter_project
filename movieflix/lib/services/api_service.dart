import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieflix/models/coming_model.dart';
import 'package:movieflix/models/movie_model.dart';
import 'package:movieflix/models/nowin_model.dart';

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String detailUrl =
      "https://movies-api.nomadcoders.workers.dev/movie?id=";
  static const String today = "popular";
  static const String nowin = "now-playing";
  static const String coming = "coming-soon";

  static Future<List<NowInModel>> getNowIn() async {
    List<NowInModel> nowInstances = [];

    final url = Uri.parse('$baseUrl/$nowin'); // parse는 새로운  uri 객체를 만듬
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // successful
      final List<dynamic> nowin = // json은 List<dynamci>형으로 구성된다.
          jsonDecode(response.body)[
              'results']; //response.body형은 String형이므로 그걸 json형식으로 디코딩한다
      // dynamic형 리스트로 변환 그러나 dynamic 하나하나의 요소는 Map형
      for (var movie in nowin) {
        nowInstances.add(NowInModel.fromJson(
            movie)); // dynamic형 리스트를 인스턴스(클래스)형 리스트로 변환해서 접근성을 좋게 만듬
      }

      return nowInstances; // 인스턴스(클래스) 리스트형을 반환 따라서 리스트에서 검색해 클래스의 요소로 접근가능
    }
    throw Error();
  }

  static Future<List<MovieModel>> getTodaysToons() async {
    List<MovieModel> movieInstances = [];

    final url = Uri.parse('$baseUrl/$today'); // parse는 새로운  uri 객체를 만듬
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // successful
      final List<dynamic> movies = // json은 List<dynamci>형으로 구성된다.
          jsonDecode(response.body)[
              'results']; //response.body형은 String형이므로 그걸 json형식으로 디코딩한다
      // dynamic형 리스트로 변환 그러나 dynamic 하나하나의 요소는 Map형
      for (var movie in movies) {
        movieInstances.add(MovieModel.fromJson(
            movie)); // dynamic형 리스트를 인스턴스(클래스)형 리스트로 변환해서 접근성을 좋게 만듬
      }

      return movieInstances; // 인스턴스(클래스) 리스트형을 반환 따라서 리스트에서 검색해 클래스의 요소로 접근가능
    }
    throw Error();
  }

  static Future<List<ComingModel>> getComing() async {
    List<ComingModel> comingInstances = [];

    final url = Uri.parse('$baseUrl/$coming'); // parse는 새로운  uri 객체를 만듬
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // successful
      final List<dynamic> movies = // json은 List<dynamci>형으로 구성된다.
          jsonDecode(response.body)[
              'results']; //response.body형은 String형이므로 그걸 json형식으로 디코딩한다
      // dynamic형 리스트로 변환 그러나 dynamic 하나하나의 요소는 Map형
      for (var movie in movies) {
        comingInstances.add(ComingModel.fromJson(
            movie)); // dynamic형 리스트를 인스턴스(클래스)형 리스트로 변환해서 접근성을 좋게 만듬
      }

      return comingInstances; // 인스턴스(클래스) 리스트형을 반환 따라서 리스트에서 검색해 클래스의 요소로 접근가능
    }
    throw Error();
  }

  static Future<List<String>> getGenre(id) async {
    List<String> genreInstances = [];

    final url = Uri.parse(
        'https://movies-api.nomadcoders.workers.dev/movie?id=$id'); // parse는 새로운  uri 객체를 만듬
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // successful
      final List<dynamic> movies = // json은 List<dynamci>형으로 구성된다.
          jsonDecode(response.body)[
              'genres']; //response.body형은 String형이므로 그걸 json형식으로 디코딩한다
      // dynamic형 리스트로 변환 그러나 dynamic 하나하나의 요소는 Map형
      for (var movie in movies) {
        genreInstances.add(movie['name']);
      }

      return genreInstances; // 인스턴스(클래스) 리스트형을 반환 따라서 리스트에서 검색해 클래스의 요소로 접근가능
    }
    throw Error();
  }
}
