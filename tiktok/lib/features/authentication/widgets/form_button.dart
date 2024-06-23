import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final bool disabled;
  final String? text; // 인자를 안받아도 될때 final 에 ?를 붙임

  const FormButton({
    super.key,
    required this.disabled,
    this.text = 'Next', // 디펄트값을 생성자에서 지정
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: disabled ? Colors.black12 : Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: disabled ? Colors.grey.shade400 : Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            child: Text(
              text!,
            ),
          ),
        ),
      ),
    );
  }
}
