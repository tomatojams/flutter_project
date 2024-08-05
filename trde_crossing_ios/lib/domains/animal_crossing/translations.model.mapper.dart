// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'translations.model.dart';

class TranslationMapper extends ClassMapperBase<Translation> {
  TranslationMapper._();

  static TranslationMapper? _instance;
  static TranslationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TranslationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Translation';

  static String? _$sourceSheet(Translation v) => v.sourceSheet;
  static const Field<Translation, String> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet, opt: true);
  static String? _$id(Translation v) => v.id;
  static const Field<Translation, String> _f$id =
      Field('id', _$id, hook: _IdHook());
  static String _$eUde(Translation v) => v.eUde;
  static const Field<Translation, String> _f$eUde = Field('eUde', _$eUde);
  static String _$eUen(Translation v) => v.eUen;
  static const Field<Translation, String> _f$eUen = Field('eUen', _$eUen);
  static String _$eUit(Translation v) => v.eUit;
  static const Field<Translation, String> _f$eUit = Field('eUit', _$eUit);
  static String _$eUnl(Translation v) => v.eUnl;
  static const Field<Translation, String> _f$eUnl = Field('eUnl', _$eUnl);
  static String _$eUru(Translation v) => v.eUru;
  static const Field<Translation, String> _f$eUru = Field('eUru', _$eUru);
  static String _$eUfr(Translation v) => v.eUfr;
  static const Field<Translation, String> _f$eUfr = Field('eUfr', _$eUfr);
  static String _$eUes(Translation v) => v.eUes;
  static const Field<Translation, String> _f$eUes = Field('eUes', _$eUes);
  static String _$uSen(Translation v) => v.uSen;
  static const Field<Translation, String> _f$uSen = Field('uSen', _$uSen);
  static String _$uSfr(Translation v) => v.uSfr;
  static const Field<Translation, String> _f$uSfr = Field('uSfr', _$uSfr);
  static String _$uSes(Translation v) => v.uSes;
  static const Field<Translation, String> _f$uSes = Field('uSes', _$uSes);
  static String _$jPja(Translation v) => v.jPja;
  static const Field<Translation, String> _f$jPja = Field('jPja', _$jPja);
  static String _$kRko(Translation v) => v.kRko;
  static const Field<Translation, String> _f$kRko = Field('kRko', _$kRko);
  static String _$tWzh(Translation v) => v.tWzh;
  static const Field<Translation, String> _f$tWzh = Field('tWzh', _$tWzh);
  static String _$cNzh(Translation v) => v.cNzh;
  static const Field<Translation, String> _f$cNzh = Field('cNzh', _$cNzh);
  static bool? _$plural(Translation v) => v.plural;
  static const Field<Translation, bool> _f$plural = Field('plural', _$plural);

  @override
  final MappableFields<Translation> fields = const {
    #sourceSheet: _f$sourceSheet,
    #id: _f$id,
    #eUde: _f$eUde,
    #eUen: _f$eUen,
    #eUit: _f$eUit,
    #eUnl: _f$eUnl,
    #eUru: _f$eUru,
    #eUfr: _f$eUfr,
    #eUes: _f$eUes,
    #uSen: _f$uSen,
    #uSfr: _f$uSfr,
    #uSes: _f$uSes,
    #jPja: _f$jPja,
    #kRko: _f$kRko,
    #tWzh: _f$tWzh,
    #cNzh: _f$cNzh,
    #plural: _f$plural,
  };

  static Translation _instantiate(DecodingData data) {
    return Translation(
        sourceSheet: data.dec(_f$sourceSheet),
        id: data.dec(_f$id),
        eUde: data.dec(_f$eUde),
        eUen: data.dec(_f$eUen),
        eUit: data.dec(_f$eUit),
        eUnl: data.dec(_f$eUnl),
        eUru: data.dec(_f$eUru),
        eUfr: data.dec(_f$eUfr),
        eUes: data.dec(_f$eUes),
        uSen: data.dec(_f$uSen),
        uSfr: data.dec(_f$uSfr),
        uSes: data.dec(_f$uSes),
        jPja: data.dec(_f$jPja),
        kRko: data.dec(_f$kRko),
        tWzh: data.dec(_f$tWzh),
        cNzh: data.dec(_f$cNzh),
        plural: data.dec(_f$plural));
  }

  @override
  final Function instantiate = _instantiate;

  static Translation fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Translation>(map);
  }

  static Translation deserialize(String json) {
    return ensureInitialized().decodeJson<Translation>(json);
  }
}

mixin TranslationMappable {
  String serialize() {
    return TranslationMapper.ensureInitialized()
        .encodeJson<Translation>(this as Translation);
  }

  Map<String, dynamic> toJson() {
    return TranslationMapper.ensureInitialized()
        .encodeMap<Translation>(this as Translation);
  }

  TranslationCopyWith<Translation, Translation, Translation> get copyWith =>
      _TranslationCopyWithImpl(this as Translation, $identity, $identity);
  @override
  String toString() {
    return TranslationMapper.ensureInitialized()
        .stringifyValue(this as Translation);
  }

  @override
  bool operator ==(Object other) {
    return TranslationMapper.ensureInitialized()
        .equalsValue(this as Translation, other);
  }

  @override
  int get hashCode {
    return TranslationMapper.ensureInitialized().hashValue(this as Translation);
  }
}

extension TranslationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Translation, $Out> {
  TranslationCopyWith<$R, Translation, $Out> get $asTranslation =>
      $base.as((v, t, t2) => _TranslationCopyWithImpl(v, t, t2));
}

abstract class TranslationCopyWith<$R, $In extends Translation, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? sourceSheet,
      String? id,
      String? eUde,
      String? eUen,
      String? eUit,
      String? eUnl,
      String? eUru,
      String? eUfr,
      String? eUes,
      String? uSen,
      String? uSfr,
      String? uSes,
      String? jPja,
      String? kRko,
      String? tWzh,
      String? cNzh,
      bool? plural});
  TranslationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TranslationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Translation, $Out>
    implements TranslationCopyWith<$R, Translation, $Out> {
  _TranslationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Translation> $mapper =
      TranslationMapper.ensureInitialized();
  @override
  $R call(
          {Object? sourceSheet = $none,
          Object? id = $none,
          String? eUde,
          String? eUen,
          String? eUit,
          String? eUnl,
          String? eUru,
          String? eUfr,
          String? eUes,
          String? uSen,
          String? uSfr,
          String? uSes,
          String? jPja,
          String? kRko,
          String? tWzh,
          String? cNzh,
          Object? plural = $none}) =>
      $apply(FieldCopyWithData({
        if (sourceSheet != $none) #sourceSheet: sourceSheet,
        if (id != $none) #id: id,
        if (eUde != null) #eUde: eUde,
        if (eUen != null) #eUen: eUen,
        if (eUit != null) #eUit: eUit,
        if (eUnl != null) #eUnl: eUnl,
        if (eUru != null) #eUru: eUru,
        if (eUfr != null) #eUfr: eUfr,
        if (eUes != null) #eUes: eUes,
        if (uSen != null) #uSen: uSen,
        if (uSfr != null) #uSfr: uSfr,
        if (uSes != null) #uSes: uSes,
        if (jPja != null) #jPja: jPja,
        if (kRko != null) #kRko: kRko,
        if (tWzh != null) #tWzh: tWzh,
        if (cNzh != null) #cNzh: cNzh,
        if (plural != $none) #plural: plural
      }));
  @override
  Translation $make(CopyWithData data) => Translation(
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      id: data.get(#id, or: $value.id),
      eUde: data.get(#eUde, or: $value.eUde),
      eUen: data.get(#eUen, or: $value.eUen),
      eUit: data.get(#eUit, or: $value.eUit),
      eUnl: data.get(#eUnl, or: $value.eUnl),
      eUru: data.get(#eUru, or: $value.eUru),
      eUfr: data.get(#eUfr, or: $value.eUfr),
      eUes: data.get(#eUes, or: $value.eUes),
      uSen: data.get(#uSen, or: $value.uSen),
      uSfr: data.get(#uSfr, or: $value.uSfr),
      uSes: data.get(#uSes, or: $value.uSes),
      jPja: data.get(#jPja, or: $value.jPja),
      kRko: data.get(#kRko, or: $value.kRko),
      tWzh: data.get(#tWzh, or: $value.tWzh),
      cNzh: data.get(#cNzh, or: $value.cNzh),
      plural: data.get(#plural, or: $value.plural));

  @override
  TranslationCopyWith<$R2, Translation, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TranslationCopyWithImpl($value, $cast, t);
}
