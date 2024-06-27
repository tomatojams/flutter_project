import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/features/chatting/widgets/ai_conv_widget.dart';
import 'package:pt_mind/features/chatting/widgets/user_conv_widget.dart';
import 'package:pt_mind/services/api_service.dart';
import 'package:pt_mind/constants/gaps.dart';

class PtChatScreen extends StatefulWidget {
  const PtChatScreen({super.key});

  @override
  State<PtChatScreen> createState() => _ChatScreenState();
}

// 수정된 부분 시작
class _ChatScreenState extends State<PtChatScreen> with WidgetsBindingObserver {
  // 앱의 위젯 트리와 시스템 이벤트 간의 상호작용을 감지하고 처리할 수 있게 합니다.
  // 이를 사용하면 앱의 생명주기와 관련된 다양한 이벤트를 수신하고 처리할 수 있습니다.
  //이를 통해 키보드가 올라오거나 내려갈 때 등의 상황에 반응할 수 있습니다.

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController =
      TextEditingController(); // 텍스트입력 컨트롤러 추가
  final FocusNode _focusNode = FocusNode(); // 입력되어도 키보드가 내려가지 않게 추가

  final userId = 'a1234';
  List<Map<String, String>> chatdata = [
    // {"user": "안녕하세요"},
    // {"pt": "안녕하세요. 무엇을 도와드릴까요? 오늘 날씨가 정말 좋네요. 오늘은 어떤고민이 있으신가요??"},
    // {"user": "오늘은 기분이 좋아요"},
    // {"pt": "기분이 좋으시다니 다행입니다. 기분이 좋으시다면 무엇을 하고 싶으신가요?"},
    // {"user": "요가를 하고 싶어요"},
    // {
    //   "pt":
    //       "요가를 하고 싶으시다니 좋은 생각이에요. 요가를 하면 몸과 마음이 편안해지는 효과가 있어요. 요가를 하면서 마음을 편안하게 해보세요."
    // },
  ];
  final Future<String> chat = ApiService.getChat(); // 최초 AI 대화 데이타 가져오기

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this); // 키보드가 올라오면 이벤트를 받아 스크롤되게 추가
    // });// 초기화후 스크롤이 맨 아래로 가게 추가
  }

  @override
  void dispose() {
    // 컨트롤러 오브저버 제거
    WidgetsBinding.instance.removeObserver(this);
    _scrollController.dispose();
    _textController.dispose();
    _focusNode.dispose(); // 입력되어도 키보드가 내려가지 않게 추가
    super.dispose();
  }

// 아래함수는  WidgetsBindingObserver 를 통해서 생명주기, 키보드 이벤트 감지 -> 위젯트리와 연동
  @override
  void didChangeMetrics() {
    // 스크롤 범주가 바뀌면 스크롤되게 추가
    final bottomInset = MediaQuery.of(context)
        .viewInsets
        .bottom; // 키보드가 올라와서 화면이 줄어들면 bottomInset이 생김
    if (bottomInset > 0.0) {
      moveScroll();
    }
  }
  // void jumpScroll() {

  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  //   });
  // }

  void moveScroll() {
    // 부드럽게 스크롤 이동
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // 랜더링 이후에 스크롤 이동되도록 수정
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut, // easeIn에서 스크롤이 다 안되는 문제가 발생
      );
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
      moveScroll(); // 초기화후 스크롤이 맨 아래로 가게 추가
    });

    String answer = await ApiService.postChat(userId, text); // 포스트 후에 답변받음
    chatdata.add({"pt": answer.toString()});

    setState(() {
      moveScroll(); // AI 답변받은후 스크롤
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 본문 스크롤을 탭하면 키보드 내리기
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
              child: SingleChildScrollView(
                controller: _scrollController, // 컨트롤러 설치
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 15.0,
                    ),
                    child: Column(
                      children: [
                        FutureBuilder(
                          // 데이타가 들어오면 빌드
                          future: chat,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return PTconv(
                                conv: snapshot.data!,
                              );
                            } else {
                              return CircularProgressIndicator(
                                color: Theme.of(context).primaryColorLight,
                              );
                            }
                          },
                        ),
                        for (var i = 0;
                            i < chatdata.length;
                            i++) // 채팅 데이타수만큼 빌드
                          if (chatdata[i].containsKey("user")) // 유저채팅 구분
                            UserConv(
                              conv: chatdata[i]["user"]!,
                            )
                          else
                            PTconv(
                              conv: chatdata[i]["pt"]!,
                            )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            TextField(
              controller: _textController, // 내부 텍스트를 추출하기 위한 컨트롤러
              focusNode: _focusNode, // 포커스를 유지해서 전송되어도, 키보드가 내려가지 않게 추가
              // textInputAction: TextInputAction.done, // 완료액션 설정
              textInputAction: TextInputAction.send, // 전송액션 설정
              // onChanged: (text) { // 텍스트가 변경될때마다
              // },
              onSubmitted: (text) {
                // 엔터를 누르면 호출되고 그 다음에 onEditingComplete가 호출됨
                _submitText();
              },
              onEditingComplete: () {
                //  포커스를 잃을때 호출되므로 다시 포커스를 요청
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
          ],
        ),
      ),
    );
  }
}
