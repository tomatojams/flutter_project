import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trade_crossing_ios/clients/auth_client.dart';
import 'package:trade_crossing_ios/common/base_response_model.dart';
import 'package:trade_crossing_ios/domains/auth/login_request.dart';
import 'package:trade_crossing_ios/domains/auth/login_response.dart';
import 'package:trade_crossing_ios/domains/auth/signup_request.dart';
import 'package:trade_crossing_ios/domains/user/user_model.dart';
import 'package:trade_crossing_ios/main.dart';
import 'package:trade_crossing_ios/providers/dio.provider.dart';
import 'package:trade_crossing_ios/providers/secure_storage_provider.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  final client = AuthClient(dio);
  final secureStorage = ref.watch(secureStorageProvider);

  return AuthRepository(client, secureStorage);
}

class AuthRepository {
  AuthRepository(this.client, this.storage);

  final AuthClient client;
  final FlutterSecureStorage storage;

  Future<BaseResponse<LoginResponse>> login(
      String providerId, String email, OAuthProvider provider, String? profilePic) async {
    final request = LoginRequest(providerId: providerId, email: email, provider: provider, profileUrl: profilePic);
    try {
      final result = await client.login(request.toJson());
      await storage.write(key: "accessToken", value: result.accessToken);
      await storage.write(key: "refreshToken", value: result.refreshToken);

      talker.info('Login response: $result');
      return SuccessResponse(data: result);
    } on DioException catch (e) {
      return ErrorResponse(statusCode: 500, message: e.message!);
    }
  }

  /// 회원가입 요청
  ///
  ///
  Future<BaseResponse<bool>> signup({required SignUpRequest body}) async {
    final accessToken = await storage.read(key: "accessToken");
    try {
      await client.register(body.toJson(), bearerToken: "Bearer $accessToken");

      return SuccessResponse(data: true);
    } on DioException catch (e) {
      return ErrorResponse(statusCode: e.response?.statusCode ?? 500, message: e.message!);
    }
  }

  /// 회원가입 정보 조회
  ///
  ///
  Future<BaseResponse<UserModel>> getUserInfo() async {
    final accessToken = await storage.read(key: "accessToken");
    try {
      final result = await client.info(bearerToken: "Bearer $accessToken");

      return SuccessResponse(data: result);
    } on DioException catch (e) {
      return ErrorResponse(statusCode: e.response?.statusCode ?? 500, message: e.message!);
    }
  }
}
