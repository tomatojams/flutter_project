// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'villagers.model.dart';

class HobbyMapper extends EnumMapper<Hobby> {
  HobbyMapper._();

  static HobbyMapper? _instance;
  static HobbyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HobbyMapper._());
    }
    return _instance!;
  }

  static Hobby fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Hobby decode(dynamic value) {
    switch (value) {
      case 'Education':
        return Hobby.Education;
      case 'Fashion':
        return Hobby.Fashion;
      case 'Fitness':
        return Hobby.Fitness;
      case 'Music':
        return Hobby.Music;
      case 'Nature':
        return Hobby.Nature;
      case 'Play':
        return Hobby.Play;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Hobby self) {
    switch (self) {
      case Hobby.Education:
        return 'Education';
      case Hobby.Fashion:
        return 'Fashion';
      case Hobby.Fitness:
        return 'Fitness';
      case Hobby.Music:
        return 'Music';
      case Hobby.Nature:
        return 'Nature';
      case Hobby.Play:
        return 'Play';
    }
  }
}

extension HobbyMapperExtension on Hobby {
  String toValue() {
    HobbyMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Hobby>(this) as String;
  }
}

class PersonalityMapper extends EnumMapper<Personality> {
  PersonalityMapper._();

  static PersonalityMapper? _instance;
  static PersonalityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonalityMapper._());
    }
    return _instance!;
  }

  static Personality fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Personality decode(dynamic value) {
    switch (value) {
      case "Big Sister":
        return Personality.BigSister;
      case 'Cranky':
        return Personality.Cranky;
      case 'Jock':
        return Personality.Jock;
      case 'Lazy':
        return Personality.Lazy;
      case 'Normal':
        return Personality.Normal;
      case 'Peppy':
        return Personality.Peppy;
      case 'Smug':
        return Personality.Smug;
      case 'Snooty':
        return Personality.Snooty;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Personality self) {
    switch (self) {
      case Personality.BigSister:
        return "Big Sister";
      case Personality.Cranky:
        return 'Cranky';
      case Personality.Jock:
        return 'Jock';
      case Personality.Lazy:
        return 'Lazy';
      case Personality.Normal:
        return 'Normal';
      case Personality.Peppy:
        return 'Peppy';
      case Personality.Smug:
        return 'Smug';
      case Personality.Snooty:
        return 'Snooty';
    }
  }
}

extension PersonalityMapperExtension on Personality {
  dynamic toValue() {
    PersonalityMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Personality>(this);
  }
}

class SubtypeMapper extends EnumMapper<Subtype> {
  SubtypeMapper._();

  static SubtypeMapper? _instance;
  static SubtypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SubtypeMapper._());
    }
    return _instance!;
  }

  static Subtype fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Subtype decode(dynamic value) {
    switch (value) {
      case 'A':
        return Subtype.A;
      case 'B':
        return Subtype.B;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Subtype self) {
    switch (self) {
      case Subtype.A:
        return 'A';
      case Subtype.B:
        return 'B';
    }
  }
}

extension SubtypeMapperExtension on Subtype {
  String toValue() {
    SubtypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Subtype>(this) as String;
  }
}

class VillagerMapper extends ClassMapperBase<Villager> {
  VillagerMapper._();

  static VillagerMapper? _instance;
  static VillagerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VillagerMapper._());
      GenderMapper.ensureInitialized();
      PersonalityMapper.ensureInitialized();
      SubtypeMapper.ensureInitialized();
      HobbyMapper.ensureInitialized();
      TranslationMapper.ensureInitialized();
      StyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Villager';

  static String _$sourceSheet(Villager v) => v.sourceSheet;
  static const Field<Villager, String> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet);
  static String _$name(Villager v) => v.name;
  static const Field<Villager, String> _f$name = Field('name', _$name);
  static String _$iconImage(Villager v) => v.iconImage;
  static const Field<Villager, String> _f$iconImage =
      Field('iconImage', _$iconImage);
  static String _$photoImage(Villager v) => v.photoImage;
  static const Field<Villager, String> _f$photoImage =
      Field('photoImage', _$photoImage);
  static String? _$houseImage(Villager v) => v.houseImage;
  static const Field<Villager, String> _f$houseImage =
      Field('houseImage', _$houseImage, opt: true);
  static String _$species(Villager v) => v.species;
  static const Field<Villager, String> _f$species = Field('species', _$species);
  static Gender _$gender(Villager v) => v.gender;
  static const Field<Villager, Gender> _f$gender = Field('gender', _$gender);
  static Personality _$personality(Villager v) => v.personality;
  static const Field<Villager, Personality> _f$personality =
      Field('personality', _$personality);
  static Subtype _$subtype(Villager v) => v.subtype;
  static const Field<Villager, Subtype> _f$subtype =
      Field('subtype', _$subtype);
  static Hobby _$hobby(Villager v) => v.hobby;
  static const Field<Villager, Hobby> _f$hobby = Field('hobby', _$hobby);
  static String _$birthday(Villager v) => v.birthday;
  static const Field<Villager, String> _f$birthday =
      Field('birthday', _$birthday);
  static String _$catchphrase(Villager v) => v.catchphrase;
  static const Field<Villager, String> _f$catchphrase =
      Field('catchphrase', _$catchphrase);
  static String _$favoriteSong(Villager v) => v.favoriteSong;
  static const Field<Villager, String> _f$favoriteSong =
      Field('favoriteSong', _$favoriteSong);
  static String _$favoriteSaying(Villager v) => v.favoriteSaying;
  static const Field<Villager, String> _f$favoriteSaying =
      Field('favoriteSaying', _$favoriteSaying);
  static String _$defaultClothing(Villager v) => v.defaultClothing;
  static const Field<Villager, String> _f$defaultClothing =
      Field('defaultClothing', _$defaultClothing);
  static String _$defaultUmbrella(Villager v) => v.defaultUmbrella;
  static const Field<Villager, String> _f$defaultUmbrella =
      Field('defaultUmbrella', _$defaultUmbrella);
  static String _$wallpaper(Villager v) => v.wallpaper;
  static const Field<Villager, String> _f$wallpaper =
      Field('wallpaper', _$wallpaper);
  static String _$flooring(Villager v) => v.flooring;
  static const Field<Villager, String> _f$flooring =
      Field('flooring', _$flooring);
  static List<int> _$furnitureList(Villager v) => v.furnitureList;
  static const Field<Villager, List<int>> _f$furnitureList =
      Field('furnitureList', _$furnitureList);
  static List<String> _$furnitureNameList(Villager v) => v.furnitureNameList;
  static const Field<Villager, List<String>> _f$furnitureNameList =
      Field('furnitureNameList', _$furnitureNameList);
  static String _$diyWorkbench(Villager v) => v.diyWorkbench;
  static const Field<Villager, String> _f$diyWorkbench =
      Field('diyWorkbench', _$diyWorkbench);
  static dynamic _$kitchenEquipment(Villager v) => v.kitchenEquipment;
  static const Field<Villager, dynamic> _f$kitchenEquipment =
      Field('kitchenEquipment', _$kitchenEquipment);
  static String _$versionAdded(Villager v) => v.versionAdded;
  static const Field<Villager, String> _f$versionAdded =
      Field('versionAdded', _$versionAdded);
  static String _$nameColor(Villager v) => v.nameColor;
  static const Field<Villager, String> _f$nameColor =
      Field('nameColor', _$nameColor);
  static String _$bubbleColor(Villager v) => v.bubbleColor;
  static const Field<Villager, String> _f$bubbleColor =
      Field('bubbleColor', _$bubbleColor);
  static String _$filename(Villager v) => v.filename;
  static const Field<Villager, String> _f$filename =
      Field('filename', _$filename);
  static String _$uniqueEntryId(Villager v) => v.uniqueEntryId;
  static const Field<Villager, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId);
  static Translation _$catchphrases(Villager v) => v.catchphrases;
  static const Field<Villager, Translation> _f$catchphrases =
      Field('catchphrases', _$catchphrases);
  static Translation _$translations(Villager v) => v.translations;
  static const Field<Villager, Translation> _f$translations =
      Field('translations', _$translations);
  static List<Style> _$styles(Villager v) => v.styles;
  static const Field<Villager, List<Style>> _f$styles =
      Field('styles', _$styles);
  static List<String> _$colors(Villager v) => v.colors;
  static const Field<Villager, List<String>> _f$colors =
      Field('colors', _$colors);
  static int _$defaultClothingInternalId(Villager v) =>
      v.defaultClothingInternalId;
  static const Field<Villager, int> _f$defaultClothingInternalId =
      Field('defaultClothingInternalId', _$defaultClothingInternalId);

  @override
  final MappableFields<Villager> fields = const {
    #sourceSheet: _f$sourceSheet,
    #name: _f$name,
    #iconImage: _f$iconImage,
    #photoImage: _f$photoImage,
    #houseImage: _f$houseImage,
    #species: _f$species,
    #gender: _f$gender,
    #personality: _f$personality,
    #subtype: _f$subtype,
    #hobby: _f$hobby,
    #birthday: _f$birthday,
    #catchphrase: _f$catchphrase,
    #favoriteSong: _f$favoriteSong,
    #favoriteSaying: _f$favoriteSaying,
    #defaultClothing: _f$defaultClothing,
    #defaultUmbrella: _f$defaultUmbrella,
    #wallpaper: _f$wallpaper,
    #flooring: _f$flooring,
    #furnitureList: _f$furnitureList,
    #furnitureNameList: _f$furnitureNameList,
    #diyWorkbench: _f$diyWorkbench,
    #kitchenEquipment: _f$kitchenEquipment,
    #versionAdded: _f$versionAdded,
    #nameColor: _f$nameColor,
    #bubbleColor: _f$bubbleColor,
    #filename: _f$filename,
    #uniqueEntryId: _f$uniqueEntryId,
    #catchphrases: _f$catchphrases,
    #translations: _f$translations,
    #styles: _f$styles,
    #colors: _f$colors,
    #defaultClothingInternalId: _f$defaultClothingInternalId,
  };

  static Villager _instantiate(DecodingData data) {
    return Villager(
        sourceSheet: data.dec(_f$sourceSheet),
        name: data.dec(_f$name),
        iconImage: data.dec(_f$iconImage),
        photoImage: data.dec(_f$photoImage),
        houseImage: data.dec(_f$houseImage),
        species: data.dec(_f$species),
        gender: data.dec(_f$gender),
        personality: data.dec(_f$personality),
        subtype: data.dec(_f$subtype),
        hobby: data.dec(_f$hobby),
        birthday: data.dec(_f$birthday),
        catchphrase: data.dec(_f$catchphrase),
        favoriteSong: data.dec(_f$favoriteSong),
        favoriteSaying: data.dec(_f$favoriteSaying),
        defaultClothing: data.dec(_f$defaultClothing),
        defaultUmbrella: data.dec(_f$defaultUmbrella),
        wallpaper: data.dec(_f$wallpaper),
        flooring: data.dec(_f$flooring),
        furnitureList: data.dec(_f$furnitureList),
        furnitureNameList: data.dec(_f$furnitureNameList),
        diyWorkbench: data.dec(_f$diyWorkbench),
        kitchenEquipment: data.dec(_f$kitchenEquipment),
        versionAdded: data.dec(_f$versionAdded),
        nameColor: data.dec(_f$nameColor),
        bubbleColor: data.dec(_f$bubbleColor),
        filename: data.dec(_f$filename),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        catchphrases: data.dec(_f$catchphrases),
        translations: data.dec(_f$translations),
        styles: data.dec(_f$styles),
        colors: data.dec(_f$colors),
        defaultClothingInternalId: data.dec(_f$defaultClothingInternalId));
  }

  @override
  final Function instantiate = _instantiate;

  static Villager fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Villager>(map);
  }

  static Villager deserialize(String json) {
    return ensureInitialized().decodeJson<Villager>(json);
  }
}

mixin VillagerMappable {
  String serialize() {
    return VillagerMapper.ensureInitialized()
        .encodeJson<Villager>(this as Villager);
  }

  Map<String, dynamic> toJson() {
    return VillagerMapper.ensureInitialized()
        .encodeMap<Villager>(this as Villager);
  }

  VillagerCopyWith<Villager, Villager, Villager> get copyWith =>
      _VillagerCopyWithImpl(this as Villager, $identity, $identity);
  @override
  String toString() {
    return VillagerMapper.ensureInitialized().stringifyValue(this as Villager);
  }

  @override
  bool operator ==(Object other) {
    return VillagerMapper.ensureInitialized()
        .equalsValue(this as Villager, other);
  }

  @override
  int get hashCode {
    return VillagerMapper.ensureInitialized().hashValue(this as Villager);
  }
}

extension VillagerValueCopy<$R, $Out> on ObjectCopyWith<$R, Villager, $Out> {
  VillagerCopyWith<$R, Villager, $Out> get $asVillager =>
      $base.as((v, t, t2) => _VillagerCopyWithImpl(v, t, t2));
}

abstract class VillagerCopyWith<$R, $In extends Villager, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get furnitureList;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get furnitureNameList;
  TranslationCopyWith<$R, Translation, Translation> get catchphrases;
  TranslationCopyWith<$R, Translation, Translation> get translations;
  ListCopyWith<$R, Style, ObjectCopyWith<$R, Style, Style>> get styles;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get colors;
  $R call(
      {String? sourceSheet,
      String? name,
      String? iconImage,
      String? photoImage,
      String? houseImage,
      String? species,
      Gender? gender,
      Personality? personality,
      Subtype? subtype,
      Hobby? hobby,
      String? birthday,
      String? catchphrase,
      String? favoriteSong,
      String? favoriteSaying,
      String? defaultClothing,
      String? defaultUmbrella,
      String? wallpaper,
      String? flooring,
      List<int>? furnitureList,
      List<String>? furnitureNameList,
      String? diyWorkbench,
      dynamic kitchenEquipment,
      String? versionAdded,
      String? nameColor,
      String? bubbleColor,
      String? filename,
      String? uniqueEntryId,
      Translation? catchphrases,
      Translation? translations,
      List<Style>? styles,
      List<String>? colors,
      int? defaultClothingInternalId});
  VillagerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VillagerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Villager, $Out>
    implements VillagerCopyWith<$R, Villager, $Out> {
  _VillagerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Villager> $mapper =
      VillagerMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get furnitureList =>
      ListCopyWith(
          $value.furnitureList,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(furnitureList: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get furnitureNameList => ListCopyWith(
          $value.furnitureNameList,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(furnitureNameList: v));
  @override
  TranslationCopyWith<$R, Translation, Translation> get catchphrases =>
      $value.catchphrases.copyWith.$chain((v) => call(catchphrases: v));
  @override
  TranslationCopyWith<$R, Translation, Translation> get translations =>
      $value.translations.copyWith.$chain((v) => call(translations: v));
  @override
  ListCopyWith<$R, Style, ObjectCopyWith<$R, Style, Style>> get styles =>
      ListCopyWith($value.styles, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(styles: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get colors =>
      ListCopyWith($value.colors, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(colors: v));
  @override
  $R call(
          {String? sourceSheet,
          String? name,
          String? iconImage,
          String? photoImage,
          Object? houseImage = $none,
          String? species,
          Gender? gender,
          Personality? personality,
          Subtype? subtype,
          Hobby? hobby,
          String? birthday,
          String? catchphrase,
          String? favoriteSong,
          String? favoriteSaying,
          String? defaultClothing,
          String? defaultUmbrella,
          String? wallpaper,
          String? flooring,
          List<int>? furnitureList,
          List<String>? furnitureNameList,
          String? diyWorkbench,
          Object? kitchenEquipment = $none,
          String? versionAdded,
          String? nameColor,
          String? bubbleColor,
          String? filename,
          String? uniqueEntryId,
          Translation? catchphrases,
          Translation? translations,
          List<Style>? styles,
          List<String>? colors,
          int? defaultClothingInternalId}) =>
      $apply(FieldCopyWithData({
        if (sourceSheet != null) #sourceSheet: sourceSheet,
        if (name != null) #name: name,
        if (iconImage != null) #iconImage: iconImage,
        if (photoImage != null) #photoImage: photoImage,
        if (houseImage != $none) #houseImage: houseImage,
        if (species != null) #species: species,
        if (gender != null) #gender: gender,
        if (personality != null) #personality: personality,
        if (subtype != null) #subtype: subtype,
        if (hobby != null) #hobby: hobby,
        if (birthday != null) #birthday: birthday,
        if (catchphrase != null) #catchphrase: catchphrase,
        if (favoriteSong != null) #favoriteSong: favoriteSong,
        if (favoriteSaying != null) #favoriteSaying: favoriteSaying,
        if (defaultClothing != null) #defaultClothing: defaultClothing,
        if (defaultUmbrella != null) #defaultUmbrella: defaultUmbrella,
        if (wallpaper != null) #wallpaper: wallpaper,
        if (flooring != null) #flooring: flooring,
        if (furnitureList != null) #furnitureList: furnitureList,
        if (furnitureNameList != null) #furnitureNameList: furnitureNameList,
        if (diyWorkbench != null) #diyWorkbench: diyWorkbench,
        if (kitchenEquipment != $none) #kitchenEquipment: kitchenEquipment,
        if (versionAdded != null) #versionAdded: versionAdded,
        if (nameColor != null) #nameColor: nameColor,
        if (bubbleColor != null) #bubbleColor: bubbleColor,
        if (filename != null) #filename: filename,
        if (uniqueEntryId != null) #uniqueEntryId: uniqueEntryId,
        if (catchphrases != null) #catchphrases: catchphrases,
        if (translations != null) #translations: translations,
        if (styles != null) #styles: styles,
        if (colors != null) #colors: colors,
        if (defaultClothingInternalId != null)
          #defaultClothingInternalId: defaultClothingInternalId
      }));
  @override
  Villager $make(CopyWithData data) => Villager(
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      name: data.get(#name, or: $value.name),
      iconImage: data.get(#iconImage, or: $value.iconImage),
      photoImage: data.get(#photoImage, or: $value.photoImage),
      houseImage: data.get(#houseImage, or: $value.houseImage),
      species: data.get(#species, or: $value.species),
      gender: data.get(#gender, or: $value.gender),
      personality: data.get(#personality, or: $value.personality),
      subtype: data.get(#subtype, or: $value.subtype),
      hobby: data.get(#hobby, or: $value.hobby),
      birthday: data.get(#birthday, or: $value.birthday),
      catchphrase: data.get(#catchphrase, or: $value.catchphrase),
      favoriteSong: data.get(#favoriteSong, or: $value.favoriteSong),
      favoriteSaying: data.get(#favoriteSaying, or: $value.favoriteSaying),
      defaultClothing: data.get(#defaultClothing, or: $value.defaultClothing),
      defaultUmbrella: data.get(#defaultUmbrella, or: $value.defaultUmbrella),
      wallpaper: data.get(#wallpaper, or: $value.wallpaper),
      flooring: data.get(#flooring, or: $value.flooring),
      furnitureList: data.get(#furnitureList, or: $value.furnitureList),
      furnitureNameList:
          data.get(#furnitureNameList, or: $value.furnitureNameList),
      diyWorkbench: data.get(#diyWorkbench, or: $value.diyWorkbench),
      kitchenEquipment:
          data.get(#kitchenEquipment, or: $value.kitchenEquipment),
      versionAdded: data.get(#versionAdded, or: $value.versionAdded),
      nameColor: data.get(#nameColor, or: $value.nameColor),
      bubbleColor: data.get(#bubbleColor, or: $value.bubbleColor),
      filename: data.get(#filename, or: $value.filename),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      catchphrases: data.get(#catchphrases, or: $value.catchphrases),
      translations: data.get(#translations, or: $value.translations),
      styles: data.get(#styles, or: $value.styles),
      colors: data.get(#colors, or: $value.colors),
      defaultClothingInternalId: data.get(#defaultClothingInternalId,
          or: $value.defaultClothingInternalId));

  @override
  VillagerCopyWith<$R2, Villager, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VillagerCopyWithImpl($value, $cast, t);
}
