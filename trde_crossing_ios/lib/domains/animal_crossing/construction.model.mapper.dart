// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'construction.model.dart';

class ConstructionMapper extends ClassMapperBase<Construction> {
  ConstructionMapper._();

  static ConstructionMapper? _instance;
  static ConstructionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConstructionMapper._());
      ConstructionSourceMapper.ensureInitialized();
      TranslationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Construction';

  static String _$sourceSheet(Construction v) => v.sourceSheet;
  static const Field<Construction, String> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet);
  static String? _$name(Construction v) => v.name;
  static const Field<Construction, String> _f$name = Field('name', _$name);
  static String _$image(Construction v) => v.image;
  static const Field<Construction, String> _f$image = Field('image', _$image);
  static int? _$buy(Construction v) => v.buy;
  static const Field<Construction, int> _f$buy = Field('buy', _$buy);
  static String? _$category(Construction v) => v.category;
  static const Field<Construction, String> _f$category =
      Field('category', _$category);
  static List<ConstructionSource>? _$source(Construction v) => v.source;
  static const Field<Construction, List<ConstructionSource>> _f$source =
      Field('source', _$source);
  static String _$filename(Construction v) => v.filename;
  static const Field<Construction, String> _f$filename =
      Field('filename', _$filename);
  static String _$versionAdded(Construction v) => v.versionAdded;
  static const Field<Construction, String> _f$versionAdded =
      Field('versionAdded', _$versionAdded);
  static String _$uniqueEntryId(Construction v) => v.uniqueEntryId;
  static const Field<Construction, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId);
  static Translation? _$translations(Construction v) => v.translations;
  static const Field<Construction, Translation> _f$translations =
      Field('translations', _$translations);

  @override
  final MappableFields<Construction> fields = const {
    #sourceSheet: _f$sourceSheet,
    #name: _f$name,
    #image: _f$image,
    #buy: _f$buy,
    #category: _f$category,
    #source: _f$source,
    #filename: _f$filename,
    #versionAdded: _f$versionAdded,
    #uniqueEntryId: _f$uniqueEntryId,
    #translations: _f$translations,
  };

  static Construction _instantiate(DecodingData data) {
    return Construction(
        sourceSheet: data.dec(_f$sourceSheet),
        name: data.dec(_f$name),
        image: data.dec(_f$image),
        buy: data.dec(_f$buy),
        category: data.dec(_f$category),
        source: data.dec(_f$source),
        filename: data.dec(_f$filename),
        versionAdded: data.dec(_f$versionAdded),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        translations: data.dec(_f$translations));
  }

  @override
  final Function instantiate = _instantiate;

  static Construction fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Construction>(map);
  }

  static Construction deserialize(String json) {
    return ensureInitialized().decodeJson<Construction>(json);
  }
}

mixin ConstructionMappable {
  String serialize() {
    return ConstructionMapper.ensureInitialized()
        .encodeJson<Construction>(this as Construction);
  }

  Map<String, dynamic> toJson() {
    return ConstructionMapper.ensureInitialized()
        .encodeMap<Construction>(this as Construction);
  }

  ConstructionCopyWith<Construction, Construction, Construction> get copyWith =>
      _ConstructionCopyWithImpl(this as Construction, $identity, $identity);
  @override
  String toString() {
    return ConstructionMapper.ensureInitialized()
        .stringifyValue(this as Construction);
  }

  @override
  bool operator ==(Object other) {
    return ConstructionMapper.ensureInitialized()
        .equalsValue(this as Construction, other);
  }

  @override
  int get hashCode {
    return ConstructionMapper.ensureInitialized()
        .hashValue(this as Construction);
  }
}

extension ConstructionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Construction, $Out> {
  ConstructionCopyWith<$R, Construction, $Out> get $asConstruction =>
      $base.as((v, t, t2) => _ConstructionCopyWithImpl(v, t, t2));
}

abstract class ConstructionCopyWith<$R, $In extends Construction, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ConstructionSource,
      ObjectCopyWith<$R, ConstructionSource, ConstructionSource>>? get source;
  TranslationCopyWith<$R, Translation, Translation>? get translations;
  $R call(
      {String? sourceSheet,
      String? name,
      String? image,
      int? buy,
      String? category,
      List<ConstructionSource>? source,
      String? filename,
      String? versionAdded,
      String? uniqueEntryId,
      Translation? translations});
  ConstructionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ConstructionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Construction, $Out>
    implements ConstructionCopyWith<$R, Construction, $Out> {
  _ConstructionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Construction> $mapper =
      ConstructionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ConstructionSource,
          ObjectCopyWith<$R, ConstructionSource, ConstructionSource>>?
      get source => $value.source != null
          ? ListCopyWith($value.source!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(source: v))
          : null;
  @override
  TranslationCopyWith<$R, Translation, Translation>? get translations =>
      $value.translations?.copyWith.$chain((v) => call(translations: v));
  @override
  $R call(
          {String? sourceSheet,
          Object? name = $none,
          String? image,
          Object? buy = $none,
          Object? category = $none,
          Object? source = $none,
          String? filename,
          String? versionAdded,
          String? uniqueEntryId,
          Object? translations = $none}) =>
      $apply(FieldCopyWithData({
        if (sourceSheet != null) #sourceSheet: sourceSheet,
        if (name != $none) #name: name,
        if (image != null) #image: image,
        if (buy != $none) #buy: buy,
        if (category != $none) #category: category,
        if (source != $none) #source: source,
        if (filename != null) #filename: filename,
        if (versionAdded != null) #versionAdded: versionAdded,
        if (uniqueEntryId != null) #uniqueEntryId: uniqueEntryId,
        if (translations != $none) #translations: translations
      }));
  @override
  Construction $make(CopyWithData data) => Construction(
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      name: data.get(#name, or: $value.name),
      image: data.get(#image, or: $value.image),
      buy: data.get(#buy, or: $value.buy),
      category: data.get(#category, or: $value.category),
      source: data.get(#source, or: $value.source),
      filename: data.get(#filename, or: $value.filename),
      versionAdded: data.get(#versionAdded, or: $value.versionAdded),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      translations: data.get(#translations, or: $value.translations));

  @override
  ConstructionCopyWith<$R2, Construction, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ConstructionCopyWithImpl($value, $cast, t);
}
