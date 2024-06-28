import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/constants/gaps.dart';
import 'package:pt_mind/models/mentor_model.dart';

import '../../utility/mentor_popup_dialog.dart';
import '../../provider/PT_chat_provider.dart';
import '../../utility/favorite_toggle_widget.dart';
// ConvProvider import 추가

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
  void showMentorPopup(context) async {
    // 비동기가 멈추게 하기위해 await 사용
    await popupDialog(context); // 팝업이 닫힐때까지 비동기가 멈추고
    widget.focusNode.unfocus(); // 닫히고나서 실행하게 됨
    // 다만 원래랑 다르게 팝업이 닫히고나서 리프레쉬가 생김

    // 팝업이 닫히고나서 리프레쉬가 생기지 않게 하기위해 이벤트 전달이 안되는게 가장 최선임
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AiChatProvider>(
      builder: (context, provider, _) {
        List<String> idAndConv =
            provider.findId(widget.conv); // provider에서 id와 대화내용 필터링해서
        String reConv = idAndConv[1];
        String mentorId = idAndConv[0];

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
                          if (provider.isCashed(mentorId) == true &&
                              mentorId != 'none')
                            Container(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                          provider.mentorWithID.profile,
                                          width: 50,
                                          height: 50,
                                        ),
                                        Gaps.h12, // 대화창과의 간격
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        //별칭
                                                        provider.mentorWithID
                                                            .titleName,
                                                        style: TextStyle(
                                                          color:
                                                              Theme.of(context)
                                                                  .focusColor,
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Gaps.h4,
                                                      Text(
                                                        //이름
                                                        provider
                                                            .mentorWithID.name,
                                                        style: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .indicatorColor,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const FavoriteToggleWidget()
                                                ],
                                              ),
                                              Gaps.v5,
                                              Text(
                                                // 슬로건
                                                provider.mentorWithID.slogan,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .indicatorColor,
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
                                              color:
                                                  Theme.of(context).hintColor,
                                            ),
                                            color: const Color(0xFFFCFBFE),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 6),
                                            child: Text(
                                              // 자격증
                                              provider.mentorWithID.license,
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                color: Theme.of(context)
                                                    .primaryColorDark,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Gaps.h4,
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  Theme.of(context).hintColor,
                                            ),
                                            color: const Color(0xFFFCFBFE),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 6),
                                            child: Text(
                                              // 경력
                                              provider.mentorWithID.career,
                                              style: TextStyle(
                                                fontSize: 13.0,
                                                color: Theme.of(context)
                                                    .primaryColorDark,
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
                                            onTap: () {
                                              // popupDialog(context);
                                              // showPopup(context);// 팝업창 띄우기
                                              showMentorPopup(context);
                                            },
                                            child: const Text('더보기>')),
                                        Gaps.h10,
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          else if (mentorId !=
                              'none') // 멘토 ID가 있는 경우 추천받았으나 캐싱은 안된경우

                            // 추천창 생성
                            FutureBuilder<MentorModel>(
                              future: provider.getMentor(mentorId),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  //조건부 실행일때 waiting 조건은 넣어야함.
                                  return const CircularProgressIndicator(
                                    color: Colors.transparent,
                                  );
                                } // 로딩시간 단축 불필요한 조건 주석처리
                                // else if (snapshot.hasError) {
                                //   return Text('Error: ${snapshot.error}');
                                // } else if (!snapshot.hasData) {
                                //   return const SizedBox();
                                // }
                                else {
                                  // 멘토 모델 가져옴
                                  MentorModel mentor = snapshot.data!;
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                mentor.profile,
                                                width: 50,
                                                height: 50,
                                              ),
                                              Gaps.h12, // 대화창과의 간격
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              //별칭
                                                              mentor.titleName,
                                                              style: TextStyle(
                                                                color: Theme.of(
                                                                        context)
                                                                    .focusColor,
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            Gaps.h4,
                                                            Text(
                                                              //이름
                                                              mentor.name,
                                                              style: TextStyle(
                                                                color: Theme.of(
                                                                        context)
                                                                    .indicatorColor,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const FavoriteToggleWidget()
                                                      ],
                                                    ),
                                                    Gaps.v5,
                                                    Text(
                                                      // 슬로건
                                                      mentor.slogan,
                                                      style: TextStyle(
                                                        color: Theme.of(context)
                                                            .indicatorColor,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Theme.of(context)
                                                        .hintColor,
                                                  ),
                                                  color:
                                                      const Color(0xFFFCFBFE),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 2,
                                                      horizontal: 6),
                                                  child: Text(
                                                    // 자격증
                                                    mentor.license,
                                                    style: TextStyle(
                                                      fontSize: 13.0,
                                                      color: Theme.of(context)
                                                          .primaryColorDark,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Gaps.h4,
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Theme.of(context)
                                                        .hintColor,
                                                  ),
                                                  color:
                                                      const Color(0xFFFCFBFE),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 2,
                                                      horizontal: 6),
                                                  child: Text(
                                                    // 경력
                                                    mentor.career,
                                                    style: TextStyle(
                                                      fontSize: 13.0,
                                                      color: Theme.of(context)
                                                          .primaryColorDark,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Gaps.h10,
                                            ],
                                          ),
                                          Gaps.v15,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    // showPopup(context);// 팝업창 띄우기
                                                    showMentorPopup(context);
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
