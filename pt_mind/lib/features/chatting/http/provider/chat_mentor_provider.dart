import 'package:flutter/material.dart';
import 'package:pt_mind/models/mentor_model.dart';
import 'package:pt_mind/services/api_service.dart';

class ChatMentorProvider extends ChangeNotifier {
  bool _isFavorite = false; // 즐겨찾기 상태를 저장하는 변수
  bool get isFavorite => _isFavorite; // 즐겨찾기 상태를 반환하는 getter

  // Cache for mentor data
  final Map<String, MentorModel> _mentorCache = {}; // 캐시를 저장할 변수

  void toggleFavorite() {
    _isFavorite = !_isFavorite; // 상태를 토글합니다.
    notifyListeners(); // 변화를 듣고 있는 위젯들에게 알립니다.
  }

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
    return ['none', reConv];
  }

  Future<MentorModel> getMentor(String id) async {
    // Check if the mentor data is already cached
    if (_mentorCache.containsKey(id)) {
      return _mentorCache[id]!;
    }

    // If not, fetch the data and cache it
    MentorModel mentor = await ApiService.getMentor(id);
    _mentorCache[id] = mentor;
    return mentor;
  }
}
