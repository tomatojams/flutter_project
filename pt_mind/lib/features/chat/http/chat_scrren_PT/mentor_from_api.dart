import 'package:flutter/material.dart';
import 'package:pt_mind/constants/gaps.dart';
import 'package:pt_mind/features/chat/http/chat_scrren_PT/PTconv_widget.dart';
import 'package:pt_mind/utility/favorite_toggle_widget.dart';
import 'package:pt_mind/utility/mentor_popup_dialog.dart';
import 'package:pt_mind/models/mentor_model.dart';

class ReccMentorFromAPI extends StatelessWidget {
  const ReccMentorFromAPI({
    super.key,
    required this.mentor,
    required this.mentorId,
    required this.widget,
  });

  final MentorModel mentor;
  final String mentorId;
  final PTconv widget;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  mentor.profile,
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
                                mentor.titleName,
                                style: TextStyle(
                                  color: Theme.of(context).focusColor,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Gaps.h4,
                              Text(
                                //이름
                                mentor.name,
                                style: TextStyle(
                                  color: Theme.of(context).indicatorColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          FavoriteToggleWidget(mentorId: mentorId)
                        ],
                      ),
                      Gaps.v5,
                      Text(
                        // 슬로건
                        mentor.slogan,
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
                      mentor.license,
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
                      mentor.career,
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
