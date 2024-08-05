// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'base_response_model.dart';

class SuccessResponseMapper extends ClassMapperBase<SuccessResponse> {
  SuccessResponseMapper._();

  static SuccessResponseMapper? _instance;
  static SuccessResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SuccessResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SuccessResponse';
  @override
  Function get typeFactory => <T>(f) => f<SuccessResponse<T>>();

  static dynamic _$data(SuccessResponse v) => v.data;
  static dynamic _arg$data<T>(f) => f<T>();
  static const Field<SuccessResponse, dynamic> _f$data =
      Field('data', _$data, arg: _arg$data);

  @override
  final MappableFields<SuccessResponse> fields = const {
    #data: _f$data,
  };

  static SuccessResponse<T> _instantiate<T>(DecodingData data) {
    return SuccessResponse(data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static SuccessResponse<T> fromJson<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SuccessResponse<T>>(map);
  }

  static SuccessResponse<T> deserialize<T>(String json) {
    return ensureInitialized().decodeJson<SuccessResponse<T>>(json);
  }
}

mixin SuccessResponseMappable<T> {
  String serialize() {
    return SuccessResponseMapper.ensureInitialized()
        .encodeJson<SuccessResponse<T>>(this as SuccessResponse<T>);
  }

  Map<String, dynamic> toJson() {
    return SuccessResponseMapper.ensureInitialized()
        .encodeMap<SuccessResponse<T>>(this as SuccessResponse<T>);
  }

  SuccessResponseCopyWith<SuccessResponse<T>, SuccessResponse<T>,
          SuccessResponse<T>, T>
      get copyWith => _SuccessResponseCopyWithImpl(
          this as SuccessResponse<T>, $identity, $identity);
  @override
  String toString() {
    return SuccessResponseMapper.ensureInitialized()
        .stringifyValue(this as SuccessResponse<T>);
  }

  @override
  bool operator ==(Object other) {
    return SuccessResponseMapper.ensureInitialized()
        .equalsValue(this as SuccessResponse<T>, other);
  }

  @override
  int get hashCode {
    return SuccessResponseMapper.ensureInitialized()
        .hashValue(this as SuccessResponse<T>);
  }
}

extension SuccessResponseValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, SuccessResponse<T>, $Out> {
  SuccessResponseCopyWith<$R, SuccessResponse<T>, $Out, T>
      get $asSuccessResponse =>
          $base.as((v, t, t2) => _SuccessResponseCopyWithImpl(v, t, t2));
}

abstract class SuccessResponseCopyWith<$R, $In extends SuccessResponse<T>, $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  $R call({T? data});
  SuccessResponseCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SuccessResponseCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, SuccessResponse<T>, $Out>
    implements SuccessResponseCopyWith<$R, SuccessResponse<T>, $Out, T> {
  _SuccessResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SuccessResponse> $mapper =
      SuccessResponseMapper.ensureInitialized();
  @override
  $R call({T? data}) =>
      $apply(FieldCopyWithData({if (data != null) #data: data}));
  @override
  SuccessResponse<T> $make(CopyWithData data) =>
      SuccessResponse(data: data.get(#data, or: $value.data));

  @override
  SuccessResponseCopyWith<$R2, SuccessResponse<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SuccessResponseCopyWithImpl($value, $cast, t);
}

class ErrorResponseMapper extends ClassMapperBase<ErrorResponse> {
  ErrorResponseMapper._();

  static ErrorResponseMapper? _instance;
  static ErrorResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ErrorResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ErrorResponse';
  @override
  Function get typeFactory => <T>(f) => f<ErrorResponse<T>>();

  static int _$statusCode(ErrorResponse v) => v.statusCode;
  static const Field<ErrorResponse, int> _f$statusCode =
      Field('statusCode', _$statusCode);
  static String _$message(ErrorResponse v) => v.message;
  static const Field<ErrorResponse, String> _f$message =
      Field('message', _$message);

  @override
  final MappableFields<ErrorResponse> fields = const {
    #statusCode: _f$statusCode,
    #message: _f$message,
  };

  static ErrorResponse<T> _instantiate<T>(DecodingData data) {
    return ErrorResponse(
        statusCode: data.dec(_f$statusCode), message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static ErrorResponse<T> fromJson<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ErrorResponse<T>>(map);
  }

  static ErrorResponse<T> deserialize<T>(String json) {
    return ensureInitialized().decodeJson<ErrorResponse<T>>(json);
  }
}

mixin ErrorResponseMappable<T> {
  String serialize() {
    return ErrorResponseMapper.ensureInitialized()
        .encodeJson<ErrorResponse<T>>(this as ErrorResponse<T>);
  }

  Map<String, dynamic> toJson() {
    return ErrorResponseMapper.ensureInitialized()
        .encodeMap<ErrorResponse<T>>(this as ErrorResponse<T>);
  }

  ErrorResponseCopyWith<ErrorResponse<T>, ErrorResponse<T>, ErrorResponse<T>, T>
      get copyWith => _ErrorResponseCopyWithImpl(
          this as ErrorResponse<T>, $identity, $identity);
  @override
  String toString() {
    return ErrorResponseMapper.ensureInitialized()
        .stringifyValue(this as ErrorResponse<T>);
  }

  @override
  bool operator ==(Object other) {
    return ErrorResponseMapper.ensureInitialized()
        .equalsValue(this as ErrorResponse<T>, other);
  }

  @override
  int get hashCode {
    return ErrorResponseMapper.ensureInitialized()
        .hashValue(this as ErrorResponse<T>);
  }
}

extension ErrorResponseValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, ErrorResponse<T>, $Out> {
  ErrorResponseCopyWith<$R, ErrorResponse<T>, $Out, T> get $asErrorResponse =>
      $base.as((v, t, t2) => _ErrorResponseCopyWithImpl(v, t, t2));
}

abstract class ErrorResponseCopyWith<$R, $In extends ErrorResponse<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? statusCode, String? message});
  ErrorResponseCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ErrorResponseCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, ErrorResponse<T>, $Out>
    implements ErrorResponseCopyWith<$R, ErrorResponse<T>, $Out, T> {
  _ErrorResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ErrorResponse> $mapper =
      ErrorResponseMapper.ensureInitialized();
  @override
  $R call({int? statusCode, String? message}) => $apply(FieldCopyWithData({
        if (statusCode != null) #statusCode: statusCode,
        if (message != null) #message: message
      }));
  @override
  ErrorResponse<T> $make(CopyWithData data) => ErrorResponse(
      statusCode: data.get(#statusCode, or: $value.statusCode),
      message: data.get(#message, or: $value.message));

  @override
  ErrorResponseCopyWith<$R2, ErrorResponse<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ErrorResponseCopyWithImpl($value, $cast, t);
}
