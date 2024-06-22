import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
  });

  final bool disabled;
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
            child: const Text(
              "Next",
            ),
          ),
        ),
      ),
    );
  }
}
