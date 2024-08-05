// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_request.dart';

class OAuthProviderMapper extends EnumMapper<OAuthProvider> {
  OAuthProviderMapper._();

  static OAuthProviderMapper? _instance;
  static OAuthProviderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OAuthProviderMapper._());
    }
    return _instance!;
  }

  static OAuthProvider fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  OAuthProvider decode(dynamic value) {
    switch (value) {
      case 'kakao':
        return OAuthProvider.kakao;
      case 'google':
        return OAuthProvider.google;
      case 'apple':
        return OAuthProvider.apple;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(OAuthProvider self) {
    switch (self) {
      case OAuthProvider.kakao:
        return 'kakao';
      case OAuthProvider.google:
        return 'google';
      case OAuthProvider.apple:
        return 'apple';
    }
  }
}

extension OAuthProviderMapperExtension on OAuthProvider {
  String toValue() {
    OAuthProviderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<OAuthProvider>(this) as String;
  }
}

class LoginRequestMapper extends ClassMapperBase<LoginRequest> {
  LoginRequestMapper._();

  static LoginRequestMapper? _instance;
  static LoginRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginRequestMapper._());
      OAuthProviderMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LoginRequest';

  static String? _$profileUrl(LoginRequest v) => v.profileUrl;
  static const Field<LoginRequest, String> _f$profileUrl =
      Field('profileUrl', _$profileUrl, key: 'profile_url', opt: true);
  static String _$email(LoginRequest v) => v.email;
  static const Field<LoginRequest, String> _f$email = Field('email', _$email);
  static String _$providerId(LoginRequest v) => v.providerId;
  static const Field<LoginRequest, String> _f$providerId =
      Field('providerId', _$providerId, key: 'provider_id');
  static OAuthProvider _$provider(LoginRequest v) => v.provider;
  static const Field<LoginRequest, OAuthProvider> _f$provider =
      Field('provider', _$provider);

  @override
  final MappableFields<LoginRequest> fields = const {
    #profileUrl: _f$profileUrl,
    #email: _f$email,
    #providerId: _f$providerId,
    #provider: _f$provider,
  };

  static LoginRequest _instantiate(DecodingData data) {
    return LoginRequest(
        profileUrl: data.dec(_f$profileUrl),
        email: data.dec(_f$email),
        providerId: data.dec(_f$providerId),
        provider: data.dec(_f$provider));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginRequest>(map);
  }

  static LoginRequest deserialize(String json) {
    return ensureInitialized().decodeJson<LoginRequest>(json);
  }
}

mixin LoginRequestMappable {
  String serialize() {
    return LoginRequestMapper.ensureInitialized()
        .encodeJson<LoginRequest>(this as LoginRequest);
  }

  Map<String, dynamic> toJson() {
    return LoginRequestMapper.ensureInitialized()
        .encodeMap<LoginRequest>(this as LoginRequest);
  }

  LoginRequestCopyWith<LoginRequest, LoginRequest, LoginRequest> get copyWith =>
      _LoginRequestCopyWithImpl(this as LoginRequest, $identity, $identity);
  @override
  String toString() {
    return LoginRequestMapper.ensureInitialized()
        .stringifyValue(this as LoginRequest);
  }

  @override
  bool operator ==(Object other) {
    return LoginRequestMapper.ensureInitialized()
        .equalsValue(this as LoginRequest, other);
  }

  @override
  int get hashCode {
    return LoginRequestMapper.ensureInitialized()
        .hashValue(this as LoginRequest);
  }
}

extension LoginRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginRequest, $Out> {
  LoginRequestCopyWith<$R, LoginRequest, $Out> get $asLoginRequest =>
      $base.as((v, t, t2) => _LoginRequestCopyWithImpl(v, t, t2));
}

abstract class LoginRequestCopyWith<$R, $In extends LoginRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? profileUrl,
      String? email,
      String? providerId,
      OAuthProvider? provider});
  LoginRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginRequest, $Out>
    implements LoginRequestCopyWith<$R, LoginRequest, $Out> {
  _LoginRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginRequest> $mapper =
      LoginRequestMapper.ensureInitialized();
  @override
  $R call(
          {Object? profileUrl = $none,
          String? email,
          String? providerId,
          OAuthProvider? provider}) =>
      $apply(FieldCopyWithData({
        if (profileUrl != $none) #profileUrl: profileUrl,
        if (email != null) #email: email,
        if (providerId != null) #providerId: providerId,
        if (provider != null) #provider: provider
      }));
  @override
  LoginRequest $make(CopyWithData data) => LoginRequest(
      profileUrl: data.get(#profileUrl, or: $value.profileUrl),
      email: data.get(#email, or: $value.email),
      providerId: data.get(#providerId, or: $value.providerId),
      provider: data.get(#provider, or: $value.provider));

  @override
  LoginRequestCopyWith<$R2, LoginRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoginRequestCopyWithImpl($value, $cast, t);
}
