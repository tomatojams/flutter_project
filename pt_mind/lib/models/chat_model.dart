class ChatModel {
  final String userMessage;
  final String input;
  final String outText;
  final Map<String, dynamic> tag;

  ChatModel.fromJson(Map<String, dynamic> json)
      : userMessage = json['user_message'],
        input = json['input'],
        outText = json['out_text'],
        tag = json['text'];
}

