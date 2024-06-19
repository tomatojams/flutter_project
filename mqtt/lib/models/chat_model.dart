class ChatModel {
  final String userNickName;
  final String chat;
  const ChatModel({required this.userNickName, required this.chat});
  factory ChatModel.json(Map<String, dynamic> json) => ChatModel(
      userNickName: json['userNickName'].toString(),
      chat: json['chat'].toString());
}
