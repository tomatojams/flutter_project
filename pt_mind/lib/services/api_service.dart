
import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiService {
  Future<String> getChat() async {
    const String baseUrl = "http://10.0.2.2:8000";
    const String chatpt = "chat/pt";
    var url = Uri.parse('$baseUrl/$chatpt'); // parse는 새로운  uri 객체를 만듬

    var response = await http.get(url);

    if (response.statusCode == 200) {
      final chatString = utf8.decode(response.bodyBytes);
      // 한글이 깨지지 않게 하기 위해 utf8.decode를 사용
      return chatString;
    } else {
      throw Error();
    }
  }

}
