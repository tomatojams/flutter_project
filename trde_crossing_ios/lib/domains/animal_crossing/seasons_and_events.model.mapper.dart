// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'seasons_and_events.model.dart';

class SeasonsAndEventsMapper extends ClassMapperBase<SeasonsAndEvents> {
  SeasonsAndEventsMapper._();

  static SeasonsAndEventsMapper? _instance;
  static SeasonsAndEventsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeasonsAndEventsMapper._());
      TranslationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SeasonsAndEvents';

  static String _$sourceSheet(SeasonsAndEvents v) => v.sourceSheet;
  static const Field<SeasonsAndEvents, String> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet);
  static String _$name(SeasonsAndEvents v) => v.name;
  static const Field<SeasonsAndEvents, String> _f$name = Field('name', _$name);
  static String _$type(SeasonsAndEvents v) => v.type;
  static const Field<SeasonsAndEvents, String> _f$type = Field('type', _$type);
  static String _$versionAdded(SeasonsAndEvents v) => v.versionAdded;
  static const Field<SeasonsAndEvents, String> _f$versionAdded =
      Field('versionAdded', _$versionAdded);
  static String _$versionLastUpdated(SeasonsAndEvents v) =>
      v.versionLastUpdated;
  static const Field<SeasonsAndEvents, String> _f$versionLastUpdated =
      Field('versionLastUpdated', _$versionLastUpdated);
  static String? _$year(SeasonsAndEvents v) => v.year;
  static const Field<SeasonsAndEvents, String> _f$year =
      Field('year', _$year, opt: true, hook: _YearHook());
  static String? _$datesNorthernHemisphere(SeasonsAndEvents v) =>
      v.datesNorthernHemisphere;
  static const Field<SeasonsAndEvents, String> _f$datesNorthernHemisphere =
      Field('datesNorthernHemisphere', _$datesNorthernHemisphere, opt: true);
  static String? _$datesSouthernHemisphere(SeasonsAndEvents v) =>
      v.datesSouthernHemisphere;
  static const Field<SeasonsAndEvents, String> _f$datesSouthernHemisphere =
      Field('datesSouthernHemisphere', _$datesSouthernHemisphere, opt: true);
  static String _$displayName(SeasonsAndEvents v) => v.displayName;
  static const Field<SeasonsAndEvents, String> _f$displayName =
      Field('displayName', _$displayName);
  static String? _$eventNotes(SeasonsAndEvents v) => v.eventNotes;
  static const Field<SeasonsAndEvents, String> _f$eventNotes =
      Field('eventNotes', _$eventNotes, opt: true);
  static List<String>? _$internalLabel(SeasonsAndEvents v) => v.internalLabel;
  static const Field<SeasonsAndEvents, List<String>> _f$internalLabel =
      Field('internalLabel', _$internalLabel, opt: true);
  static String _$unlockDate(SeasonsAndEvents v) => v.unlockDate;
  static const Field<SeasonsAndEvents, String> _f$unlockDate =
      Field('unlockDate', _$unlockDate);
  static String? _$unlockMethod(SeasonsAndEvents v) => v.unlockMethod;
  static const Field<SeasonsAndEvents, String> _f$unlockMethod = Field(
      'unlockMethod', _$unlockMethod,
      opt: true, hook: _UnlockMethodHook());
  static String _$uniqueEntryId(SeasonsAndEvents v) => v.uniqueEntryId;
  static const Field<SeasonsAndEvents, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId);
  static Translation? _$translations(SeasonsAndEvents v) => v.translations;
  static const Field<SeasonsAndEvents, Translation> _f$translations =
      Field('translations', _$translations, opt: true);

  @override
  final MappableFields<SeasonsAndEvents> fields = const {
    #sourceSheet: _f$sourceSheet,
    #name: _f$name,
    #type: _f$type,
    #versionAdded: _f$versionAdded,
    #versionLastUpdated: _f$versionLastUpdated,
    #year: _f$year,
    #datesNorthernHemisphere: _f$datesNorthernHemisphere,
    #datesSouthernHemisphere: _f$datesSouthernHemisphere,
    #displayName: _f$displayName,
    #eventNotes: _f$eventNotes,
    #internalLabel: _f$internalLabel,
    #unlockDate: _f$unlockDate,
    #unlockMethod: _f$unlockMethod,
    #uniqueEntryId: _f$uniqueEntryId,
    #translations: _f$translations,
  };

  static SeasonsAndEvents _instantiate(DecodingData data) {
    return SeasonsAndEvents(
        sourceSheet: data.dec(_f$sourceSheet),
        name: data.dec(_f$name),
        type: data.dec(_f$type),
        versionAdded: data.dec(_f$versionAdded),
        versionLastUpdated: data.dec(_f$versionLastUpdated),
        year: data.dec(_f$year),
        datesNorthernHemisphere: data.dec(_f$datesNorthernHemisphere),
        datesSouthernHemisphere: data.dec(_f$datesSouthernHemisphere),
        displayName: data.dec(_f$displayName),
        eventNotes: data.dec(_f$eventNotes),
        internalLabel: data.dec(_f$internalLabel),
        unlockDate: data.dec(_f$unlockDate),
        unlockMethod: data.dec(_f$unlockMethod),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        translations: data.dec(_f$translations));
  }

  @override
  final Function instantiate = _instantiate;

  static SeasonsAndEvents fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SeasonsAndEvents>(map);
  }

  static SeasonsAndEvents deserialize(String json) {
    return ensureInitialized().decodeJson<SeasonsAndEvents>(json);
  }
}

mixin SeasonsAndEventsMappable {
  String serialize() {
    return SeasonsAndEventsMapper.ensureInitialized()
        .encodeJson<SeasonsAndEvents>(this as SeasonsAndEvents);
  }

  Map<String, dynamic> toJson() {
    return SeasonsAndEventsMapper.ensureInitialized()
        .encodeMap<SeasonsAndEvents>(this as SeasonsAndEvents);
  }

  SeasonsAndEventsCopyWith<SeasonsAndEvents, SeasonsAndEvents, SeasonsAndEvents>
      get copyWith => _SeasonsAndEventsCopyWithImpl(
          this as SeasonsAndEvents, $identity, $identity);
  @override
  String toString() {
    return SeasonsAndEventsMapper.ensureInitialized()
        .stringifyValue(this as SeasonsAndEvents);
  }

  @override
  bool operator ==(Object other) {
    return SeasonsAndEventsMapper.ensureInitialized()
        .equalsValue(this as SeasonsAndEvents, other);
  }

  @override
  int get hashCode {
    return SeasonsAndEventsMapper.ensureInitialized()
        .hashValue(this as SeasonsAndEvents);
  }
}

extension SeasonsAndEventsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SeasonsAndEvents, $Out> {
  SeasonsAndEventsCopyWith<$R, SeasonsAndEvents, $Out>
      get $asSeasonsAndEvents =>
          $base.as((v, t, t2) => _SeasonsAndEventsCopyWithImpl(v, t, t2));
}

abstract class SeasonsAndEventsCopyWith<$R, $In extends SeasonsAndEvents, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get internalLabel;
  TranslationCopyWith<$R, Translation, Translation>? get translations;
  $R call(
      {String? sourceSheet,
      String? name,
      String? type,
      String? versionAdded,
      String? versionLastUpdated,
      String? year,
      String? datesNorthernHemisphere,
      String? datesSouthernHemisphere,
      String? displayName,
      String? eventNotes,
      List<String>? internalLabel,
      String? unlockDate,
      String? unlockMethod,
      String? uniqueEntryId,
      Translation? translations});
  SeasonsAndEventsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SeasonsAndEventsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SeasonsAndEvents, $Out>
    implements SeasonsAndEventsCopyWith<$R, SeasonsAndEvents, $Out> {
  _SeasonsAndEventsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SeasonsAndEvents> $mapper =
      SeasonsAndEventsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get internalLabel => $value.internalLabel != null
          ? ListCopyWith(
              $value.internalLabel!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(internalLabel: v))
          : null;
  @override
  TranslationCopyWith<$R, Translation, Translation>? get translations =>
      $value.translations?.copyWith.$chain((v) => call(translations: v));
  @override
  $R call(
          {String? sourceSheet,
          String? name,
          String? type,
          String? versionAdded,
          String? versionLastUpdated,
          Object? year = $none,
          Object? datesNorthernHemisphere = $none,
          Object? datesSouthernHemisphere = $none,
          String? displayName,
          Object? eventNotes = $none,
          Object? internalLabel = $none,
          String? unlockDate,
          Object? unlockMethod = $none,
          String? uniqueEntryId,
          Object? translations = $none}) =>
      $apply(FieldCopyWithData({
        if (sourceSheet != null) #sourceSheet: sourceSheet,
        if (name != null) #name: name,
        if (type != null) #type: type,
        if (versionAdded != null) #versionAdded: versionAdded,
        if (versionLastUpdated != null) #versionLastUpdated: versionLastUpdated,
        if (year != $none) #year: year,
        if (datesNorthernHemisphere != $none)
          #datesNorthernHemisphere: datesNorthernHemisphere,
        if (datesSouthernHemisphere != $none)
          #datesSouthernHemisphere: datesSouthernHemisphere,
        if (displayName != null) #displayName: displayName,
        if (eventNotes != $none) #eventNotes: eventNotes,
        if (internalLabel != $none) #internalLabel: internalLabel,
        if (unlockDate != null) #unlockDate: unlockDate,
        if (unlockMethod != $none) #unlockMethod: unlockMethod,
        if (uniqueEntryId != null) #uniqueEntryId: uniqueEntryId,
        if (translations != $none) #translations: translations
      }));
  @override
  SeasonsAndEvents $make(CopyWithData data) => SeasonsAndEvents(
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      name: data.get(#name, or: $value.name),
      type: data.get(#type, or: $value.type),
      versionAdded: data.get(#versionAdded, or: $value.versionAdded),
      versionLastUpdated:
          data.get(#versionLastUpdated, or: $value.versionLastUpdated),
      year: data.get(#year, or: $value.year),
      datesNorthernHemisphere: data.get(#datesNorthernHemisphere,
          or: $value.datesNorthernHemisphere),
      datesSouthernHemisphere: data.get(#datesSouthernHemisphere,
          or: $value.datesSouthernHemisphere),
      displayName: data.get(#displayName, or: $value.displayName),
      eventNotes: data.get(#eventNotes, or: $value.eventNotes),
      internalLabel: data.get(#internalLabel, or: $value.internalLabel),
      unlockDate: data.get(#unlockDate, or: $value.unlockDate),
      unlockMethod: data.get(#unlockMethod, or: $value.unlockMethod),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      translations: data.get(#translations, or: $value.translations));

  @override
  SeasonsAndEventsCopyWith<$R2, SeasonsAndEvents, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SeasonsAndEventsCopyWithImpl($value, $cast, t);
}
