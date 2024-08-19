import 'package:http/http.dart' as http;
import 'package:pt_mind/models/chat_model.dart';
import 'package:pt_mind/models/chat_lobby_model.dart';
import 'package:pt_mind/models/mentor_model.dart';
import 'package:pt_mind/models/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert';

import '../models/ramdom_chat_room.dart';
import 'dart:io';

class ApiService {
  // static const String baseUrl = "http://10.0.2.2:8000";
  // static const String baseUrl = "http://127.0.0.1:8000";
  static const String chatpt = "aichat/pt";
  static const String chatptAll = "aichat/pt/";
  static const String chatptPost = "aichat/user/";
  static const String chatptRoom = "chatroom/";
  static const String randomChatRoom = "chatroom/random";
  static const String mentor = "mentor";

  static String getBaseUrl() {
    if (Platform.isAndroid) {
      return 'http://10.0.2.2:8000'; // 안드로이드 에뮬레이터
    } else if (Platform.isWindows) {
      return 'http://127.0.0.1:8000'; // 윈도우 앱
    } else {
      return 'http://127.0.0.1:8000'; // 기본값
    }
  }

  static String removeQuotesAndBackslashes(String input) {
    // \"와 \ 그리고 AI:제거합니다.
    return input.replaceAll(RegExp(r'(\\n|\"|AI:)'), '');
    // return input.replaceAll(RegExp(r'[\\"]'), '');
  }

  static Future<String> getSingleChat() async {
    final baseUrl = getBaseUrl();
    final url = Uri.parse('$baseUrl/$chatpt'); // parse는 새로운  uri 객체를 만듬

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final chatString = utf8.decode(response.bodyBytes);
      // Use utf8.decode() to decode UTF8-encoded bytes to a Dart string:
      // utf8을 사용하여 UTF8로 인코딩된 바이트를 Dart 문자열로 디코딩합니다.
      //jsonDecode(utf8.decode(response.bodyBytes));
      return removeQuotesAndBackslashes(chatString);
    } else {
      throw Error();
    }
  }

  static Future<String> getEmotion() async {
    final baseUrl = getBaseUrl();
    final url = Uri.parse('$baseUrl/$chatpt');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final chatString = utf8.decode(response.bodyBytes);

      return chatString;
    } else {
      throw Error();
    }
  }

  static Future<ChatModel> getChatAll() async {
    final baseUrl = getBaseUrl();
    ChatModel chatModel;
    final url = Uri.parse('$baseUrl/$chatptAll');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final chatObject = jsonDecode(utf8.decode(response.bodyBytes));
      chatModel = ChatModel.fromJson(chatObject);
      return chatModel;
    } else {
      throw Error();
    }
  }

  static Future<MentorModel> getMentor(mentorId) async {
    final baseUrl = getBaseUrl();
    MentorModel mentorModel;
    final url = Uri.parse('$baseUrl/$mentor/$mentorId');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final mentorObject = jsonDecode(utf8.decode(response.bodyBytes));
      mentorModel = MentorModel.fromJson(mentorObject);
      // print(mentorModel.profile);
      return mentorModel;
    } else {
      throw Error();
    }
  }

  // static Future<MentorModel> getMentorDebug(mentorId) async {
  //   MentorModel mentorModel;
  //   final url =
  //       Uri.parse('$baseUrl/$mentor/m20240104');
  //   final response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     final mentorObject = jsonDecode(utf8.decode(response.bodyBytes));
  //     mentorModel = MentorModel.fromJson(mentorObject);
  //     // print(mentorModel.profile);
  //     return mentorModel;
  //   } else {
  //     throw Error();
  //   }
  // }

  static Future<List<ChatLobbyModel>> getChatRoomList() async {
    final baseUrl = getBaseUrl();
    List<ChatLobbyModel> chatRoomLists = [];
    final url = Uri.parse('$baseUrl/$chatptRoom');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> chatRooms =
          jsonDecode(utf8.decode(response.bodyBytes));
      // print(chatRooms);
      // final List<dynamic> chatRooms = // json은 List<dynamci>형으로 구성된다.
      //     jsonDecode(response.body);
      //json은 List<dynamci>형으로 구성된다.
      for (var chatRoom in chatRooms) {
        chatRoomLists.add(ChatLobbyModel.fromJson(chatRoom));
        // print(chatRoomLists);
      }

      return chatRoomLists;
    } else {
      throw Error();
    }
  }

  static Future<RandomChatRoom> getRandomChatRoom() async {
    final baseUrl = getBaseUrl();
    final url = Uri.parse('$baseUrl/$randomChatRoom');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final dynamic chatRooms = jsonDecode(utf8.decode(response.bodyBytes));
      // print(chatRooms);
      return RandomChatRoom.fromJson(chatRooms);
    } else {
      throw Error();
    }
  }

  static Future<String> postChat(userID, userAnswer) async {
    final baseUrl = getBaseUrl();
    Map data = {'user_id': userID, 'user_answer': userAnswer};
    ChatModel chatModel;
    final body = json.encode(data);
    final url = Uri.parse('$baseUrl/$chatptPost');
    final response = await http
        .post(url, body: body, headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      final chatObject = jsonDecode(utf8.decode(response.bodyBytes));
      chatModel = ChatModel.fromJson(chatObject);
      return removeQuotesAndBackslashes(chatModel.outText);
    } else {
      throw Error();
    }
  }

// 로그인 API needs test

  static Future<bool> logIn(String email, String password) async {
    final baseUrl = getBaseUrl();

    // CSRF 토큰을 가져옵니다.
    final csrfResponse = await http.get(Uri.parse('$baseUrl/user/init'));
    if (csrfResponse.statusCode != 200) {
      throw Exception('Failed to fetch CSRF token');
    }
    final csrfToken = jsonDecode(csrfResponse.body)['csrf_token'];

    // 로그인 요청을 보냅니다.
    final url = Uri.parse('$baseUrl/user/login');
    final response = await http.post(
      url,
      body: {'username': email, 'password': password},
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
        "X-CSRF-Token": csrfToken
      },
    );

    // 받을 때는 json
    if (response.statusCode == 200) {
      final tokenObject = jsonDecode(utf8.decode(response.bodyBytes));
      final tokenModel = TokenModel.fromJson(tokenObject);

      // 토큰 저장
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', tokenModel.accessToken);
      await prefs.setString('email', tokenModel.email);

      return true;
    } else {
      throw Exception('Failed to log in');
    }
  }
}

// 토큰 읽기 예시
Future<String?> getAccessToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('access_token');
}

// 예시 API 호출에 토큰 사용
Future<void> makeAuthenticatedRequest() async {
  final token = await getAccessToken();
  if (token != null) {
    await http
        .get(Uri.parse('https://example.com/protected-endpoint'), headers: {
      'Authorization': 'Bearer $token',
    });
  } else {
    return (null);
  }
}

// 토큰 삭제
Future<void> logout() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('access_token');
  await prefs.remove('token_type');
  await prefs.remove('email');

  // 이후 로그아웃 후 페이지 이동 또는 상태 변경
}
