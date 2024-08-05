import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/gaps.dart';
import '../onboarding/interests_screen.dart';
import 'widgets/form_button.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _ptc = TextEditingController();
  bool _isObscure = true;

  final Map<String, String> _formData = {
    'email': '',
    'password': '',
  };

  @override
  void dispose() {
    _ptc.dispose();
    super.dispose();
  }

  void _onSubmitTap() {
    // 로그인 버튼 클릭시  유효성검사
    // _formKey.currentState?.validate(); // 유효한지 검사

    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      Navigator.pushAndRemoveUntil(context, // 문맥정보
          MaterialPageRoute(builder: (context) => const InterestsScreen()),// 새로운경로
          (route) { // route 기존경로들
        /* print(route); */
        return false; // false -> 루트 유지 안됨 true-> 유지됨 (뒤로가기)
      });

      /*     Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const InterestsScreen()),
        (Route<dynamic> route) => false,
      ); */

      // Navigator.pushAndRemoveUntil(
      //   context,
      //   MaterialPageRoute(builder: (context) => const PTstate()),
      //   (Route<dynamic> route) => false,
      // );
    }

    // print(_formData.values); // 이메일, 패스워드 출력
  }

  void _toggleObscureText() {
    // 패스워드 가리기/보이기
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  void _onClearTap() {
    // 패스워드 입력창 초기화
    _ptc.clear();
  }

  String? _isEmailValid(value) {
    final regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regExp.hasMatch(value)) {
      return '이메일 형식이 아닙니다';
    }
    return null;
  }

  String? _isPasswordValid(value) {
    // 패스워드 유효성 검사

    final regExp = RegExp(
        r"^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[@$!%*#?&\^])[A-Za-z0-9@$!%*#?&\^]{8,20}$");

    if (!regExp.hasMatch(value)) {
      return "8자 이상 20자 이하, 숫자, 문자, 특수문자를 포함해야 합니다";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black87,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text('로그인'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 36,
        ),
        child: Form(
            key: _formKey, // Form 추가
            child: Column(
              children: [
                TextFormField(
                  // 이메일 입력
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => _isEmailValid(value), // 유효성 검사 문장을 리턴
                  onSaved: (newValue) {
                    if (newValue != null) {
                      _formData['email'] = newValue;
                    }
                  }, // 이메일 전달
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(
                      color: Colors.pink,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      // 입력창 밑줄 비활성화 상태
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      // 입력창 밑줄 활성화 상태
                      borderSide: BorderSide(
                        color: Colors.black87,
                      ),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black87,
                      ),
                    ),
                    hintText: 'Email',
                  ),
                ),
                Gaps.v16,
                TextFormField(
                  // 패스워드 입력

                  controller: _ptc,

                  obscureText: _isObscure,
                  autocorrect: false,
                  validator: (value) =>
                      _isPasswordValid(value), // 유효성 검사 문장을 리턴
                  onSaved: (newValue) {
                    if (newValue != null) {
                      _formData['password'] = newValue;
                    }
                  }, // 패스워드 전달
                  decoration: InputDecoration(
                    suffixIcon: Row(
                      // 입력창 오른쪽 아이콘

                      mainAxisSize: MainAxisSize.min, // Row는 최대넓이를 가지려고함
                      children: [
                        GestureDetector(
                          onTap: _onClearTap,
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
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    errorStyle: const TextStyle(
                      color: Colors.pink,
                    ),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                    focusedErrorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black87,
                      ),
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
                Gaps.v16,
                GestureDetector(
                    onTap: _onSubmitTap,
                    child: const FormButton(disabled: false, text: 'Log in'))
              ],
            )),
      ),
    );
  }
}
