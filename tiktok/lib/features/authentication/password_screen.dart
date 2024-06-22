

import 'package:flutter/material.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController _tec = TextEditingController();

  String _password = "";

  @override
  void initState() {
    super.initState();
    _tec.addListener(() {
      setState(() {
        _password = _tec.text;
      });
    });
  }

  @override
  void dispose() {
    _tec.dispose();
    super.dispose();
  }

  String? _isPasswordValid() {
    if (_tec.text.isEmpty) {
      return '패스워드를 입력해주세요';
    }
    final regExp = RegExp(
        r"^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[@$!%*#?&\^])[A-Za-z0-9@$!%*#?&\^]{9,}$");
    if (!regExp.hasMatch(_password)) {
      return '패스워드는 9자 이상, 숫자, 문자, 특수문자를 포함해야 합니다';
    }
    return null;
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  void _onSubmit() {
    if (_password.isEmpty || _isPasswordValid() != null) return;

    // Navigator.push(context, MaterialPageRoute(builder: (context) {
    //   return const PasswordScreen();
    // }));
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //   return const PasswordScreen();
    // }));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Colors.black87,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Gaps.h1,
              Text('Sign Up'),
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
                "패스워드를 만들어주세요.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Gaps.v16,
              TextField(
                autocorrect: false,
                controller: _tec,
                onEditingComplete: _onSubmit,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.key,
                    color: Colors.black54,
                  ),
                  
                  errorText: _isPasswordValid(),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Gaps.v20,
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(
                    disabled: _password.isEmpty || _isPasswordValid() != null),
              ), // 메세지가 사라져야 활성화
            ],
          ),
        ),
      ),
    );
  }
}
