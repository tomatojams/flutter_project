import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showCustomToast(BuildContext context, String message) {
  OverlayEntry? overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: 20.0, // 시작 위치 (화면 아래)
      left: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.width * 0.8,
      child: _ToastWidget(
          message: message,
          onDismissed: () {
            overlayEntry?.remove();
          }),
    ),
  );

  Overlay.of(context).insert(overlayEntry);

  // 1초 후에 자동으로 제거
  Future.delayed(const Duration(seconds: 3), () {
    overlayEntry?.remove();
  });
}

class _ToastWidget extends StatefulWidget {
  final String message;
  final VoidCallback onDismissed;

  const _ToastWidget({required this.message, required this.onDismissed});

  @override
  __ToastWidgetState createState() => __ToastWidgetState();
}

class __ToastWidgetState extends State<_ToastWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2), // 시작 위치 (1cm 아래)
      end: const Offset(0, 0), // 끝 위치 (1cm 위로 올라감)
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    // 애니메이션 시작
    Future.delayed(const Duration(milliseconds: 300), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _offsetAnimation,
        child: Material(
          color: Theme.of(context).dialogBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Text(
              widget.message,
              style: TextStyle(
                color: Theme.of(context).scaffoldBackgroundColor,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
