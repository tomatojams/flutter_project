class ChatLobbyModel {
  final String name;
  final String titleName;
  final String lastMessage;
  final String imageExt;
  final String profile;
  final String beforeTime;
  int? badge;

  ChatLobbyModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        titleName = json['titleName'],
        lastMessage = json['lastMessage'],
        imageExt = json['imageExt'],
        profile = json['profile'],
        beforeTime = json['beforeTime'],
        badge = json['badge'];
}

// 철자틀리면 null 에러가남