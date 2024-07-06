import 'package:flutter/material.dart';
import 'package:pt_mind/models/mentor_model.dart';
import 'package:pt_mind/services/api_service.dart';
// P.T. 챗 프로바이더
class AiChatProvider extends ChangeNotifier {
  // 대화내용 저장, 아직 사용안함
  List<Map<String, String>> _chatdata = [];
  List<Map<String, String>> get chatdata => _chatdata;
  void setChatData(List<Map<String, String>> chatData) => _chatdata = chatData;

  /// 멘토정보를 캐싱변수
  final Map<String, MentorModel> _mentorCache = {}; // 캐시를 저장할 변수
  String _mentorId = 'none';
   /// 아이디가 캐시에 있는지 확인
  bool isCached(id) {
    if (_mentorCache.containsKey(id)) {
      _mentorId = id;
      return true;
    } else {
      return false;
    }
  }
 
  void toggleFavoriteID(String id) {
    _mentorCache[id]==null? true: _mentorCache[id]!.isFavorite = !_mentorCache[id]!.isFavorite;
    // _mentorCache[id]!.isFavorite = !_mentorCache[id]!.isFavorite;
    notifyListeners();
  }

  bool getFavoriteID(String id) {
    return _mentorCache[id]==null? false: _mentorCache[id]!.isFavorite;
  }


  //디버깅용 소스 서버접속 안할때 캐쉬대용으로 사용.
  final MentorModel mentorCache = MentorModel(
    id: 'm20240102',
    gender: '여성',
    name: '김지수',
    profile: 'assets/profile/Namisun-profile.png',
    titleName: '요가 강사',
    career: '5년차 요가강사',
    license: '요가지도사 2급',
    slogan: '안녕하세요. 요가 강사 김지수입니다. 요가를 통해 몸과 마음을 편안하게 만들어드립니다.',
    isFavorite: false,
  );
  MentorModel get mentorWithID => _mentorCache[_mentorId]!;

  List<String> findId(String conv) {
    // ID를 찾아 ID와 대화내용을 반환

    // 서버 접속시 주석처리!!
    _mentorCache['m20240103'] = mentorCache;

    List<String> findId = ["m20240103", "m20240104", "m20240105"];
    String reConv = conv;
    for (String id in findId) {
      String pattern = '\\[$id\\]';
      if (conv.contains(RegExp(pattern))) {
        reConv = conv.replaceAll(RegExp(pattern), '');
        //  _mentorId = id; 에러남 현재 데이타없이 멘토아이디만 있으므로 캐쉬된걸로 착각
        return [id, reConv];
      }
    }
    return ['none', reConv]; // ID가 없으면 none을 반환
  }

  // 멘토정보 받아오기 캐쉬 or API
  Future<MentorModel> getMentor(String id) async {
    // 캐쉬에서 찾음
    if (_mentorCache.containsKey(id)) {
      return _mentorCache[id]!;
    }
    // 캐쉬에 없으면 API에서 가져옴
    MentorModel mentor = await ApiService.getMentor(id);
    _mentorCache[id] = mentor;
    _mentorId = id; // 캐싱하면서 아이디를 적어야 함.
    return mentor;
  }
}

