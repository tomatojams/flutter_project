import 'package:http/http.dart' as http;
import 'package:pt_mind/models/chat_model.dart';
import 'package:pt_mind/models/chat_lobby_model.dart';
import 'package:pt_mind/models/mentor_model.dart';
import 'dart:convert';

import '../models/ramdom_chat_room.dart';
import 'dart:io';

class ApiService {
  // static const String baseUrl = "http://10.0.2.2:8000";
  // static const String baseUrl = "http://127.0.0.1:8000";
  static const String chatpt = "chat/pt";
  static const String chatptAll = "chat/pt/";
  static const String chatptPost = "chat/user/";
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
    return input.replaceAll(RegExp(r'\\|\"|AI:'), '');
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

  // static Future<String> getChatDebug() async {
  //   final url = Uri.parse('$baseUrl/debug');
  //   final response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     final chatString = utf8.decode(response.bodyBytes);
  //     // Use utf8.decode() to decode UTF8-encoded bytes to a Dart string:
  //     // utf8을 사용하여 UTF8로 인코딩된 바이트를 Dart 문자열로 디코딩합니다.
  //     //jsonDecode(utf8.decode(response.bodyBytes));
  //     return chatString;
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
}
