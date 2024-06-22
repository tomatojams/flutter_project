import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/features/personal/widgets/program_icon.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pt_mind/constants/gaps.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({
    super.key,
  });

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  String word = 'Not yet';

  Future<void> onPressed() async {
    const String baseUrl = "http://10.0.2.2:8000";
    const String getstate = "state";
    var url = Uri.parse('$baseUrl/$getstate'); // parse는 새로운  uri 객체를 만듬

    var response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> item = jsonDecode(response.body);
      setState(() {
        word = item['state'];
      });
    } else {
      throw Error();
    }
  }

  @override
  void initState() {
    super.initState();
    onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: SvgPicture.asset(
                'assets/personal-menu-pic.svg',
                fit: BoxFit.fitWidth,
              )),
            ],
          ),
          Gaps.v10,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgrmaIcon(
                      icon: 'assets/program/명상.png',
                      title: '명상',
                    ),
                    ProgrmaIcon(
                      icon: 'assets/program/사회성.png',
                      title: '사회성',
                    ),
                    ProgrmaIcon(
                      icon: 'assets/program/판단력.png',
                      title: '판단력',
                    ),
                    ProgrmaIcon(
                      icon: 'assets/program/자신감.png',
                      title: '자신감',
                    )
                  ],
                ),
                Gaps.v20,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgrmaIcon(
                      icon: 'assets/program/연애감정.png',
                      title: '연애감정',
                    ),
                    ProgrmaIcon(
                      icon: 'assets/program/마음치유.png',
                      title: '마음치유',
                    ),
                    ProgrmaIcon(
                      icon: null,
                      title: null,
                    ),
                    ProgrmaIcon(
                      icon: null,
                      title: null,
                    )
                  ],
                ),
                Gaps.v28,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/logo/facebook.png',
                      width: 21,
                    ),
                    Gaps.h5,
                    Image.asset(
                      'assets/logo/insta.png',
                      width: 22,
                    ),
                    Gaps.h10
                  ],
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: Image.asset(
                'assets/icon/server-test.png',
                width: 30,
              )),
          Text(word)
        ],
      ),
    );
  }
}
