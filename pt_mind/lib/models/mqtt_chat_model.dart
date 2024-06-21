// import 'dart:convert';

class MqttChatModel {
  final String userNickName;
  final String chat;
  const MqttChatModel({required this.userNickName, required this.chat});
  
  factory MqttChatModel.json(Map<String, dynamic> json) => MqttChatModel(
  // factory MqttChatModel.json(Map<String, List<int>> json) => MqttChatModel(
      userNickName: json['userNickName'].toString(),
      chat: json['chat'].toString());
      // chat: json['chat'].toString().codeUnits);
}