const String baseurl = 'https://image.tmdb.org/t/p/w500';

class NowInModel {
  final String title, poster, overview;
  final int id;
  final num vote;

  NowInModel.fromJson(
      Map<String, dynamic> json) // 하나하나의 형태가 Map형태라서 클래스의 변수로 할당
      : title = json['title'],
        poster = baseurl + json['poster_path'],
        overview = json['overview'],
        vote = json['vote_average'],
        id = json[
            'id']; // Constructor에서  초기화하면, 오브젝트가 만들때 초기화된다는 것이 보장되기때문에 late를 쓸 필요가 없다.
}
