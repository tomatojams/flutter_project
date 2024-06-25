import 'package:flutter/material.dart';

class InterestButton extends StatelessWidget {
  const InterestButton({
    super.key,
    required List<bool> isSelected,
    required this.interest,
  }) : _isSelected = isSelected;

  final List<bool> _isSelected;
  final MapEntry<int, String> interest;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      // 관심항목 박스
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        color: _isSelected[interest.key]
            ? Theme.of(context).primaryColorLight
            : Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 5,
            spreadRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Text(interest.value, // 관심항목 텍스트
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: _isSelected[interest.key]
                ? Theme.of(context).cardColor
                : Theme.of(context).indicatorColor,
          )),
    );
  }
}
