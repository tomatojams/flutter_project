import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class Webview extends StatefulWidget {
  const Webview({
    super.key,
  });

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  late final WebViewController _wc;

  @override
  void initState() {
    super.initState();
    // 플랫폼별 웹 뷰 컨트롤러 생성에 필요한 매개변수
    late final PlatformWebViewControllerCreationParams params;

// 디바이스가 iOS일 경우
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    }
// 디바이스가 Android일 경우
    else if (WebViewPlatform.instance is AndroidWebViewPlatform) {
      params = const PlatformWebViewControllerCreationParams();
    }

// 플랫폼에 맞는 컨트롤러 생성
    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);

    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }

// 컨트롤러 설정
    controller
      // 웹뷰에서 자바스크립트 코드 실행 여부 : 제한없이 사용
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // 웹 뷰 배경색 설정 : 투명 배경
      ..setBackgroundColor(const Color.fromARGB(255, 255, 255, 255))
      // 웹 뷰 이벤트 및 요청을 처리할 대리자 설정
      ..setNavigationDelegate(
        NavigationDelegate(
          // 페이지 로딩 진행률 표시
          // onProgress: (int progress) {
          //   // Update loading bar.
          //   print('Update loading bar : $progress');
          // },
          // // 새 페이지가 로드 될 때 실행되는 코드
          // onPageStarted: (String url) {
          //   print('onPageStarted : $url');
          // },
          // // 페이지 로드가 완료 될 때 실행되는 코드
          // onPageFinished: (String url) {
          //   print('onPageFinished : $url');
          // },
          // // 웹 리소스 로드 오류 시 실행 되는 코드
          // onWebResourceError: (WebResourceError error) {
          //   print('WebResourceError : $error');
          // },
          // 내비게이션 요청 시 실행되는 코드
          // 요청된 URL을 기반으로 표시를 허용할지 금지할지 결정
          onNavigationRequest: (NavigationRequest request) {
            // url이 유튜브일 경우 : 웹 페이지 표시 금지
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            if (request.url.startsWith('https://www.framer.com/')) {
              return NavigationDecision.prevent;
            }
            // url이 유튜브가 아닐 경우 : 웹 페이지 표시
            return NavigationDecision.navigate;
          },
        ),
      )
      // 보여줄 페이지 URL
      ..loadRequest(
          Uri.parse('https://experienced-experiences-877979.framer.app/'));

    _wc = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        foregroundColor: Colors.black87,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, color: Theme.of(context).primaryColor),
            onPressed: () {
              _wc.reload();
            },
          ),
          // IconButton(
          //   icon: Icon(Icons.home),
          //   onPressed: () {
          //     _wc.loadUrl('https://experienced-experiences-877979.framer.app/');
          //   },
          // ),
        ],
      ),
      body: WebViewWidget(
        controller: _wc,
      ),
      // floatingActionButton: FloatingActionButton(
      //   // 플로팅 가입아이콘
      //   backgroundColor: Theme.of(context).cardColor,
      //   onPressed: () {},
      //   child: Image.asset(
      //     'assets/icon/birthday-cake.png',
      //     width: 30,
      //   ),
      // ),
    );
  }
}
