// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_model.dart';

class UserModelMapper extends ClassMapperBase<UserModel> {
  UserModelMapper._();

  static UserModelMapper? _instance;
  static UserModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserModel';

  static String _$id(UserModel v) => v.id;
  static const Field<UserModel, String> _f$id = Field('id', _$id);
  static String _$username(UserModel v) => v.username;
  static const Field<UserModel, String> _f$username =
      Field('username', _$username);
  static String _$islandName(UserModel v) => v.islandName;
  static const Field<UserModel, String> _f$islandName =
      Field('islandName', _$islandName, key: 'island_name');
  static String? _$profilePic(UserModel v) => v.profilePic;
  static const Field<UserModel, String> _f$profilePic =
      Field('profilePic', _$profilePic, key: 'profile_pic', opt: true);
  static String? _$islandCode(UserModel v) => v.islandCode;
  static const Field<UserModel, String> _f$islandCode =
      Field('islandCode', _$islandCode, key: 'island_code', opt: true);
  static String _$introduction(UserModel v) => v.introduction;
  static const Field<UserModel, String> _f$introduction =
      Field('introduction', _$introduction);

  @override
  final MappableFields<UserModel> fields = const {
    #id: _f$id,
    #username: _f$username,
    #islandName: _f$islandName,
    #profilePic: _f$profilePic,
    #islandCode: _f$islandCode,
    #introduction: _f$introduction,
  };

  static UserModel _instantiate(DecodingData data) {
    return UserModel(
        id: data.dec(_f$id),
        username: data.dec(_f$username),
        islandName: data.dec(_f$islandName),
        profilePic: data.dec(_f$profilePic),
        islandCode: data.dec(_f$islandCode),
        introduction: data.dec(_f$introduction));
  }

  @override
  final Function instantiate = _instantiate;

  static UserModel fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserModel>(map);
  }

  static UserModel deserialize(String json) {
    return ensureInitialized().decodeJson<UserModel>(json);
  }
}

mixin UserModelMappable {
  String serialize() {
    return UserModelMapper.ensureInitialized()
        .encodeJson<UserModel>(this as UserModel);
  }

  Map<String, dynamic> toJson() {
    return UserModelMapper.ensureInitialized()
        .encodeMap<UserModel>(this as UserModel);
  }

  UserModelCopyWith<UserModel, UserModel, UserModel> get copyWith =>
      _UserModelCopyWithImpl(this as UserModel, $identity, $identity);
  @override
  String toString() {
    return UserModelMapper.ensureInitialized()
        .stringifyValue(this as UserModel);
  }

  @override
  bool operator ==(Object other) {
    return UserModelMapper.ensureInitialized()
        .equalsValue(this as UserModel, other);
  }

  @override
  int get hashCode {
    return UserModelMapper.ensureInitialized().hashValue(this as UserModel);
  }
}

extension UserModelValueCopy<$R, $Out> on ObjectCopyWith<$R, UserModel, $Out> {
  UserModelCopyWith<$R, UserModel, $Out> get $asUserModel =>
      $base.as((v, t, t2) => _UserModelCopyWithImpl(v, t, t2));
}

abstract class UserModelCopyWith<$R, $In extends UserModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? username,
      String? islandName,
      String? profilePic,
      String? islandCode,
      String? introduction});
  UserModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserModel, $Out>
    implements UserModelCopyWith<$R, UserModel, $Out> {
  _UserModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserModel> $mapper =
      UserModelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? username,
          String? islandName,
          Object? profilePic = $none,
          Object? islandCode = $none,
          String? introduction}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (username != null) #username: username,
        if (islandName != null) #islandName: islandName,
        if (profilePic != $none) #profilePic: profilePic,
        if (islandCode != $none) #islandCode: islandCode,
        if (introduction != null) #introduction: introduction
      }));
  @override
  UserModel $make(CopyWithData data) => UserModel(
      id: data.get(#id, or: $value.id),
      username: data.get(#username, or: $value.username),
      islandName: data.get(#islandName, or: $value.islandName),
      profilePic: data.get(#profilePic, or: $value.profilePic),
      islandCode: data.get(#islandCode, or: $value.islandCode),
      introduction: data.get(#introduction, or: $value.introduction));

  @override
  UserModelCopyWith<$R2, UserModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserModelCopyWithImpl($value, $cast, t);
}
