import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AuthButton extends StatelessWidget {
  final String text;
  final FaIcon? icon;
  final Image? image;
  const AuthButton({
    super.key,
    required this.text,
    this.icon,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 1,
              offset: const Offset(0, 0),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   color: Theme.of(context).primaryColorLight,
          //   width: 1,
          // ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            icon != null
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: icon,
                  )
                : Align(
                    alignment: Alignment.centerLeft,
                    child: image,
                  ),
            Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
      ),
    );
  }
}
