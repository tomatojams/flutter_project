import 'package:flutter/material.dart';

extension BuildContextx on BuildContext {
  double get witdh => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  TextTheme get textTheme => Theme.of(this).textTheme;
}
