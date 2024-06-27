import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pt_mind/constants/gaps.dart';
import 'package:pt_mind/models/mentor_model.dart';

import '../../../services/api_service.dart';

class PTconv extends StatefulWidget {
  final String conv;
  const PTconv({
    super.key,
    required this.conv,
  });

  @override
  State<PTconv> createState() => _UserConvState();
}

class _UserConvState extends State<PTconv> {
  bool addFavorite = false;
  void _addFavorite() {
    setState(() {
      addFavorite = !addFavorite;
    });
  }

// 두단계로 나눠야 함
// 1 ID를 찾으면서 conv를 필터링해서 전달
// 2 ID가 있는 경우 http로 mentor 정보를 가져옴

// ID를 찾아서 conv를 필터링하는 함수
  List<String> findId(String conv) {
    List<String> findId = ["m20240103", "m20240104", "m20240105"];
    String reConv = conv;

    // Iterating through the list of IDs
    for (String id in findId) {
      String pattern = '\\[$id\\]';
      if (conv.contains(RegExp(pattern))) {
        reConv = conv.replaceAll(RegExp(pattern), '');
        // print("\\[$id\\]");
        return [id, reConv];
      }
    }
    return ['none', reConv];
  }

// http로 mentor 정보를 가져오는 함수
  Future<MentorModel> getMentor(String id) async {
    MentorModel mentor = await ApiService.getMentor(id);
    return mentor;
  }

  @override
  Widget build(BuildContext context) {
    String reConv = widget.conv;
    String mentorId = 'none';

    List<String> idAndConv = findId(widget.conv);
    Future<MentorModel>? mentor; // 조건부로 받아오는 모델이라서 미리 널 지정을 해야함.
    reConv = idAndConv[1];
    if (idAndConv[0] != 'none') {
      mentorId = idAndConv[0];
      mentor = getMentor(mentorId);
    }

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/profile/PT-profile-chat.svg',
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
                  // 동적 조정하는 바로 위에 지정해야만 함
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.66,
                  ),

                  child: Column(
                    children: [
                      Text(
                        reConv,
                        style: TextStyle(
                          color: Theme.of(context).indicatorColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (mentorId != 'none') // 프로파일이 있으면 이미지 출력
                        FutureBuilder<MentorModel>(
                          // MentorModel 가져오기 추가 타입 지정
                          future: mentor,
                          builder: (context, snapshot) {
                            if (snapshot
                                    .connectionState == // 조건부로 데이타를 웹으로 읽어올때는 모든 케이스를 다루어야 함
                                ConnectionState.waiting) {
                              return Gaps.h2;
                            } else if (snapshot.hasError) {
                              return Gaps.h2;
                            } else if (!snapshot.hasData) {
                              return Gaps.h2;
                            } else {
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
                                            snapshot.data!.profile, //
                                            width: 50, // 이미지 너비 조정
                                            height: 50, // 이미지 높이 조정
                                          ),
                                          Gaps.h12,
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
                                                          snapshot.data!
                                                              .titleName, // 별칭
                                                          style: TextStyle(
                                                              color: Theme.of(
                                                                      context)
                                                                  .focusColor,
                                                              fontSize: 15.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        Gaps.h4,
                                                        Text(
                                                          snapshot.data!.name,
                                                          style: TextStyle(
                                                              color: Theme.of(
                                                                      context)
                                                                  .indicatorColor,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ],
                                                    ),
                                                    GestureDetector(
                                                      // 즐겨찾기 하트
                                                      onTap: () {
                                                        _addFavorite();
                                                      },
                                                      child: Container(
                                                        child: addFavorite
                                                            ? SvgPicture.asset(
                                                                'assets/icon/heart2.svg',
                                                                width: 18,
                                                              )
                                                            : SvgPicture.asset(
                                                                'assets/icon/heart1.svg',
                                                                width: 18,
                                                              ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Gaps.v5,
                                                Text(
                                                  snapshot.data!.slogan, // 슬로건
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .indicatorColor,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ) // 상담사와 대화하기 버튼
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
                                                color:
                                                    Theme.of(context).hintColor,
                                              ),
                                              color: const Color(0xFFFCFBFE),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 2,
                                                horizontal: 6,
                                              ),
                                              child: Text(
                                                  snapshot
                                                      .data!.license, // 멘토 라이센스
                                                  style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                  )),
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 2,
                                                horizontal: 6,
                                              ),
                                              child: Text(
                                                  snapshot
                                                      .data!.career, // 멘토 경력
                                                  style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Theme.of(context)
                                                        .primaryColorDark,
                                                  )),
                                            ),
                                          ),
                                          Gaps.h10,
                                        ],
                                      ),
                                      Gaps.v15,
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text('더보기>'),
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
  }
}
