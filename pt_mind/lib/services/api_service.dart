import 'package:http/http.dart' as http;
import 'package:pt_mind/models/chat_model.dart';
import 'dart:convert';

class ApiService {
  static const String baseUrl = "http://10.0.2.2:8000";
  static const String chatpt = "chat/pt";
  static const String chatptAll = "chat/pt/";
  static const String chatptPost = "chat/user/";

  static Future<String> getChat() async {
    final url = Uri.parse('$baseUrl/$chatpt'); // parse는 새로운  uri 객체를 만듬

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final chatString = utf8.decode(response.bodyBytes);
      // Use utf8.decode() to decode UTF8-encoded bytes to a Dart string:
      // utf8을 사용하여 UTF8로 인코딩된 바이트를 Dart 문자열로 디코딩합니다.
      //jsonDecode(utf8.decode(response.bodyBytes));
      return chatString;
    } else {
      throw Error();
    }
  }

  static Future<String> getChatAll() async {
    ChatModel chatModel;
    final url = Uri.parse('$baseUrl/$chatptAll'); // parse는 새로운  uri 객체를 만듬
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final chatObject = jsonDecode(utf8.decode(response.bodyBytes));
      chatModel = ChatModel.fromJson(chatObject);
      return chatModel.outText;
    } else {
      throw Error();
    }
  }

  static Future<String> postChat(userID, userAnswer) async {
    Map data = {'user_id': userID, 'user_answer': userAnswer};
    ChatModel chatModel;
    final body = json.encode(data);
    final url = Uri.parse('$baseUrl/$chatptPost'); // parse는 새로운  uri 객체를 만듬
    final response = await http
        .post(url, body: body, headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      final chatObject = jsonDecode(utf8.decode(response.bodyBytes));
      chatModel = ChatModel.fromJson(chatObject);
      return chatModel.outText;
    } else {
      throw Error();
    }
  }
}
