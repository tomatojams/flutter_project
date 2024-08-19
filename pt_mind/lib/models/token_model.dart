class TokenModel {
  final String accessToken;
  final String tokenType;
  final String email;

  // Named constructor that initializes fields from JSON
  TokenModel.fromJson(Map<String, dynamic> json)
      : accessToken = json['access_token'],
        tokenType = json['token_type'],
        email = json['email'];
}
