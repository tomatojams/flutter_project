// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'signup_request.dart';

class SignUpRequestMapper extends ClassMapperBase<SignUpRequest> {
  SignUpRequestMapper._();

  static SignUpRequestMapper? _instance;
  static SignUpRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SignUpRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SignUpRequest';

  static String _$introduction(SignUpRequest v) => v.introduction;
  static const Field<SignUpRequest, String> _f$introduction =
      Field('introduction', _$introduction);
  static String _$islandName(SignUpRequest v) => v.islandName;
  static const Field<SignUpRequest, String> _f$islandName =
      Field('islandName', _$islandName, key: 'island_name');
  static String _$profilePic(SignUpRequest v) => v.profilePic;
  static const Field<SignUpRequest, String> _f$profilePic =
      Field('profilePic', _$profilePic, key: 'profile_pic');
  static String _$username(SignUpRequest v) => v.username;
  static const Field<SignUpRequest, String> _f$username =
      Field('username', _$username);

  @override
  final MappableFields<SignUpRequest> fields = const {
    #introduction: _f$introduction,
    #islandName: _f$islandName,
    #profilePic: _f$profilePic,
    #username: _f$username,
  };

  static SignUpRequest _instantiate(DecodingData data) {
    return SignUpRequest(
        introduction: data.dec(_f$introduction),
        islandName: data.dec(_f$islandName),
        profilePic: data.dec(_f$profilePic),
        username: data.dec(_f$username));
  }

  @override
  final Function instantiate = _instantiate;

  static SignUpRequest fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SignUpRequest>(map);
  }

  static SignUpRequest deserialize(String json) {
    return ensureInitialized().decodeJson<SignUpRequest>(json);
  }
}

mixin SignUpRequestMappable {
  String serialize() {
    return SignUpRequestMapper.ensureInitialized()
        .encodeJson<SignUpRequest>(this as SignUpRequest);
  }

  Map<String, dynamic> toJson() {
    return SignUpRequestMapper.ensureInitialized()
        .encodeMap<SignUpRequest>(this as SignUpRequest);
  }

  SignUpRequestCopyWith<SignUpRequest, SignUpRequest, SignUpRequest>
      get copyWith => _SignUpRequestCopyWithImpl(
          this as SignUpRequest, $identity, $identity);
  @override
  String toString() {
    return SignUpRequestMapper.ensureInitialized()
        .stringifyValue(this as SignUpRequest);
  }

  @override
  bool operator ==(Object other) {
    return SignUpRequestMapper.ensureInitialized()
        .equalsValue(this as SignUpRequest, other);
  }

  @override
  int get hashCode {
    return SignUpRequestMapper.ensureInitialized()
        .hashValue(this as SignUpRequest);
  }
}

extension SignUpRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SignUpRequest, $Out> {
  SignUpRequestCopyWith<$R, SignUpRequest, $Out> get $asSignUpRequest =>
      $base.as((v, t, t2) => _SignUpRequestCopyWithImpl(v, t, t2));
}

abstract class SignUpRequestCopyWith<$R, $In extends SignUpRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? introduction,
      String? islandName,
      String? profilePic,
      String? username});
  SignUpRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SignUpRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SignUpRequest, $Out>
    implements SignUpRequestCopyWith<$R, SignUpRequest, $Out> {
  _SignUpRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SignUpRequest> $mapper =
      SignUpRequestMapper.ensureInitialized();
  @override
  $R call(
          {String? introduction,
          String? islandName,
          String? profilePic,
          String? username}) =>
      $apply(FieldCopyWithData({
        if (introduction != null) #introduction: introduction,
        if (islandName != null) #islandName: islandName,
        if (profilePic != null) #profilePic: profilePic,
        if (username != null) #username: username
      }));
  @override
  SignUpRequest $make(CopyWithData data) => SignUpRequest(
      introduction: data.get(#introduction, or: $value.introduction),
      islandName: data.get(#islandName, or: $value.islandName),
      profilePic: data.get(#profilePic, or: $value.profilePic),
      username: data.get(#username, or: $value.username));

  @override
  SignUpRequestCopyWith<$R2, SignUpRequest, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SignUpRequestCopyWithImpl($value, $cast, t);
}
