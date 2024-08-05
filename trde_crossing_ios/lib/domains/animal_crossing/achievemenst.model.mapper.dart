// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'achievemenst.model.dart';

class AchievementMapper extends ClassMapperBase<Achievement> {
  AchievementMapper._();

  static AchievementMapper? _instance;
  static AchievementMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AchievementMapper._());
      TranslationMapper.ensureInitialized();
      TierMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Achievement';

  static String _$sourceSheet(Achievement v) => v.sourceSheet;
  static const Field<Achievement, String> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet);
  static String _$name(Achievement v) => v.name;
  static const Field<Achievement, String> _f$name = Field('name', _$name);
  static String _$achievementDescription(Achievement v) =>
      v.achievementDescription;
  static const Field<Achievement, String> _f$achievementDescription =
      Field('achievementDescription', _$achievementDescription);
  static String _$achievementCriteria(Achievement v) => v.achievementCriteria;
  static const Field<Achievement, String> _f$achievementCriteria =
      Field('achievementCriteria', _$achievementCriteria);
  static int _$num(Achievement v) => v.num;
  static const Field<Achievement, int> _f$num = Field('num', _$num);
  static dynamic _$internalId(Achievement v) => v.internalId;
  static const Field<Achievement, dynamic> _f$internalId =
      Field('internalId', _$internalId);
  static String _$internalName(Achievement v) => v.internalName;
  static const Field<Achievement, String> _f$internalName =
      Field('internalName', _$internalName);
  static String _$internalCategory(Achievement v) => v.internalCategory;
  static const Field<Achievement, String> _f$internalCategory =
      Field('internalCategory', _$internalCategory);
  static dynamic _$numOfTiers(Achievement v) => v.numOfTiers;
  static const Field<Achievement, dynamic> _f$numOfTiers =
      Field('numOfTiers', _$numOfTiers);
  static bool _$sequential(Achievement v) => v.sequential;
  static const Field<Achievement, bool> _f$sequential =
      Field('sequential', _$sequential);
  static String _$versionAdded(Achievement v) => v.versionAdded;
  static const Field<Achievement, String> _f$versionAdded =
      Field('versionAdded', _$versionAdded);
  static String _$uniqueEntryId(Achievement v) => v.uniqueEntryId;
  static const Field<Achievement, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId);
  static Translation? _$translations(Achievement v) => v.translations;
  static const Field<Achievement, Translation> _f$translations =
      Field('translations', _$translations);
  static Map<String, Tier> _$tiers(Achievement v) => v.tiers;
  static const Field<Achievement, Map<String, Tier>> _f$tiers =
      Field('tiers', _$tiers);

  @override
  final MappableFields<Achievement> fields = const {
    #sourceSheet: _f$sourceSheet,
    #name: _f$name,
    #achievementDescription: _f$achievementDescription,
    #achievementCriteria: _f$achievementCriteria,
    #num: _f$num,
    #internalId: _f$internalId,
    #internalName: _f$internalName,
    #internalCategory: _f$internalCategory,
    #numOfTiers: _f$numOfTiers,
    #sequential: _f$sequential,
    #versionAdded: _f$versionAdded,
    #uniqueEntryId: _f$uniqueEntryId,
    #translations: _f$translations,
    #tiers: _f$tiers,
  };

  static Achievement _instantiate(DecodingData data) {
    return Achievement(
        sourceSheet: data.dec(_f$sourceSheet),
        name: data.dec(_f$name),
        achievementDescription: data.dec(_f$achievementDescription),
        achievementCriteria: data.dec(_f$achievementCriteria),
        num: data.dec(_f$num),
        internalId: data.dec(_f$internalId),
        internalName: data.dec(_f$internalName),
        internalCategory: data.dec(_f$internalCategory),
        numOfTiers: data.dec(_f$numOfTiers),
        sequential: data.dec(_f$sequential),
        versionAdded: data.dec(_f$versionAdded),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        translations: data.dec(_f$translations),
        tiers: data.dec(_f$tiers));
  }

  @override
  final Function instantiate = _instantiate;

  static Achievement fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Achievement>(map);
  }

  static Achievement deserialize(String json) {
    return ensureInitialized().decodeJson<Achievement>(json);
  }
}

mixin AchievementMappable {
  String serialize() {
    return AchievementMapper.ensureInitialized()
        .encodeJson<Achievement>(this as Achievement);
  }

  Map<String, dynamic> toJson() {
    return AchievementMapper.ensureInitialized()
        .encodeMap<Achievement>(this as Achievement);
  }

  AchievementCopyWith<Achievement, Achievement, Achievement> get copyWith =>
      _AchievementCopyWithImpl(this as Achievement, $identity, $identity);
  @override
  String toString() {
    return AchievementMapper.ensureInitialized()
        .stringifyValue(this as Achievement);
  }

  @override
  bool operator ==(Object other) {
    return AchievementMapper.ensureInitialized()
        .equalsValue(this as Achievement, other);
  }

  @override
  int get hashCode {
    return AchievementMapper.ensureInitialized().hashValue(this as Achievement);
  }
}

extension AchievementValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Achievement, $Out> {
  AchievementCopyWith<$R, Achievement, $Out> get $asAchievement =>
      $base.as((v, t, t2) => _AchievementCopyWithImpl(v, t, t2));
}

abstract class AchievementCopyWith<$R, $In extends Achievement, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TranslationCopyWith<$R, Translation, Translation>? get translations;
  MapCopyWith<$R, String, Tier, TierCopyWith<$R, Tier, Tier>> get tiers;
  $R call(
      {String? sourceSheet,
      String? name,
      String? achievementDescription,
      String? achievementCriteria,
      int? num,
      dynamic internalId,
      String? internalName,
      String? internalCategory,
      dynamic numOfTiers,
      bool? sequential,
      String? versionAdded,
      String? uniqueEntryId,
      Translation? translations,
      Map<String, Tier>? tiers});
  AchievementCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AchievementCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Achievement, $Out>
    implements AchievementCopyWith<$R, Achievement, $Out> {
  _AchievementCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Achievement> $mapper =
      AchievementMapper.ensureInitialized();
  @override
  TranslationCopyWith<$R, Translation, Translation>? get translations =>
      $value.translations?.copyWith.$chain((v) => call(translations: v));
  @override
  MapCopyWith<$R, String, Tier, TierCopyWith<$R, Tier, Tier>> get tiers =>
      MapCopyWith(
          $value.tiers, (v, t) => v.copyWith.$chain(t), (v) => call(tiers: v));
  @override
  $R call(
          {String? sourceSheet,
          String? name,
          String? achievementDescription,
          String? achievementCriteria,
          int? num,
          Object? internalId = $none,
          String? internalName,
          String? internalCategory,
          Object? numOfTiers = $none,
          bool? sequential,
          String? versionAdded,
          String? uniqueEntryId,
          Object? translations = $none,
          Map<String, Tier>? tiers}) =>
      $apply(FieldCopyWithData({
        if (sourceSheet != null) #sourceSheet: sourceSheet,
        if (name != null) #name: name,
        if (achievementDescription != null)
          #achievementDescription: achievementDescription,
        if (achievementCriteria != null)
          #achievementCriteria: achievementCriteria,
        if (num != null) #num: num,
        if (internalId != $none) #internalId: internalId,
        if (internalName != null) #internalName: internalName,
        if (internalCategory != null) #internalCategory: internalCategory,
        if (numOfTiers != $none) #numOfTiers: numOfTiers,
        if (sequential != null) #sequential: sequential,
        if (versionAdded != null) #versionAdded: versionAdded,
        if (uniqueEntryId != null) #uniqueEntryId: uniqueEntryId,
        if (translations != $none) #translations: translations,
        if (tiers != null) #tiers: tiers
      }));
  @override
  Achievement $make(CopyWithData data) => Achievement(
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      name: data.get(#name, or: $value.name),
      achievementDescription:
          data.get(#achievementDescription, or: $value.achievementDescription),
      achievementCriteria:
          data.get(#achievementCriteria, or: $value.achievementCriteria),
      num: data.get(#num, or: $value.num),
      internalId: data.get(#internalId, or: $value.internalId),
      internalName: data.get(#internalName, or: $value.internalName),
      internalCategory:
          data.get(#internalCategory, or: $value.internalCategory),
      numOfTiers: data.get(#numOfTiers, or: $value.numOfTiers),
      sequential: data.get(#sequential, or: $value.sequential),
      versionAdded: data.get(#versionAdded, or: $value.versionAdded),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      translations: data.get(#translations, or: $value.translations),
      tiers: data.get(#tiers, or: $value.tiers));

  @override
  AchievementCopyWith<$R2, Achievement, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AchievementCopyWithImpl($value, $cast, t);
}
