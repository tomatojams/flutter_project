import 'package:dart_mappable/dart_mappable.dart';

part 'base_response_model.mapper.dart';

sealed class BaseResponse<T> {
  /// 응답의 유형에 따라 적절한 콜백을 실행합니다.
  ///
  /// [onSuccess] 콜백은 응답이 [SuccessResponse]인 경우 실행됩니다.
  /// [onError] 콜백은 응답이 [ErrorResponse]인 경우 실행됩니다.
  ///
  /// 실행된 콜백의 결과를 반환합니다.
  ///
  /// 응답 유형이 지원되지 않는 경우 [UnimplementedError]를 throw합니다.
  R when<R>({
    R Function(SuccessResponse<T> data)? onSuccess,
    R Function(ErrorResponse<T> error)? onError,
  }) =>
      switch (this) {
        SuccessResponse<T> success => onSuccess!(success),
        ErrorResponse<T> error => onError!(error),
        _ => throw UnimplementedError("Unimplemented type: $runtimeType"),
      };
}

@MappableClass()
final class SuccessResponse<T> extends BaseResponse<T> with SuccessResponseMappable {
  SuccessResponse({required this.data});

  final T data;

  factory SuccessResponse.fromJson(Map<String, dynamic> json) => SuccessResponseMapper.fromJson(json);
  factory SuccessResponse.fromJsonString(String json) => SuccessResponseMapper.deserialize(json);
}

@MappableClass()
final class ErrorResponse<T> extends BaseResponse<T> with ErrorResponseMappable {
  ErrorResponse({required this.statusCode, required this.message});

  final int statusCode;
  final String message;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponseMapper.fromJson(json);
  factory ErrorResponse.fromJsonString(String json) => ErrorResponseMapper.deserialize(json);
}
