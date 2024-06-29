import 'package:flutter/material.dart';
import 'package:pt_mind/constants/gaps.dart';
import 'package:pt_mind/features/chatting/widgets/PTconv_widget.dart';
import 'package:pt_mind/features/provider/PT_chat_provider.dart';
import 'package:pt_mind/features/utility/favorite_toggle_widget.dart';
import 'package:pt_mind/features/utility/mentor_popup_dialog.dart';

class ReccMentorFromCache extends StatelessWidget {
  const ReccMentorFromCache({
    super.key,
    required this.mentorId,
    required this.widget,
    required this.provider,
  });
  final AiChatProvider provider;
  final String mentorId;
  final PTconv widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      // 캐싱된 경우 추천창 생성
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 0.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFCFBFE),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  provider.mentorWithID.profile,
                  width: 50,
                  height: 50,
                ),
                Gaps.h12, // 대화창과의 간격
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                //별칭
                                provider.mentorWithID.titleName,
                                style: TextStyle(
                                  color: Theme.of(context).focusColor,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Gaps.h4,
                              Text(
                                //이름
                                provider.mentorWithID.name,
                                style: TextStyle(
                                  color: Theme.of(context).indicatorColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          FavoriteToggleWidget(
                            // 즐겨찾기 위젯
                            mentorId: mentorId,
                          )
                        ],
                      ),
                      Gaps.v5,
                      Text(
                        // 슬로건
                        provider.mentorWithID.slogan,
                        style: TextStyle(
                          color: Theme.of(context).indicatorColor,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Gaps.v12,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).hintColor,
                    ),
                    color: const Color(0xFFFCFBFE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    child: Text(
                      // 자격증
                      provider.mentorWithID.license,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),
                  ),
                ),
                Gaps.h4,
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).hintColor,
                    ),
                    color: const Color(0xFFFCFBFE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    child: Text(
                      // 경력
                      provider.mentorWithID.career,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),
                  ),
                ),
                Gaps.h10,
              ],
            ),
            Gaps.v15,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () async {
                      // 비동기가 멈추게 하기위해 await 사용
                      await popupDialog(context); // 팝업이 닫힐때까지 비동기가 멈추고
                      widget.focusNode.unfocus(); // 닫히고나서 실행하게 됨
                      // 다만 원래랑 다르게 팝업이 닫히고나서 리프레쉬가 생김
                      // 팝업이 닫히고나서 리프레쉬가 생기지 않게 하기위해 이벤트 전달이 안되는게 가장 최선임
                    },
                    child: const Text('더보기>')),
                Gaps.h10,
              ],
            )
          ],
        ),
      ),
    );
  }
}
