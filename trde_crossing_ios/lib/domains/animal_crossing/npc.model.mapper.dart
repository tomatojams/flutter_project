// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'npc.model.dart';

class NpcMapper extends ClassMapperBase<Npc> {
  NpcMapper._();

  static NpcMapper? _instance;
  static NpcMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NpcMapper._());
      GenderMapper.ensureInitialized();
      TranslationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Npc';

  static String _$sourceSheet(Npc v) => v.sourceSheet;
  static const Field<Npc, String> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet);
  static String _$name(Npc v) => v.name;
  static const Field<Npc, String> _f$name = Field('name', _$name);
  static String? _$iconImage(Npc v) => v.iconImage;
  static const Field<Npc, String> _f$iconImage =
      Field('iconImage', _$iconImage, opt: true);
  static String? _$photoImage(Npc v) => v.photoImage;
  static const Field<Npc, String> _f$photoImage =
      Field('photoImage', _$photoImage, opt: true);
  static Gender _$gender(Npc v) => v.gender;
  static const Field<Npc, Gender> _f$gender = Field('gender', _$gender);
  static Gender _$genderAsia(Npc v) => v.genderAsia;
  static const Field<Npc, Gender> _f$genderAsia =
      Field('genderAsia', _$genderAsia);
  static String? _$versionAdded(Npc v) => v.versionAdded;
  static const Field<Npc, String> _f$versionAdded =
      Field('versionAdded', _$versionAdded, opt: true);
  static String _$npcId(Npc v) => v.npcId;
  static const Field<Npc, String> _f$npcId = Field('npcId', _$npcId);
  static int _$internalId(Npc v) => v.internalId;
  static const Field<Npc, int> _f$internalId =
      Field('internalId', _$internalId);
  static String _$birthday(Npc v) => v.birthday;
  static const Field<Npc, String> _f$birthday = Field('birthday', _$birthday);
  static String? _$nameColor(Npc v) => v.nameColor;
  static const Field<Npc, String> _f$nameColor =
      Field('nameColor', _$nameColor, opt: true);
  static String? _$bubbleColor(Npc v) => v.bubbleColor;
  static const Field<Npc, String> _f$bubbleColor =
      Field('bubbleColor', _$bubbleColor, opt: true);
  static String? _$iconFilename(Npc v) => v.iconFilename;
  static const Field<Npc, String> _f$iconFilename =
      Field('iconFilename', _$iconFilename, opt: true);
  static String? _$photoFilename(Npc v) => v.photoFilename;
  static const Field<Npc, String> _f$photoFilename =
      Field('photoFilename', _$photoFilename, opt: true);
  static String _$uniqueEntryId(Npc v) => v.uniqueEntryId;
  static const Field<Npc, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId);
  static Translation _$translations(Npc v) => v.translations;
  static const Field<Npc, Translation> _f$translations =
      Field('translations', _$translations);

  @override
  final MappableFields<Npc> fields = const {
    #sourceSheet: _f$sourceSheet,
    #name: _f$name,
    #iconImage: _f$iconImage,
    #photoImage: _f$photoImage,
    #gender: _f$gender,
    #genderAsia: _f$genderAsia,
    #versionAdded: _f$versionAdded,
    #npcId: _f$npcId,
    #internalId: _f$internalId,
    #birthday: _f$birthday,
    #nameColor: _f$nameColor,
    #bubbleColor: _f$bubbleColor,
    #iconFilename: _f$iconFilename,
    #photoFilename: _f$photoFilename,
    #uniqueEntryId: _f$uniqueEntryId,
    #translations: _f$translations,
  };

  static Npc _instantiate(DecodingData data) {
    return Npc(
        sourceSheet: data.dec(_f$sourceSheet),
        name: data.dec(_f$name),
        iconImage: data.dec(_f$iconImage),
        photoImage: data.dec(_f$photoImage),
        gender: data.dec(_f$gender),
        genderAsia: data.dec(_f$genderAsia),
        versionAdded: data.dec(_f$versionAdded),
        npcId: data.dec(_f$npcId),
        internalId: data.dec(_f$internalId),
        birthday: data.dec(_f$birthday),
        nameColor: data.dec(_f$nameColor),
        bubbleColor: data.dec(_f$bubbleColor),
        iconFilename: data.dec(_f$iconFilename),
        photoFilename: data.dec(_f$photoFilename),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        translations: data.dec(_f$translations));
  }

  @override
  final Function instantiate = _instantiate;

  static Npc fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Npc>(map);
  }

  static Npc deserialize(String json) {
    return ensureInitialized().decodeJson<Npc>(json);
  }
}

mixin NpcMappable {
  String serialize() {
    return NpcMapper.ensureInitialized().encodeJson<Npc>(this as Npc);
  }

  Map<String, dynamic> toJson() {
    return NpcMapper.ensureInitialized().encodeMap<Npc>(this as Npc);
  }

  NpcCopyWith<Npc, Npc, Npc> get copyWith =>
      _NpcCopyWithImpl(this as Npc, $identity, $identity);
  @override
  String toString() {
    return NpcMapper.ensureInitialized().stringifyValue(this as Npc);
  }

  @override
  bool operator ==(Object other) {
    return NpcMapper.ensureInitialized().equalsValue(this as Npc, other);
  }

  @override
  int get hashCode {
    return NpcMapper.ensureInitialized().hashValue(this as Npc);
  }
}

extension NpcValueCopy<$R, $Out> on ObjectCopyWith<$R, Npc, $Out> {
  NpcCopyWith<$R, Npc, $Out> get $asNpc =>
      $base.as((v, t, t2) => _NpcCopyWithImpl(v, t, t2));
}

abstract class NpcCopyWith<$R, $In extends Npc, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TranslationCopyWith<$R, Translation, Translation> get translations;
  $R call(
      {String? sourceSheet,
      String? name,
      String? iconImage,
      String? photoImage,
      Gender? gender,
      Gender? genderAsia,
      String? versionAdded,
      String? npcId,
      int? internalId,
      String? birthday,
      String? nameColor,
      String? bubbleColor,
      String? iconFilename,
      String? photoFilename,
      String? uniqueEntryId,
      Translation? translations});
  NpcCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NpcCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Npc, $Out>
    implements NpcCopyWith<$R, Npc, $Out> {
  _NpcCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Npc> $mapper = NpcMapper.ensureInitialized();
  @override
  TranslationCopyWith<$R, Translation, Translation> get translations =>
      $value.translations.copyWith.$chain((v) => call(translations: v));
  @override
  $R call(
          {String? sourceSheet,
          String? name,
          Object? iconImage = $none,
          Object? photoImage = $none,
          Gender? gender,
          Gender? genderAsia,
          Object? versionAdded = $none,
          String? npcId,
          int? internalId,
          String? birthday,
          Object? nameColor = $none,
          Object? bubbleColor = $none,
          Object? iconFilename = $none,
          Object? photoFilename = $none,
          String? uniqueEntryId,
          Translation? translations}) =>
      $apply(FieldCopyWithData({
        if (sourceSheet != null) #sourceSheet: sourceSheet,
        if (name != null) #name: name,
        if (iconImage != $none) #iconImage: iconImage,
        if (photoImage != $none) #photoImage: photoImage,
        if (gender != null) #gender: gender,
        if (genderAsia != null) #genderAsia: genderAsia,
        if (versionAdded != $none) #versionAdded: versionAdded,
        if (npcId != null) #npcId: npcId,
        if (internalId != null) #internalId: internalId,
        if (birthday != null) #birthday: birthday,
        if (nameColor != $none) #nameColor: nameColor,
        if (bubbleColor != $none) #bubbleColor: bubbleColor,
        if (iconFilename != $none) #iconFilename: iconFilename,
        if (photoFilename != $none) #photoFilename: photoFilename,
        if (uniqueEntryId != null) #uniqueEntryId: uniqueEntryId,
        if (translations != null) #translations: translations
      }));
  @override
  Npc $make(CopyWithData data) => Npc(
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      name: data.get(#name, or: $value.name),
      iconImage: data.get(#iconImage, or: $value.iconImage),
      photoImage: data.get(#photoImage, or: $value.photoImage),
      gender: data.get(#gender, or: $value.gender),
      genderAsia: data.get(#genderAsia, or: $value.genderAsia),
      versionAdded: data.get(#versionAdded, or: $value.versionAdded),
      npcId: data.get(#npcId, or: $value.npcId),
      internalId: data.get(#internalId, or: $value.internalId),
      birthday: data.get(#birthday, or: $value.birthday),
      nameColor: data.get(#nameColor, or: $value.nameColor),
      bubbleColor: data.get(#bubbleColor, or: $value.bubbleColor),
      iconFilename: data.get(#iconFilename, or: $value.iconFilename),
      photoFilename: data.get(#photoFilename, or: $value.photoFilename),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      translations: data.get(#translations, or: $value.translations));

  @override
  NpcCopyWith<$R2, Npc, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NpcCopyWithImpl($value, $cast, t);
}
