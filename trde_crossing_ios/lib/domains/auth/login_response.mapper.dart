// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_response.dart';

class LoginResponseMapper extends ClassMapperBase<LoginResponse> {
  LoginResponseMapper._();

  static LoginResponseMapper? _instance;
  static LoginResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginResponse';

  static bool _$registered(LoginResponse v) => v.registered;
  static const Field<LoginResponse, bool> _f$registered =
      Field('registered', _$registered);
  static String? _$profilePic(LoginResponse v) => v.profilePic;
  static const Field<LoginResponse, String> _f$profilePic =
      Field('profilePic', _$profilePic, key: 'profile_pic', opt: true);
  static String _$accessToken(LoginResponse v) => v.accessToken;
  static const Field<LoginResponse, String> _f$accessToken =
      Field('accessToken', _$accessToken, key: 'access_token');
  static String _$refreshToken(LoginResponse v) => v.refreshToken;
  static const Field<LoginResponse, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, key: 'refresh_token');

  @override
  final MappableFields<LoginResponse> fields = const {
    #registered: _f$registered,
    #profilePic: _f$profilePic,
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
  };

  static LoginResponse _instantiate(DecodingData data) {
    return LoginResponse(
        registered: data.dec(_f$registered),
        profilePic: data.dec(_f$profilePic),
        accessToken: data.dec(_f$accessToken),
        refreshToken: data.dec(_f$refreshToken));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginResponse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginResponse>(map);
  }

  static LoginResponse deserialize(String json) {
    return ensureInitialized().decodeJson<LoginResponse>(json);
  }
}

mixin LoginResponseMappable {
  String serialize() {
    return LoginResponseMapper.ensureInitialized()
        .encodeJson<LoginResponse>(this as LoginResponse);
  }

  Map<String, dynamic> toJson() {
    return LoginResponseMapper.ensureInitialized()
        .encodeMap<LoginResponse>(this as LoginResponse);
  }

  LoginResponseCopyWith<LoginResponse, LoginResponse, LoginResponse>
      get copyWith => _LoginResponseCopyWithImpl(
          this as LoginResponse, $identity, $identity);
  @override
  String toString() {
    return LoginResponseMapper.ensureInitialized()
        .stringifyValue(this as LoginResponse);
  }

  @override
  bool operator ==(Object other) {
    return LoginResponseMapper.ensureInitialized()
        .equalsValue(this as LoginResponse, other);
  }

  @override
  int get hashCode {
    return LoginResponseMapper.ensureInitialized()
        .hashValue(this as LoginResponse);
  }
}

extension LoginResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginResponse, $Out> {
  LoginResponseCopyWith<$R, LoginResponse, $Out> get $asLoginResponse =>
      $base.as((v, t, t2) => _LoginResponseCopyWithImpl(v, t, t2));
}

abstract class LoginResponseCopyWith<$R, $In extends LoginResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? registered,
      String? profilePic,
      String? accessToken,
      String? refreshToken});
  LoginResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginResponse, $Out>
    implements LoginResponseCopyWith<$R, LoginResponse, $Out> {
  _LoginResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginResponse> $mapper =
      LoginResponseMapper.ensureInitialized();
  @override
  $R call(
          {bool? registered,
          Object? profilePic = $none,
          String? accessToken,
          String? refreshToken}) =>
      $apply(FieldCopyWithData({
        if (registered != null) #registered: registered,
        if (profilePic != $none) #profilePic: profilePic,
        if (accessToken != null) #accessToken: accessToken,
        if (refreshToken != null) #refreshToken: refreshToken
      }));
  @override
  LoginResponse $make(CopyWithData data) => LoginResponse(
      registered: data.get(#registered, or: $value.registered),
      profilePic: data.get(#profilePic, or: $value.profilePic),
      accessToken: data.get(#accessToken, or: $value.accessToken),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken));

  @override
  LoginResponseCopyWith<$R2, LoginResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoginResponseCopyWithImpl($value, $cast, t);
}
