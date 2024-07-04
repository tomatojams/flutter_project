import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/features/chat/http/chat_scrren_PT/PTconv_widget.dart';
import 'package:pt_mind/features/chat/http/chat_scrren_PT/user_conv_widget.dart';
import 'package:pt_mind/services/api_service.dart';
import 'package:pt_mind/constants/gaps.dart';

class PtChatScreen extends StatefulWidget {
  const PtChatScreen({super.key});

  @override
  State<PtChatScreen> createState() => _ChatScreenState();
}

/// PT 인공지능 대화 화면
class _ChatScreenState extends State<PtChatScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode(); // 입력되어도 키보드가 내려가지 않게 추가

  final userId = 'a1234';
  // 디버깅용 대화 스크립트
  List<Map<String, String>> chatdata = [
    // {"user": "오늘은 기분이 좋아요"},
    // // {"pt": "기분이 좋으시다니 다행입니다. 기분이 좋으시다면 무엇을 하고 싶으신가요?"},
    // // {"user": "안녕하세요"},
    {"pt": "스크롤 키보드 문제는 해결했습니다 >_< README에  [m20240103]"},
    // {"user": "요가를 하고 싶어요"},
    // {
    //   "pt":
    //       "요가를 하고 싶으시다니 좋은 생각이에요. 요가를 하면 몸과 마음이 편안해지는 효과가 있어요. 요가를 하면서 마음을 편안하게 해보세요."
    // },
  ];

  @override
  void initState() {
    initChat(); // 초기에 웹에서 PT 대화를 가져옴
    // 디버깅 시도 코드
    // _focusNode.unfocus();
    // _focusNode.addListener(() {
    //   print("focused:${_focusNode.hasFocus}"); // 포커스가 되었는지 확인
    // });
    super.initState();
  }

  // void _updateFromChild() {
  //   // 자식위젯인 PTconv에서 상태변경 테스트 아직 작동안함.
  //   setState(() {});
  // }

  String removeQuotesAndBackslashes(String input) {
    // \"와 \를 제거합니다.
    return input.replaceAll(RegExp(r'[\\"]'), '');
  }

  void initChat() async {
    final chat = await ApiService.getSingleChat();
    chatdata.insert(0, {"pt": chat}); // 대화 첫번째에 추가
    setState(() {});
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textController.dispose();
    _focusNode.dispose(); // 입력되어도 키보드가 내려가지 않게 추가
    super.dispose();
  }

// 스크롤을 맨 아래로 이동 채팅창 자동 스크롤
  void moveScroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 빌드가 완료된 후에 실행
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController
              .position.minScrollExtent, // 스크롤 최하단이 LivtWiew에서는 min값. 중요
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
      }
    });
  }

// 텍스트 입력 전송 스크롤
  void _submitText() async {
    final text = _textController.text;
    if (text.isEmpty) {
      return;
    }
    chatdata.add({"user": text});
    _textController.clear(); // 추가후 텍스트 지움
    setState(() {
      // print("submit &moveScroll");
      moveScroll(); // 초기화후 스크롤이 맨 아래로 가게 추가
    });

    String answer = await ApiService.postChat(userId, text); // 포스트 후에 답변받음
    chatdata.add({"pt": answer.toString()});

    setState(() {
      // print("submit &moveScroll2");
      moveScroll(); // AI 답변받은후 스크롤
    });
  }

  @override
  Widget build(BuildContext context) {
    //chatdata에 최초 AI 대화 데이타 추가

    // 최초 AI 대화 데이타 추가
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 텍스트 입력창 외부를 클릭하면 포커스 해제
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icon/backButton.svg',
              height: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Gaps.h20,
              SvgPicture.asset(
                'assets/logo/PTlogo-small.svg',
                height: 25.0,
              ),
              Gaps.h64,
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              // 대화창 스크롤
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: ListView.builder(
                  // 리스트뷰빌더로 최적화
                  reverse: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  shrinkWrap: true, // 리스트뷰가 자신의 크기에 맞게 축소되도록 설정
                  controller: _scrollController, // 스크롤 컨트롤러 추가
                  itemCount: chatdata.length, // 리스트 아이템 개수 설정
                  itemBuilder: (context, index) {
                    // 리스트 아이템을 동적으로 생성
                    if (chatdata[chatdata.length - index - 1]
                        .containsKey("user")) {
                      // 사용자 메시지인 경우 UserConv 위젯 반환
                      return UserConv(
                          conv: chatdata[chatdata.length - index - 1]["user"]!);
                      // 스크롤을 역방향으로해서 대화를 끝에서 부터 시작
                    } else {
                      // PT 메시지인 경우 PTconv 위젯 반환
                      return PTconv(
                          focusNode: _focusNode,
                          conv: chatdata[chatdata.length - index - 1]["pt"]!);
                    }
                  },
                ),
              ),
            ),

            // 텍스트 입력창
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: _textController, // 내부 텍스트를 추출하기 위한 컨트롤러
                focusNode: _focusNode, // 포커스를 유지해서 전송되어도, 키보드가 내려가지 않게 추가
                // textInputAction: TextInputAction.done, // 완료액션 설정
                textInputAction: TextInputAction.send, // 전송액션 설정
                // onChanged: (text) { // 텍스트가 변경될때마다
                // },
                onSubmitted: (text) {
                  // 엔터를 누르면 호출되고 그 다음에 onEditingComplete가 호출됨
                },
                onEditingComplete: () {
                  //  포커스를 잃을때 호출되므로 다시 포커스를 요청
                  _submitText();
                  _focusNode.requestFocus(); //
                },
                decoration: InputDecoration(
                  iconColor: Theme.of(context).cardColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(
                      color: Theme.of(context)
                          .primaryColor, // 포커스가 되었을 때의 borderSide 색상 설정
                    ),
                  ),
                  fillColor: Theme.of(context).cardColor,
                  border: const OutlineInputBorder(),
                  hintText: '메시지를 입력하세요',
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icon/sendIcon.svg',
                      height: 30,
                    ),
                    onPressed: () {
                      _submitText(); // 아이콘 클릭시에도 전송이 되게
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
