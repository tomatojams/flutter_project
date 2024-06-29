import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/constants/gaps.dart';
import 'package:pt_mind/models/mentor_model.dart';

import '../../provider/PT_chat_provider.dart';
import 'mentor_from_api.dart';
import 'mentor_from_cache.dart';

// PT 대화창 위젯
// 1. 대화필터링
// 2. ID 추출
// 3. 캐싱여부 확인 해서 캐싱된 경우 추천창 생성
// 4. 캐싱 안된 경우 API에서 멘토 정보 가져와서 추천창 생성

class PTconv extends StatefulWidget {
  final String conv;
  final FocusNode focusNode;

  // stateless로 바꾸고 provider로 데이타 이동했음
  const PTconv({
    super.key,
    required this.conv,
    required this.focusNode,
  });

  @override
  State<PTconv> createState() => _PTconvState();
}

class _PTconvState extends State<PTconv> {
  // void showMentorPopup(context) async {
  //   // 비동기가 멈추게 하기위해 await 사용
  //   await popupDialog(context); // 팝업이 닫힐때까지 비동기가 멈추고
  //   widget.focusNode.unfocus(); // 닫히고나서 실행하게 됨
  //   // 다만 원래랑 다르게 팝업이 닫히고나서 리프레쉬가 생김

  //   // 팝업이 닫히고나서 리프레쉬가 생기지 않게 하기위해 이벤트 전달이 안되는게 가장 최선임
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<AiChatProvider>(
      builder: (context, provider, _) {
        List<String> idAndConv = // provider에서 id와 대화내용 필터링
            provider.findId(widget.conv);
        String reConv = idAndConv[1]; // 필터링된 대화내용
        String mentorId = idAndConv[0]; // 멘토 ID

        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/profile/PT-profile-chat.svg', // 인공지능 대화 아이콘
                ),
                Gaps.h12,
                Container(
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.66,
                      ),
                      child: Column(
                        children: [
                          Text(
                            // 대화내용 필터링 된것이 출력
                            reConv,
                            style: TextStyle(
                              color: Theme.of(context).indicatorColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (provider.isCached(mentorId) == true &&
                              mentorId != 'none')
                            ReccMentorFromCache( // 캐싱된 경우 추천창 생성
                                mentorId: mentorId,
                                widget: widget,
                                provider: provider)
                          else if (mentorId !=
                              'none') // 멘토 ID가 있는 경우 추천받았으나 캐싱은 안된경우
                            FutureBuilder<MentorModel>(
                              future: provider.getMentor(mentorId),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  //조건부 실행일때 waiting 조건은 넣어야함.
                                  return const CircularProgressIndicator(
                                    color: Colors.transparent,
                                  );
                                } // 로딩시간 단축 불필요한 조건 아래는 주석처리 해도 됨
                                else if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                } else if (!snapshot.hasData) {
                                  return const SizedBox();
                                }
                                else {
                                  // 멘토 모델 가져옴
                                  MentorModel mentor = snapshot.data!;
                                  return ReccMentorFromAPI( // API에서 가져온 멘토 정보로 추천창 생성
                                      mentor: mentor,
                                      mentorId: mentorId,
                                      widget: widget);
                                }
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        );
      },
    );
  }
}
