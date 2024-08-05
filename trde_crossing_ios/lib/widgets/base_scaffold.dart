import 'package:flutter/material.dart';
import 'package:trade_crossing_ios/config/theme.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({super.key, this.appBar, required this.body});

  final AppBar? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: appBar,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
