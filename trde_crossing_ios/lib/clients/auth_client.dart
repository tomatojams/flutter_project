import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:trade_crossing_ios/common/custom_type.dart';
import 'package:trade_crossing_ios/config/endpoint.dart';
import 'package:trade_crossing_ios/domains/auth/login_response.dart';
import 'package:trade_crossing_ios/domains/user/user_model.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: AuthEndpoint.baseUrl)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST(AuthEndpoint.login)
  Future<LoginResponse> login(@Body() JsonBody body);

  /// 회원가입 요청
  ///
  /// @param [body] - 회원가입 정보로 `Map<String,dynamic>` 형태를 받습니다.
  ///
  /// @param [bearerToken] - 액서스 토큰을 헤더로 넣기 위한 인자입니다.
  /// `Bearer ${accessToken}` 형태로 넣어주세요.
  ///
  /// @return [HttpResponse] - 회원가입 성공 시 응답값으로 `HttpResponse`를 바꿔주세요.
  @POST(AuthEndpoint.signup)
  Future<HttpResponse> register(@Body() JsonBody body, {@Header("Authorization") required String bearerToken});

  /// 회원가입 정보 조회
  ///
  /// @GET("") - 회원가입 정보 조회를 위한 API 주소를 넣어주세요.
  ///
  /// @param [bearerToken] - 액서스 토큰을 헤더로 넣기 위한 인자입니다.
  /// `Bearer ${accessToken}` 형태로 넣어주세요.
  ///
  /// @return [HttpResponse] - 회원가입 정보 조회 성공 시 응답값으로 `HttpResponse`를 바꿔주세요.
  ///
  @GET(AuthEndpoint.info)
  Future<UserModel> info({@Header("Authorization") required String bearerToken});
}
