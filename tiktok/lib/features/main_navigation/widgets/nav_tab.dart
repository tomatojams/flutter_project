import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/gaps.dart';

class NavTab extends StatelessWidget {
  const NavTab({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.tap,
  });

  final bool isSelected;
  final SvgPicture icon;
  final Function tap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => tap(),
        child: Container(
          color: Colors.transparent,
          //위의 GestureDetector를 expanded로 감싸기위해서 container로 감싸줌
          child: AnimatedOpacity(
            opacity: isSelected ? 1 : 0.5,
            duration: const Duration(milliseconds: 150),  
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
