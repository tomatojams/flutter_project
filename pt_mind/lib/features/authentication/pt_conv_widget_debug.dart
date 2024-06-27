import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/constants/gaps.dart';
import 'package:pt_mind/models/mentor_model.dart';

import '../chatting/http/provider/chat_mentor_provider.dart';
// ConvProvider import 추가

class PTconv extends StatelessWidget {
  final String conv;

  const PTconv({
    super.key,
    required this.conv,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatMentorProvider(), // ConvProvider 제공
      child: Consumer<ChatMentorProvider>(
        builder: (context, provider, _) {
          List<String> idAndConv = provider.findId(conv);
          String reConv = idAndConv[1];
          String mentorId = idAndConv[0];

          return Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                              reConv,
                              style: TextStyle(
                                color: Theme.of(context).indicatorColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            if (mentorId != 'none') // 멘토 ID가 있는 경우
                              FutureBuilder<MentorModel>(
                                future: provider.getMentor(mentorId),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const CircularProgressIndicator();
                                  } else if (snapshot.hasError) {
                                    return Text('Error: ${snapshot.error}');
                                  } else if (!snapshot.hasData) {
                                    return const SizedBox();
                                  } else {
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
                                                Gaps.h12,
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                mentor
                                                                    .titleName,
                                                                style:
                                                                    TextStyle(
                                                                  color: Theme.of(
                                                                          context)
                                                                      .focusColor,
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                              Gaps.h4,
                                                              Text(
                                                                mentor.name,
                                                                style:
                                                                    TextStyle(
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
                                                        mentor.slogan,
                                                        style: TextStyle(
                                                          color: Theme.of(
                                                                  context)
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
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 2,
                                                        horizontal: 6),
                                                    child: Text(
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
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 2,
                                                        horizontal: 6),
                                                    child: Text(
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
        },
      ),
    );
  }
}

class FavoriteToggleWidget extends StatelessWidget {
  const FavoriteToggleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatMentorProvider>(builder: (context, provider, _) {
      return GestureDetector(
        onTap: () {
          provider.toggleFavorite();
        },
        child: Container(
          child: provider.isFavorite // 즐겨찾기 여부에 따라 아이콘 변경
              ? SvgPicture.asset(
                  'assets/icon/heart2.svg',
                  width: 18,
                )
              : SvgPicture.asset(
                  'assets/icon/heart1.svg',
                  width: 18,
                ),
        ),
      );
    });
  }
}
