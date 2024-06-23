import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/gaps.dart';
import 'birthday_screen.dart';
import 'widgets/form_button.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController _passc = TextEditingController();

  String _password = "";
  bool _isObscure = true; // 나중에 변경되므로 final이 아님
  // 영어,특수문자, 숫자가 모두 있는지
  bool _hasCharSpecialNumber = false;
  // 8자리 이상인지
  bool _hasS8letters = false;

  @override
  void initState() {
    super.initState();
    _passc.addListener(() {
      // 패스워드 입력창에 입력이 들어오면 실행
      setState(() {
        _password = _passc.text;
        _hasCharSpecialNumber = _hasSpecial();

        _hasS8letters = _hasS8lettersf();
      });
    });
  }

  @override
  void dispose() {
    _passc.dispose();
    super.dispose();
  }

// 패스워드는 8자 이상 20자 이하, 숫자, 문자, 특수문자를 포함해야 합니다

  bool _isPasswordValid() {
    // 패스워드 유효성 검사
    if (_passc.text.isEmpty) {
      return false;
    }
    final regExp = RegExp(
        r"^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[@$!%*#?&\^])[A-Za-z0-9@$!%*#?&\^]{8,20}$");

    if (!regExp.hasMatch(_password)) {
      return false;
    }
    return true;
  }

  // 영어, 숫자, 특수문자가 모두 있는지 검사
  bool _hasSpecial() {
    final regExp = RegExp(r'(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[@$!%*#?&\^])');
    if (regExp.hasMatch(_password)) {
      return true;
    }
    return false;
  }

  // 8자리 이상 20자리 이하인지 검사

  bool _hasS8lettersf() {
    if (_password.length >= 8 && _password.length <= 20) {
      return true;
    }
    return false;
  }

  void _onScaffoldTap() {
    // 키보드 내리기
    FocusScope.of(context).unfocus();
  }

  void _onSubmit() {
    // 입력이 끝날때
    if (!_isPasswordValid()) return;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const BirthdayScreen(),
            fullscreenDialog: false));
  }

  void _onClearTqp() {
    // 입력창 초기화
    _passc.clear();
  }

  void _toggleObscureText() {
    // 패스워드 가리기/보이기
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 터치시 키보드 내리기
      onTap: _onScaffoldTap,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Colors.black87,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Gaps.h1,
              Text('회원가입'),
              Gaps.h52,
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v40,
              const Text(
                // 상단 텍스트
                "패스워드를 만들어주세요.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Gaps.v16,
              TextField(
                // 패스워드 입력창
                autocorrect: false,
                controller: _passc,
                obscureText: _isObscure,
                onEditingComplete: _onSubmit,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  // prefixIcon: const Icon(
                  //   // 입력창 왼쪽 아이콘

                  suffixIcon: Row(
                    // 입력창 오른쪽 아이콘

                    mainAxisSize: MainAxisSize.min, // Row는 최대넓이를 가지려고함
                    children: [
                      GestureDetector(
                        onTap: _onClearTqp,
                        child: const FaIcon(
                          FontAwesomeIcons.solidCircleXmark, // X 아이콘
                          color: Colors.black54,
                          size: 17,
                        ),
                      ),
                      Gaps.h14,
                      GestureDetector(
                          onTap: _toggleObscureText,
                          child: FaIcon(
                            _isObscure
                                ? FontAwesomeIcons.eye // 눈 가리기 아이콘
                                : FontAwesomeIcons.eyeSlash, // 눈 아이콘
                            color: Colors.black54,
                            size: 20,
                          )),
                    ],
                  ),
                  // errorText: _isPasswordValid(),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    // 입력창 밑줄 비활성화 상태
                    borderSide: BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    // 입력창 밑줄 활성화 상태
                    borderSide: BorderSide(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Gaps.v10,
              Row(
                children: [
                  _hasS8letters
                      ? const FaIcon(FontAwesomeIcons.circleCheck, // 길이체크 아이콘
                          size: 16,
                          color: Colors.green)
                      : const FaIcon(FontAwesomeIcons.circleCheck,
                          size: 16, color: Colors.black54),
                  Gaps.h8,
                  const Text(
                    '8자리 이상 20자리 이하여야 합니다',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Gaps.v10,
              Row(
                children: [
                  _hasCharSpecialNumber
                      ? const FaIcon(FontAwesomeIcons.circleCheck, // 특수문자 체크아이콘
                          size: 16,
                          color: Colors.green)
                      : const FaIcon(FontAwesomeIcons.circleCheck,
                          size: 16, color: Colors.black54),
                  Gaps.h8,
                  const Text(
                    '영어, 숫자, 특수문자 @\$!%*#?&를 포함해야 합니다.',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              Gaps.v28,
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(
                    // Next 버튼
                    disabled: !_isPasswordValid()),
              ), // 메세지가 사라져야 활성화
            ],
          ),
        ),
      ),
    );
  }
}
