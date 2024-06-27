import 'package:flutter/material.dart';
import 'package:pt_mind/models/mentor_model.dart';
import 'package:pt_mind/services/api_service.dart';

class AiChatProvider extends ChangeNotifier {
  // 대화내용 저장, 아직 사용안함
  List<Map<String, String>> _chatdata = [];
  List<Map<String, String>> get chatdata => _chatdata;
  void setChatData(List<Map<String, String>> chatData) => _chatdata = chatData;

  // 모델 캐싱
  final Map<String, MentorModel> _mentorCache = {}; // 캐시를 저장할 변수

  // ID와 대화 필터링
  List<String> findId(String conv) {
    List<String> findId = ["m20240103", "m20240104", "m20240105"];
    String reConv = conv;
    for (String id in findId) {
      String pattern = '\\[$id\\]';
      if (conv.contains(RegExp(pattern))) {
        reConv = conv.replaceAll(RegExp(pattern), '');
        return [id, reConv];
      }
    }
    return ['none', reConv]; // ID가 없으면 none을 반환
  }

  // 멘토정보 가져오기
  Future<MentorModel> getMentor(String id) async {
    // 캐쉬에서 찾음
    if (_mentorCache.containsKey(id)) {
      return _mentorCache[id]!;
    }

    // 캐쉬에 없으면 API에서 가져옴
    MentorModel mentor = await ApiService.getMentor(id);
    _mentorCache[id] = mentor;
    return mentor;
  }
}

// 즐겨찾기 상태 관리
class FavoriteProvider extends ChangeNotifier {
  bool _isFavorite = false;
  bool get isFavorite => _isFavorite;
  void toggleFavorite() {
    _isFavorite = !_isFavorite; // 상태를 토글합니다.
    notifyListeners(); // 변화를 듣고 있는 위젯들에게 알립니다.
  }
}
