import 'package:flutter/material.dart';
import 'package:webview_flutter/webView_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WebViewController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog Web App'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // controller?.loadUrl('https://blog.codefactory.ai');
              // 널이 될수도있기때문에 ? 를 표시함
              if (controller != null) {
                controller!.loadUrl('https://blog.codefactory.ai');
              }
              // 이렇게 널이 아닐때만 작동하게 해도 됨
            },
            icon: const Icon(
              Icons.home,
            ),
          )
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
          // 웹뷰의 컨트롤러를 클래스내의 컨트롤러 변수에 할당
        },
        initialUrl: 'https://blog.codefactory.ai',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      // 떠다니는 새로고침 버튼을 추가
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller != null) {
            controller!.reload();
          }
          //WebView 위젯의 컨트롤러를 이용 해서 reload() 메소드를 호출
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
