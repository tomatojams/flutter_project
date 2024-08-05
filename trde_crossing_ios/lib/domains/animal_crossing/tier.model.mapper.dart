// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tier.model.dart';

class TierMapper extends ClassMapperBase<Tier> {
  TierMapper._();

  static TierMapper? _instance;
  static TierMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TierMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Tier';

  static String _$required(Tier v) => v.required;
  static const Field<Tier, String> _f$required = Field('required', _$required);
  static String _$reward(Tier v) => v.reward;
  static const Field<Tier, String> _f$reward = Field('reward', _$reward);
  static List<String> _$nouns(Tier v) => v.nouns;
  static const Field<Tier, List<String>> _f$nouns = Field('nouns', _$nouns);
  static String _$modifier(Tier v) => v.modifier;
  static const Field<Tier, String> _f$modifier = Field('modifier', _$modifier);

  @override
  final MappableFields<Tier> fields = const {
    #required: _f$required,
    #reward: _f$reward,
    #nouns: _f$nouns,
    #modifier: _f$modifier,
  };

  static Tier _instantiate(DecodingData data) {
    return Tier(
        required: data.dec(_f$required),
        reward: data.dec(_f$reward),
        nouns: data.dec(_f$nouns),
        modifier: data.dec(_f$modifier));
  }

  @override
  final Function instantiate = _instantiate;

  static Tier fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Tier>(map);
  }

  static Tier deserialize(String json) {
    return ensureInitialized().decodeJson<Tier>(json);
  }
}

mixin TierMappable {
  String serialize() {
    return TierMapper.ensureInitialized().encodeJson<Tier>(this as Tier);
  }

  Map<String, dynamic> toJson() {
    return TierMapper.ensureInitialized().encodeMap<Tier>(this as Tier);
  }

  TierCopyWith<Tier, Tier, Tier> get copyWith =>
      _TierCopyWithImpl(this as Tier, $identity, $identity);
  @override
  String toString() {
    return TierMapper.ensureInitialized().stringifyValue(this as Tier);
  }

  @override
  bool operator ==(Object other) {
    return TierMapper.ensureInitialized().equalsValue(this as Tier, other);
  }

  @override
  int get hashCode {
    return TierMapper.ensureInitialized().hashValue(this as Tier);
  }
}

extension TierValueCopy<$R, $Out> on ObjectCopyWith<$R, Tier, $Out> {
  TierCopyWith<$R, Tier, $Out> get $asTier =>
      $base.as((v, t, t2) => _TierCopyWithImpl(v, t, t2));
}

abstract class TierCopyWith<$R, $In extends Tier, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get nouns;
  $R call(
      {String? required,
      String? reward,
      List<String>? nouns,
      String? modifier});
  TierCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TierCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Tier, $Out>
    implements TierCopyWith<$R, Tier, $Out> {
  _TierCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Tier> $mapper = TierMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get nouns =>
      ListCopyWith($value.nouns, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(nouns: v));
  @override
  $R call(
          {String? required,
          String? reward,
          List<String>? nouns,
          String? modifier}) =>
      $apply(FieldCopyWithData({
        if (required != null) #required: required,
        if (reward != null) #reward: reward,
        if (nouns != null) #nouns: nouns,
        if (modifier != null) #modifier: modifier
      }));
  @override
  Tier $make(CopyWithData data) => Tier(
      required: data.get(#required, or: $value.required),
      reward: data.get(#reward, or: $value.reward),
      nouns: data.get(#nouns, or: $value.nouns),
      modifier: data.get(#modifier, or: $value.modifier));

  @override
  TierCopyWith<$R2, Tier, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TierCopyWithImpl($value, $cast, t);
}
