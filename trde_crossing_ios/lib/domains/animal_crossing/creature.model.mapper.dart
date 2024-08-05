// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'creature.model.dart';

class CreatureSourceSheetMapper extends EnumMapper<CreatureSourceSheet> {
  CreatureSourceSheetMapper._();

  static CreatureSourceSheetMapper? _instance;
  static CreatureSourceSheetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatureSourceSheetMapper._());
    }
    return _instance!;
  }

  static CreatureSourceSheet fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CreatureSourceSheet decode(dynamic value) {
    switch (value) {
      case 'Fish':
        return CreatureSourceSheet.Fish;
      case 'Insects':
        return CreatureSourceSheet.Insects;
      case "Sea Creatures":
        return CreatureSourceSheet.SeaCreatures;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CreatureSourceSheet self) {
    switch (self) {
      case CreatureSourceSheet.Fish:
        return 'Fish';
      case CreatureSourceSheet.Insects:
        return 'Insects';
      case CreatureSourceSheet.SeaCreatures:
        return "Sea Creatures";
    }
  }
}

extension CreatureSourceSheetMapperExtension on CreatureSourceSheet {
  dynamic toValue() {
    CreatureSourceSheetMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CreatureSourceSheet>(this);
  }
}

class CreatureMapper extends ClassMapperBase<Creature> {
  CreatureMapper._();

  static CreatureMapper? _instance;
  static CreatureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatureMapper._());
      CreatureSourceSheetMapper.ensureInitialized();
      TranslationMapper.ensureInitialized();
      HemispheresMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Creature';

  static CreatureSourceSheet _$sourceSheet(Creature v) => v.sourceSheet;
  static const Field<Creature, CreatureSourceSheet> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet);
  static int _$num(Creature v) => v.num;
  static const Field<Creature, int> _f$num = Field('num', _$num);
  static String _$name(Creature v) => v.name;
  static const Field<Creature, String> _f$name = Field('name', _$name);
  static String _$iconImage(Creature v) => v.iconImage;
  static const Field<Creature, String> _f$iconImage =
      Field('iconImage', _$iconImage);
  static String _$critterpediaImage(Creature v) => v.critterpediaImage;
  static const Field<Creature, String> _f$critterpediaImage =
      Field('critterpediaImage', _$critterpediaImage);
  static String _$furnitureImage(Creature v) => v.furnitureImage;
  static const Field<Creature, String> _f$furnitureImage =
      Field('furnitureImage', _$furnitureImage);
  static int _$sell(Creature v) => v.sell;
  static const Field<Creature, int> _f$sell = Field('sell', _$sell);
  static String? _$whereHow(Creature v) => v.whereHow;
  static const Field<Creature, String> _f$whereHow =
      Field('whereHow', _$whereHow, opt: true);
  static String? _$weather(Creature v) => v.weather;
  static const Field<Creature, String> _f$weather =
      Field('weather', _$weather, opt: true);
  static int _$totalCatchesToUnlock(Creature v) => v.totalCatchesToUnlock;
  static const Field<Creature, int> _f$totalCatchesToUnlock =
      Field('totalCatchesToUnlock', _$totalCatchesToUnlock);
  static String _$spawnRates(Creature v) => v.spawnRates;
  static const Field<Creature, String> _f$spawnRates =
      Field('spawnRates', _$spawnRates);
  static String _$size(Creature v) => v.size;
  static const Field<Creature, String> _f$size = Field('size', _$size);
  static bool _$surface(Creature v) => v.surface;
  static const Field<Creature, bool> _f$surface = Field('surface', _$surface);
  static List<String> _$description(Creature v) => v.description;
  static const Field<Creature, List<String>> _f$description =
      Field('description', _$description);
  static List<String> _$catchPhrase(Creature v) => v.catchPhrase;
  static const Field<Creature, List<String>> _f$catchPhrase =
      Field('catchPhrase', _$catchPhrase);
  static int _$hhaBasePoints(Creature v) => v.hhaBasePoints;
  static const Field<Creature, int> _f$hhaBasePoints =
      Field('hhaBasePoints', _$hhaBasePoints);
  static String? _$hhaCategory(Creature v) => v.hhaCategory;
  static const Field<Creature, String> _f$hhaCategory =
      Field('hhaCategory', _$hhaCategory, opt: true);
  static String _$iconFilename(Creature v) => v.iconFilename;
  static const Field<Creature, String> _f$iconFilename =
      Field('iconFilename', _$iconFilename);
  static String _$critterpediaFilename(Creature v) => v.critterpediaFilename;
  static const Field<Creature, String> _f$critterpediaFilename =
      Field('critterpediaFilename', _$critterpediaFilename);
  static String _$furnitureFilename(Creature v) => v.furnitureFilename;
  static const Field<Creature, String> _f$furnitureFilename =
      Field('furnitureFilename', _$furnitureFilename);
  static int _$internalId(Creature v) => v.internalId;
  static const Field<Creature, int> _f$internalId =
      Field('internalId', _$internalId);
  static String _$uniqueEntryId(Creature v) => v.uniqueEntryId;
  static const Field<Creature, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId);
  static Translation _$translations(Creature v) => v.translations;
  static const Field<Creature, Translation> _f$translations =
      Field('translations', _$translations);
  static Hemispheres _$hemispheres(Creature v) => v.hemispheres;
  static const Field<Creature, Hemispheres> _f$hemispheres =
      Field('hemispheres', _$hemispheres);
  static List<String> _$colors(Creature v) => v.colors;
  static const Field<Creature, List<String>> _f$colors =
      Field('colors', _$colors);
  static String? _$shadow(Creature v) => v.shadow;
  static const Field<Creature, String> _f$shadow =
      Field('shadow', _$shadow, opt: true);
  static String? _$movementSpeed(Creature v) => v.movementSpeed;
  static const Field<Creature, String> _f$movementSpeed =
      Field('movementSpeed', _$movementSpeed, opt: true);
  static String? _$lightingType(Creature v) => v.lightingType;
  static const Field<Creature, String> _f$lightingType =
      Field('lightingType', _$lightingType, opt: true);
  static String? _$versionAdded(Creature v) => v.versionAdded;
  static const Field<Creature, String> _f$versionAdded =
      Field('versionAdded', _$versionAdded, opt: true);
  static bool? _$unlocked(Creature v) => v.unlocked;
  static const Field<Creature, bool> _f$unlocked =
      Field('unlocked', _$unlocked, opt: true);
  static String? _$catchDifficulty(Creature v) => v.catchDifficulty;
  static const Field<Creature, String> _f$catchDifficulty =
      Field('catchDifficulty', _$catchDifficulty, opt: true);
  static String? _$vision(Creature v) => v.vision;
  static const Field<Creature, String> _f$vision =
      Field('vision', _$vision, opt: true);

  @override
  final MappableFields<Creature> fields = const {
    #sourceSheet: _f$sourceSheet,
    #num: _f$num,
    #name: _f$name,
    #iconImage: _f$iconImage,
    #critterpediaImage: _f$critterpediaImage,
    #furnitureImage: _f$furnitureImage,
    #sell: _f$sell,
    #whereHow: _f$whereHow,
    #weather: _f$weather,
    #totalCatchesToUnlock: _f$totalCatchesToUnlock,
    #spawnRates: _f$spawnRates,
    #size: _f$size,
    #surface: _f$surface,
    #description: _f$description,
    #catchPhrase: _f$catchPhrase,
    #hhaBasePoints: _f$hhaBasePoints,
    #hhaCategory: _f$hhaCategory,
    #iconFilename: _f$iconFilename,
    #critterpediaFilename: _f$critterpediaFilename,
    #furnitureFilename: _f$furnitureFilename,
    #internalId: _f$internalId,
    #uniqueEntryId: _f$uniqueEntryId,
    #translations: _f$translations,
    #hemispheres: _f$hemispheres,
    #colors: _f$colors,
    #shadow: _f$shadow,
    #movementSpeed: _f$movementSpeed,
    #lightingType: _f$lightingType,
    #versionAdded: _f$versionAdded,
    #unlocked: _f$unlocked,
    #catchDifficulty: _f$catchDifficulty,
    #vision: _f$vision,
  };

  static Creature _instantiate(DecodingData data) {
    return Creature(
        sourceSheet: data.dec(_f$sourceSheet),
        num: data.dec(_f$num),
        name: data.dec(_f$name),
        iconImage: data.dec(_f$iconImage),
        critterpediaImage: data.dec(_f$critterpediaImage),
        furnitureImage: data.dec(_f$furnitureImage),
        sell: data.dec(_f$sell),
        whereHow: data.dec(_f$whereHow),
        weather: data.dec(_f$weather),
        totalCatchesToUnlock: data.dec(_f$totalCatchesToUnlock),
        spawnRates: data.dec(_f$spawnRates),
        size: data.dec(_f$size),
        surface: data.dec(_f$surface),
        description: data.dec(_f$description),
        catchPhrase: data.dec(_f$catchPhrase),
        hhaBasePoints: data.dec(_f$hhaBasePoints),
        hhaCategory: data.dec(_f$hhaCategory),
        iconFilename: data.dec(_f$iconFilename),
        critterpediaFilename: data.dec(_f$critterpediaFilename),
        furnitureFilename: data.dec(_f$furnitureFilename),
        internalId: data.dec(_f$internalId),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        translations: data.dec(_f$translations),
        hemispheres: data.dec(_f$hemispheres),
        colors: data.dec(_f$colors),
        shadow: data.dec(_f$shadow),
        movementSpeed: data.dec(_f$movementSpeed),
        lightingType: data.dec(_f$lightingType),
        versionAdded: data.dec(_f$versionAdded),
        unlocked: data.dec(_f$unlocked),
        catchDifficulty: data.dec(_f$catchDifficulty),
        vision: data.dec(_f$vision));
  }

  @override
  final Function instantiate = _instantiate;

  static Creature fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Creature>(map);
  }

  static Creature deserialize(String json) {
    return ensureInitialized().decodeJson<Creature>(json);
  }
}

mixin CreatureMappable {
  String serialize() {
    return CreatureMapper.ensureInitialized()
        .encodeJson<Creature>(this as Creature);
  }

  Map<String, dynamic> toJson() {
    return CreatureMapper.ensureInitialized()
        .encodeMap<Creature>(this as Creature);
  }

  CreatureCopyWith<Creature, Creature, Creature> get copyWith =>
      _CreatureCopyWithImpl(this as Creature, $identity, $identity);
  @override
  String toString() {
    return CreatureMapper.ensureInitialized().stringifyValue(this as Creature);
  }

  @override
  bool operator ==(Object other) {
    return CreatureMapper.ensureInitialized()
        .equalsValue(this as Creature, other);
  }

  @override
  int get hashCode {
    return CreatureMapper.ensureInitialized().hashValue(this as Creature);
  }
}

extension CreatureValueCopy<$R, $Out> on ObjectCopyWith<$R, Creature, $Out> {
  CreatureCopyWith<$R, Creature, $Out> get $asCreature =>
      $base.as((v, t, t2) => _CreatureCopyWithImpl(v, t, t2));
}

abstract class CreatureCopyWith<$R, $In extends Creature, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get description;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get catchPhrase;
  TranslationCopyWith<$R, Translation, Translation> get translations;
  HemispheresCopyWith<$R, Hemispheres, Hemispheres> get hemispheres;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get colors;
  $R call(
      {CreatureSourceSheet? sourceSheet,
      int? num,
      String? name,
      String? iconImage,
      String? critterpediaImage,
      String? furnitureImage,
      int? sell,
      String? whereHow,
      String? weather,
      int? totalCatchesToUnlock,
      String? spawnRates,
      String? size,
      bool? surface,
      List<String>? description,
      List<String>? catchPhrase,
      int? hhaBasePoints,
      String? hhaCategory,
      String? iconFilename,
      String? critterpediaFilename,
      String? furnitureFilename,
      int? internalId,
      String? uniqueEntryId,
      Translation? translations,
      Hemispheres? hemispheres,
      List<String>? colors,
      String? shadow,
      String? movementSpeed,
      String? lightingType,
      String? versionAdded,
      bool? unlocked,
      String? catchDifficulty,
      String? vision});
  CreatureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CreatureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Creature, $Out>
    implements CreatureCopyWith<$R, Creature, $Out> {
  _CreatureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Creature> $mapper =
      CreatureMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get description => ListCopyWith(
          $value.description,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(description: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get catchPhrase => ListCopyWith(
          $value.catchPhrase,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(catchPhrase: v));
  @override
  TranslationCopyWith<$R, Translation, Translation> get translations =>
      $value.translations.copyWith.$chain((v) => call(translations: v));
  @override
  HemispheresCopyWith<$R, Hemispheres, Hemispheres> get hemispheres =>
      $value.hemispheres.copyWith.$chain((v) => call(hemispheres: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get colors =>
      ListCopyWith($value.colors, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(colors: v));
  @override
  $R call(
          {CreatureSourceSheet? sourceSheet,
          int? num,
          String? name,
          String? iconImage,
          String? critterpediaImage,
          String? furnitureImage,
          int? sell,
          Object? whereHow = $none,
          Object? weather = $none,
          int? totalCatchesToUnlock,
          String? spawnRates,
          String? size,
          bool? surface,
          List<String>? description,
          List<String>? catchPhrase,
          int? hhaBasePoints,
          Object? hhaCategory = $none,
          String? iconFilename,
          String? critterpediaFilename,
          String? furnitureFilename,
          int? internalId,
          String? uniqueEntryId,
          Translation? translations,
          Hemispheres? hemispheres,
          List<String>? colors,
          Object? shadow = $none,
          Object? movementSpeed = $none,
          Object? lightingType = $none,
          Object? versionAdded = $none,
          Object? unlocked = $none,
          Object? catchDifficulty = $none,
          Object? vision = $none}) =>
      $apply(FieldCopyWithData({
        if (sourceSheet != null) #sourceSheet: sourceSheet,
        if (num != null) #num: num,
        if (name != null) #name: name,
        if (iconImage != null) #iconImage: iconImage,
        if (critterpediaImage != null) #critterpediaImage: critterpediaImage,
        if (furnitureImage != null) #furnitureImage: furnitureImage,
        if (sell != null) #sell: sell,
        if (whereHow != $none) #whereHow: whereHow,
        if (weather != $none) #weather: weather,
        if (totalCatchesToUnlock != null)
          #totalCatchesToUnlock: totalCatchesToUnlock,
        if (spawnRates != null) #spawnRates: spawnRates,
        if (size != null) #size: size,
        if (surface != null) #surface: surface,
        if (description != null) #description: description,
        if (catchPhrase != null) #catchPhrase: catchPhrase,
        if (hhaBasePoints != null) #hhaBasePoints: hhaBasePoints,
        if (hhaCategory != $none) #hhaCategory: hhaCategory,
        if (iconFilename != null) #iconFilename: iconFilename,
        if (critterpediaFilename != null)
          #critterpediaFilename: critterpediaFilename,
        if (furnitureFilename != null) #furnitureFilename: furnitureFilename,
        if (internalId != null) #internalId: internalId,
        if (uniqueEntryId != null) #uniqueEntryId: uniqueEntryId,
        if (translations != null) #translations: translations,
        if (hemispheres != null) #hemispheres: hemispheres,
        if (colors != null) #colors: colors,
        if (shadow != $none) #shadow: shadow,
        if (movementSpeed != $none) #movementSpeed: movementSpeed,
        if (lightingType != $none) #lightingType: lightingType,
        if (versionAdded != $none) #versionAdded: versionAdded,
        if (unlocked != $none) #unlocked: unlocked,
        if (catchDifficulty != $none) #catchDifficulty: catchDifficulty,
        if (vision != $none) #vision: vision
      }));
  @override
  Creature $make(CopyWithData data) => Creature(
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      num: data.get(#num, or: $value.num),
      name: data.get(#name, or: $value.name),
      iconImage: data.get(#iconImage, or: $value.iconImage),
      critterpediaImage:
          data.get(#critterpediaImage, or: $value.critterpediaImage),
      furnitureImage: data.get(#furnitureImage, or: $value.furnitureImage),
      sell: data.get(#sell, or: $value.sell),
      whereHow: data.get(#whereHow, or: $value.whereHow),
      weather: data.get(#weather, or: $value.weather),
      totalCatchesToUnlock:
          data.get(#totalCatchesToUnlock, or: $value.totalCatchesToUnlock),
      spawnRates: data.get(#spawnRates, or: $value.spawnRates),
      size: data.get(#size, or: $value.size),
      surface: data.get(#surface, or: $value.surface),
      description: data.get(#description, or: $value.description),
      catchPhrase: data.get(#catchPhrase, or: $value.catchPhrase),
      hhaBasePoints: data.get(#hhaBasePoints, or: $value.hhaBasePoints),
      hhaCategory: data.get(#hhaCategory, or: $value.hhaCategory),
      iconFilename: data.get(#iconFilename, or: $value.iconFilename),
      critterpediaFilename:
          data.get(#critterpediaFilename, or: $value.critterpediaFilename),
      furnitureFilename:
          data.get(#furnitureFilename, or: $value.furnitureFilename),
      internalId: data.get(#internalId, or: $value.internalId),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      translations: data.get(#translations, or: $value.translations),
      hemispheres: data.get(#hemispheres, or: $value.hemispheres),
      colors: data.get(#colors, or: $value.colors),
      shadow: data.get(#shadow, or: $value.shadow),
      movementSpeed: data.get(#movementSpeed, or: $value.movementSpeed),
      lightingType: data.get(#lightingType, or: $value.lightingType),
      versionAdded: data.get(#versionAdded, or: $value.versionAdded),
      unlocked: data.get(#unlocked, or: $value.unlocked),
      catchDifficulty: data.get(#catchDifficulty, or: $value.catchDifficulty),
      vision: data.get(#vision, or: $value.vision));

  @override
  CreatureCopyWith<$R2, Creature, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CreatureCopyWithImpl($value, $cast, t);
}

class HemispheresMapper extends ClassMapperBase<Hemispheres> {
  HemispheresMapper._();

  static HemispheresMapper? _instance;
  static HemispheresMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HemispheresMapper._());
      NorthMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Hemispheres';

  static North _$north(Hemispheres v) => v.north;
  static const Field<Hemispheres, North> _f$north = Field('north', _$north);
  static North _$south(Hemispheres v) => v.south;
  static const Field<Hemispheres, North> _f$south = Field('south', _$south);

  @override
  final MappableFields<Hemispheres> fields = const {
    #north: _f$north,
    #south: _f$south,
  };

  static Hemispheres _instantiate(DecodingData data) {
    return Hemispheres(north: data.dec(_f$north), south: data.dec(_f$south));
  }

  @override
  final Function instantiate = _instantiate;

  static Hemispheres fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Hemispheres>(map);
  }

  static Hemispheres deserialize(String json) {
    return ensureInitialized().decodeJson<Hemispheres>(json);
  }
}

mixin HemispheresMappable {
  String serialize() {
    return HemispheresMapper.ensureInitialized()
        .encodeJson<Hemispheres>(this as Hemispheres);
  }

  Map<String, dynamic> toJson() {
    return HemispheresMapper.ensureInitialized()
        .encodeMap<Hemispheres>(this as Hemispheres);
  }

  HemispheresCopyWith<Hemispheres, Hemispheres, Hemispheres> get copyWith =>
      _HemispheresCopyWithImpl(this as Hemispheres, $identity, $identity);
  @override
  String toString() {
    return HemispheresMapper.ensureInitialized()
        .stringifyValue(this as Hemispheres);
  }

  @override
  bool operator ==(Object other) {
    return HemispheresMapper.ensureInitialized()
        .equalsValue(this as Hemispheres, other);
  }

  @override
  int get hashCode {
    return HemispheresMapper.ensureInitialized().hashValue(this as Hemispheres);
  }
}

extension HemispheresValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Hemispheres, $Out> {
  HemispheresCopyWith<$R, Hemispheres, $Out> get $asHemispheres =>
      $base.as((v, t, t2) => _HemispheresCopyWithImpl(v, t, t2));
}

abstract class HemispheresCopyWith<$R, $In extends Hemispheres, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  NorthCopyWith<$R, North, North> get north;
  NorthCopyWith<$R, North, North> get south;
  $R call({North? north, North? south});
  HemispheresCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HemispheresCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Hemispheres, $Out>
    implements HemispheresCopyWith<$R, Hemispheres, $Out> {
  _HemispheresCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Hemispheres> $mapper =
      HemispheresMapper.ensureInitialized();
  @override
  NorthCopyWith<$R, North, North> get north =>
      $value.north.copyWith.$chain((v) => call(north: v));
  @override
  NorthCopyWith<$R, North, North> get south =>
      $value.south.copyWith.$chain((v) => call(south: v));
  @override
  $R call({North? north, North? south}) => $apply(FieldCopyWithData(
      {if (north != null) #north: north, if (south != null) #south: south}));
  @override
  Hemispheres $make(CopyWithData data) => Hemispheres(
      north: data.get(#north, or: $value.north),
      south: data.get(#south, or: $value.south));

  @override
  HemispheresCopyWith<$R2, Hemispheres, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HemispheresCopyWithImpl($value, $cast, t);
}

class NorthMapper extends ClassMapperBase<North> {
  NorthMapper._();

  static NorthMapper? _instance;
  static NorthMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NorthMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'North';

  static String _$time(North v) => v.time;
  static const Field<North, String> _f$time = Field('time', _$time);
  static List<dynamic> _$timeArray(North v) => v.timeArray;
  static const Field<North, List<dynamic>> _f$timeArray =
      Field('timeArray', _$timeArray, hook: TimeArrayHook());
  static List<String> _$months(North v) => v.months;
  static const Field<North, List<String>> _f$months = Field('months', _$months);
  static List<int> _$monthsArray(North v) => v.monthsArray;
  static const Field<North, List<int>> _f$monthsArray =
      Field('monthsArray', _$monthsArray);

  @override
  final MappableFields<North> fields = const {
    #time: _f$time,
    #timeArray: _f$timeArray,
    #months: _f$months,
    #monthsArray: _f$monthsArray,
  };

  static North _instantiate(DecodingData data) {
    return North(
        time: data.dec(_f$time),
        timeArray: data.dec(_f$timeArray),
        months: data.dec(_f$months),
        monthsArray: data.dec(_f$monthsArray));
  }

  @override
  final Function instantiate = _instantiate;

  static North fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<North>(map);
  }

  static North deserialize(String json) {
    return ensureInitialized().decodeJson<North>(json);
  }
}

mixin NorthMappable {
  String serialize() {
    return NorthMapper.ensureInitialized().encodeJson<North>(this as North);
  }

  Map<String, dynamic> toJson() {
    return NorthMapper.ensureInitialized().encodeMap<North>(this as North);
  }

  NorthCopyWith<North, North, North> get copyWith =>
      _NorthCopyWithImpl(this as North, $identity, $identity);
  @override
  String toString() {
    return NorthMapper.ensureInitialized().stringifyValue(this as North);
  }

  @override
  bool operator ==(Object other) {
    return NorthMapper.ensureInitialized().equalsValue(this as North, other);
  }

  @override
  int get hashCode {
    return NorthMapper.ensureInitialized().hashValue(this as North);
  }
}

extension NorthValueCopy<$R, $Out> on ObjectCopyWith<$R, North, $Out> {
  NorthCopyWith<$R, North, $Out> get $asNorth =>
      $base.as((v, t, t2) => _NorthCopyWithImpl(v, t, t2));
}

abstract class NorthCopyWith<$R, $In extends North, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get timeArray;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get months;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get monthsArray;
  $R call(
      {String? time,
      List<dynamic>? timeArray,
      List<String>? months,
      List<int>? monthsArray});
  NorthCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NorthCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, North, $Out>
    implements NorthCopyWith<$R, North, $Out> {
  _NorthCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<North> $mapper = NorthMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get timeArray => ListCopyWith($value.timeArray,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(timeArray: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get months =>
      ListCopyWith($value.months, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(months: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get monthsArray =>
      ListCopyWith(
          $value.monthsArray,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(monthsArray: v));
  @override
  $R call(
          {String? time,
          List<dynamic>? timeArray,
          List<String>? months,
          List<int>? monthsArray}) =>
      $apply(FieldCopyWithData({
        if (time != null) #time: time,
        if (timeArray != null) #timeArray: timeArray,
        if (months != null) #months: months,
        if (monthsArray != null) #monthsArray: monthsArray
      }));
  @override
  North $make(CopyWithData data) => North(
      time: data.get(#time, or: $value.time),
      timeArray: data.get(#timeArray, or: $value.timeArray),
      months: data.get(#months, or: $value.months),
      monthsArray: data.get(#monthsArray, or: $value.monthsArray));

  @override
  NorthCopyWith<$R2, North, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NorthCopyWithImpl($value, $cast, t);
}
