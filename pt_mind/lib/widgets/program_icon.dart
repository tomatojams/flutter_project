import 'package:flutter/material.dart';

class ProgrmaIcon extends StatelessWidget {
  final String? icon;
  final String? title;
  const ProgrmaIcon({
    super.key,
    this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.0,
      height: 84.0,
      child: Column(
        children: [
          icon != null
              ? Image.asset(
                  icon!,
                  height: 60,
                )
              : const SizedBox(
                  height: 60,
                ),
          const SizedBox(
            height: 2.0,
          ),
          title != null
              ? Text(
                  title!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Theme.of(context).indicatorColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              : const SizedBox(
                  height: 14.0,
                ),
        ],
      ),
    );
  }
}
