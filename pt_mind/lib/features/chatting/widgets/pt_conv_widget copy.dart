import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PTconv extends StatefulWidget {
  final String conv;
  const PTconv({
    super.key,
    required this.conv,
  });

  @override
  State<PTconv> createState() => _PTconvState();
}

class _PTconvState extends State<PTconv> {
  // 사진출력 함수
  List<String>? findProfile(String conv) {
    List<Map<String, String?>> findProfile = [
      {"[m20240103]": "assets/profile/Namisun-profile.png"},
      {"[m20240104]": "assets/profile/Parkjinju-profile.png"},
      {"[m20240105]": "assets/profile/Damin-profile.png"},
    ];

    String reConv = conv;
    String? foundProfile;

    // Iterating through the list of maps
    for (Map<String, String?> map in findProfile) {
      map.forEach((key, value) {
        // Check if the key exists in the conv string
        if (conv.contains(key)) {
          // Add the value to foundProfiles list
          foundProfile = value;
          // Remove the key from conv string
          reConv = conv.replaceAll(key, '');
        }
      });
    }

    if (foundProfile != null) {
      return [reConv, foundProfile!];
    }
    return null; // 찾지못하면 null
  }

  bool addFavorite = false;
  void _addFavorite() {
    setState(() {
      addFavorite = !addFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 대화, 프로파일 초기화
    String reConv = widget.conv;
    String? foundProfile;
    // 두개를 반환
    final List<String>? convP = findProfile(widget.conv);
    if (convP != null) {
      reConv = convP[0];
      foundProfile = convP[1];
    }
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/profile/PT-profile-chat.svg',
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ConstrainedBox(
                  // 동적 조정하는 바로 위에 지정해야만 함
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Column(
                    children: [
                      Text(
                        reConv, // 텍스트 출력
                        style: TextStyle(
                          color: Theme.of(context).indicatorColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (foundProfile != null) // 프로파일이 있으면 이미지 출력
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15.0,
                            bottom: 5.0,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                foundProfile, //
                                width: 90, // 이미지 너비 조정
                                height: 90, // 이미지 높이 조정
                              ),
                              CupertinoButton(
                                onPressed: () {
                                  _addFavorite();
                                },
                                child: addFavorite
                                    ? SvgPicture.asset(
                                        'assets/icon/heart2.svg',
                                        width: 20,
                                      )
                                    : SvgPicture.asset(
                                        'assets/icon/heart1.svg',
                                        width: 20,
                                      ),
                              ) // 상담사와 대화하기 버튼
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
