import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textcolor;

  const Button(
      {super.key,
      required this.text,
      this.bgColor = const Color(0xff1f2123),
      required this.textcolor});

  // const Button({
  //   super.key,
  //   required this.text,
  //   required this.bgColor,
  //   required this.textcolor,
  // });

  // Button({required this.text, required this.bgColor, required this.textcolor})

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          color: bgColor, //0xFF+picker
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 40,
          ),
          child: Text(
            text,
            style: TextStyle(color: textcolor, fontSize: 20),
          ),
        ));
  }
}
