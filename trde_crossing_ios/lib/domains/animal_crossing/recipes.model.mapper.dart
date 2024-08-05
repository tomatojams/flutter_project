// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'recipes.model.dart';

class RecipeMapper extends ClassMapperBase<Recipe> {
  RecipeMapper._();

  static RecipeMapper? _instance;
  static RecipeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RecipeMapper._());
      TranslationMapper.ensureInitialized();
      ExchangeCurrencyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Recipe';

  static Translation? _$translations(Recipe v) => v.translations;
  static const Field<Recipe, Translation> _f$translations =
      Field('translations', _$translations);
  static String _$sourceSheet(Recipe v) => v.sourceSheet;
  static const Field<Recipe, String> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet);
  static String _$name(Recipe v) => v.name;
  static const Field<Recipe, String> _f$name = Field('name', _$name);
  static String _$image(Recipe v) => v.image;
  static const Field<Recipe, String> _f$image = Field('image', _$image);
  static String? _$imageSh(Recipe v) => v.imageSh;
  static const Field<Recipe, String> _f$imageSh =
      Field('imageSh', _$imageSh, opt: true);
  static int _$buy(Recipe v) => v.buy;
  static const Field<Recipe, int> _f$buy = Field('buy', _$buy);
  static int? _$sell(Recipe v) => v.sell;
  static const Field<Recipe, int> _f$sell = Field('sell', _$sell, opt: true);
  static int? _$exchangePrice(Recipe v) => v.exchangePrice;
  static const Field<Recipe, int> _f$exchangePrice =
      Field('exchangePrice', _$exchangePrice, opt: true);
  static ExchangeCurrency? _$exchangeCurrency(Recipe v) => v.exchangeCurrency;
  static const Field<Recipe, ExchangeCurrency> _f$exchangeCurrency =
      Field('exchangeCurrency', _$exchangeCurrency, opt: true);
  static List<String> _$source(Recipe v) => v.source;
  static const Field<Recipe, List<String>> _f$source =
      Field('source', _$source);
  static List<String>? _$sourceNotes(Recipe v) => v.sourceNotes;
  static const Field<Recipe, List<String>> _f$sourceNotes =
      Field('sourceNotes', _$sourceNotes, opt: true);
  static String? _$seasonEvent(Recipe v) => v.seasonEvent;
  static const Field<Recipe, String> _f$seasonEvent =
      Field('seasonEvent', _$seasonEvent, opt: true);
  static bool? _$seasonEventExclusive(Recipe v) => v.seasonEventExclusive;
  static const Field<Recipe, bool> _f$seasonEventExclusive =
      Field('seasonEventExclusive', _$seasonEventExclusive, opt: true);
  static String _$versionAdded(Recipe v) => v.versionAdded;
  static const Field<Recipe, String> _f$versionAdded =
      Field('versionAdded', _$versionAdded);
  static bool _$unlocked(Recipe v) => v.unlocked;
  static const Field<Recipe, bool> _f$unlocked = Field('unlocked', _$unlocked);
  static int _$recipesToUnlock(Recipe v) => v.recipesToUnlock;
  static const Field<Recipe, int> _f$recipesToUnlock =
      Field('recipesToUnlock', _$recipesToUnlock);
  static String _$category(Recipe v) => v.category;
  static const Field<Recipe, String> _f$category =
      Field('category', _$category);
  static int _$craftedItemInternalId(Recipe v) => v.craftedItemInternalId;
  static const Field<Recipe, int> _f$craftedItemInternalId =
      Field('craftedItemInternalId', _$craftedItemInternalId);
  static String? _$cardColor(Recipe v) => v.cardColor;
  static const Field<Recipe, String> _f$cardColor =
      Field('cardColor', _$cardColor, opt: true);
  static String _$diyIconFilename(Recipe v) => v.diyIconFilename;
  static const Field<Recipe, String> _f$diyIconFilename =
      Field('diyIconFilename', _$diyIconFilename);
  static String? _$diyIconFilenameSh(Recipe v) => v.diyIconFilenameSh;
  static const Field<Recipe, String> _f$diyIconFilenameSh =
      Field('diyIconFilenameSh', _$diyIconFilenameSh, opt: true);
  static int _$serialId(Recipe v) => v.serialId;
  static const Field<Recipe, int> _f$serialId = Field('serialId', _$serialId);
  static int _$internalId(Recipe v) => v.internalId;
  static const Field<Recipe, int> _f$internalId =
      Field('internalId', _$internalId);
  static String _$uniqueEntryId(Recipe v) => v.uniqueEntryId;
  static const Field<Recipe, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId);
  static Map<String, int> _$materials(Recipe v) => v.materials;
  static const Field<Recipe, Map<String, int>> _f$materials =
      Field('materials', _$materials);
  static Map<String, String?> _$materialsTranslations(Recipe v) =>
      v.materialsTranslations;
  static const Field<Recipe, Map<String, String?>> _f$materialsTranslations =
      Field('materialsTranslations', _$materialsTranslations);

  @override
  final MappableFields<Recipe> fields = const {
    #translations: _f$translations,
    #sourceSheet: _f$sourceSheet,
    #name: _f$name,
    #image: _f$image,
    #imageSh: _f$imageSh,
    #buy: _f$buy,
    #sell: _f$sell,
    #exchangePrice: _f$exchangePrice,
    #exchangeCurrency: _f$exchangeCurrency,
    #source: _f$source,
    #sourceNotes: _f$sourceNotes,
    #seasonEvent: _f$seasonEvent,
    #seasonEventExclusive: _f$seasonEventExclusive,
    #versionAdded: _f$versionAdded,
    #unlocked: _f$unlocked,
    #recipesToUnlock: _f$recipesToUnlock,
    #category: _f$category,
    #craftedItemInternalId: _f$craftedItemInternalId,
    #cardColor: _f$cardColor,
    #diyIconFilename: _f$diyIconFilename,
    #diyIconFilenameSh: _f$diyIconFilenameSh,
    #serialId: _f$serialId,
    #internalId: _f$internalId,
    #uniqueEntryId: _f$uniqueEntryId,
    #materials: _f$materials,
    #materialsTranslations: _f$materialsTranslations,
  };

  static Recipe _instantiate(DecodingData data) {
    return Recipe(
        translations: data.dec(_f$translations),
        sourceSheet: data.dec(_f$sourceSheet),
        name: data.dec(_f$name),
        image: data.dec(_f$image),
        imageSh: data.dec(_f$imageSh),
        buy: data.dec(_f$buy),
        sell: data.dec(_f$sell),
        exchangePrice: data.dec(_f$exchangePrice),
        exchangeCurrency: data.dec(_f$exchangeCurrency),
        source: data.dec(_f$source),
        sourceNotes: data.dec(_f$sourceNotes),
        seasonEvent: data.dec(_f$seasonEvent),
        seasonEventExclusive: data.dec(_f$seasonEventExclusive),
        versionAdded: data.dec(_f$versionAdded),
        unlocked: data.dec(_f$unlocked),
        recipesToUnlock: data.dec(_f$recipesToUnlock),
        category: data.dec(_f$category),
        craftedItemInternalId: data.dec(_f$craftedItemInternalId),
        cardColor: data.dec(_f$cardColor),
        diyIconFilename: data.dec(_f$diyIconFilename),
        diyIconFilenameSh: data.dec(_f$diyIconFilenameSh),
        serialId: data.dec(_f$serialId),
        internalId: data.dec(_f$internalId),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        materials: data.dec(_f$materials),
        materialsTranslations: data.dec(_f$materialsTranslations));
  }

  @override
  final Function instantiate = _instantiate;

  static Recipe fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Recipe>(map);
  }

  static Recipe deserialize(String json) {
    return ensureInitialized().decodeJson<Recipe>(json);
  }
}

mixin RecipeMappable {
  String serialize() {
    return RecipeMapper.ensureInitialized().encodeJson<Recipe>(this as Recipe);
  }

  Map<String, dynamic> toJson() {
    return RecipeMapper.ensureInitialized().encodeMap<Recipe>(this as Recipe);
  }

  RecipeCopyWith<Recipe, Recipe, Recipe> get copyWith =>
      _RecipeCopyWithImpl(this as Recipe, $identity, $identity);
  @override
  String toString() {
    return RecipeMapper.ensureInitialized().stringifyValue(this as Recipe);
  }

  @override
  bool operator ==(Object other) {
    return RecipeMapper.ensureInitialized().equalsValue(this as Recipe, other);
  }

  @override
  int get hashCode {
    return RecipeMapper.ensureInitialized().hashValue(this as Recipe);
  }
}

extension RecipeValueCopy<$R, $Out> on ObjectCopyWith<$R, Recipe, $Out> {
  RecipeCopyWith<$R, Recipe, $Out> get $asRecipe =>
      $base.as((v, t, t2) => _RecipeCopyWithImpl(v, t, t2));
}

abstract class RecipeCopyWith<$R, $In extends Recipe, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TranslationCopyWith<$R, Translation, Translation>? get translations;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get source;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get sourceNotes;
  MapCopyWith<$R, String, int, ObjectCopyWith<$R, int, int>> get materials;
  MapCopyWith<$R, String, String?, ObjectCopyWith<$R, String?, String?>?>
      get materialsTranslations;
  $R call(
      {Translation? translations,
      String? sourceSheet,
      String? name,
      String? image,
      String? imageSh,
      int? buy,
      int? sell,
      int? exchangePrice,
      ExchangeCurrency? exchangeCurrency,
      List<String>? source,
      List<String>? sourceNotes,
      String? seasonEvent,
      bool? seasonEventExclusive,
      String? versionAdded,
      bool? unlocked,
      int? recipesToUnlock,
      String? category,
      int? craftedItemInternalId,
      String? cardColor,
      String? diyIconFilename,
      String? diyIconFilenameSh,
      int? serialId,
      int? internalId,
      String? uniqueEntryId,
      Map<String, int>? materials,
      Map<String, String?>? materialsTranslations});
  RecipeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RecipeCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Recipe, $Out>
    implements RecipeCopyWith<$R, Recipe, $Out> {
  _RecipeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Recipe> $mapper = RecipeMapper.ensureInitialized();
  @override
  TranslationCopyWith<$R, Translation, Translation>? get translations =>
      $value.translations?.copyWith.$chain((v) => call(translations: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get source =>
      ListCopyWith($value.source, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(source: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get sourceNotes => $value.sourceNotes != null
          ? ListCopyWith(
              $value.sourceNotes!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(sourceNotes: v))
          : null;
  @override
  MapCopyWith<$R, String, int, ObjectCopyWith<$R, int, int>> get materials =>
      MapCopyWith($value.materials, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(materials: v));
  @override
  MapCopyWith<$R, String, String?, ObjectCopyWith<$R, String?, String?>?>
      get materialsTranslations => MapCopyWith(
          $value.materialsTranslations,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(materialsTranslations: v));
  @override
  $R call(
          {Object? translations = $none,
          String? sourceSheet,
          String? name,
          String? image,
          Object? imageSh = $none,
          int? buy,
          Object? sell = $none,
          Object? exchangePrice = $none,
          Object? exchangeCurrency = $none,
          List<String>? source,
          Object? sourceNotes = $none,
          Object? seasonEvent = $none,
          Object? seasonEventExclusive = $none,
          String? versionAdded,
          bool? unlocked,
          int? recipesToUnlock,
          String? category,
          int? craftedItemInternalId,
          Object? cardColor = $none,
          String? diyIconFilename,
          Object? diyIconFilenameSh = $none,
          int? serialId,
          int? internalId,
          String? uniqueEntryId,
          Map<String, int>? materials,
          Map<String, String?>? materialsTranslations}) =>
      $apply(FieldCopyWithData({
        if (translations != $none) #translations: translations,
        if (sourceSheet != null) #sourceSheet: sourceSheet,
        if (name != null) #name: name,
        if (image != null) #image: image,
        if (imageSh != $none) #imageSh: imageSh,
        if (buy != null) #buy: buy,
        if (sell != $none) #sell: sell,
        if (exchangePrice != $none) #exchangePrice: exchangePrice,
        if (exchangeCurrency != $none) #exchangeCurrency: exchangeCurrency,
        if (source != null) #source: source,
        if (sourceNotes != $none) #sourceNotes: sourceNotes,
        if (seasonEvent != $none) #seasonEvent: seasonEvent,
        if (seasonEventExclusive != $none)
          #seasonEventExclusive: seasonEventExclusive,
        if (versionAdded != null) #versionAdded: versionAdded,
        if (unlocked != null) #unlocked: unlocked,
        if (recipesToUnlock != null) #recipesToUnlock: recipesToUnlock,
        if (category != null) #category: category,
        if (craftedItemInternalId != null)
          #craftedItemInternalId: craftedItemInternalId,
        if (cardColor != $none) #cardColor: cardColor,
        if (diyIconFilename != null) #diyIconFilename: diyIconFilename,
        if (diyIconFilenameSh != $none) #diyIconFilenameSh: diyIconFilenameSh,
        if (serialId != null) #serialId: serialId,
        if (internalId != null) #internalId: internalId,
        if (uniqueEntryId != null) #uniqueEntryId: uniqueEntryId,
        if (materials != null) #materials: materials,
        if (materialsTranslations != null)
          #materialsTranslations: materialsTranslations
      }));
  @override
  Recipe $make(CopyWithData data) => Recipe(
      translations: data.get(#translations, or: $value.translations),
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      name: data.get(#name, or: $value.name),
      image: data.get(#image, or: $value.image),
      imageSh: data.get(#imageSh, or: $value.imageSh),
      buy: data.get(#buy, or: $value.buy),
      sell: data.get(#sell, or: $value.sell),
      exchangePrice: data.get(#exchangePrice, or: $value.exchangePrice),
      exchangeCurrency:
          data.get(#exchangeCurrency, or: $value.exchangeCurrency),
      source: data.get(#source, or: $value.source),
      sourceNotes: data.get(#sourceNotes, or: $value.sourceNotes),
      seasonEvent: data.get(#seasonEvent, or: $value.seasonEvent),
      seasonEventExclusive:
          data.get(#seasonEventExclusive, or: $value.seasonEventExclusive),
      versionAdded: data.get(#versionAdded, or: $value.versionAdded),
      unlocked: data.get(#unlocked, or: $value.unlocked),
      recipesToUnlock: data.get(#recipesToUnlock, or: $value.recipesToUnlock),
      category: data.get(#category, or: $value.category),
      craftedItemInternalId:
          data.get(#craftedItemInternalId, or: $value.craftedItemInternalId),
      cardColor: data.get(#cardColor, or: $value.cardColor),
      diyIconFilename: data.get(#diyIconFilename, or: $value.diyIconFilename),
      diyIconFilenameSh:
          data.get(#diyIconFilenameSh, or: $value.diyIconFilenameSh),
      serialId: data.get(#serialId, or: $value.serialId),
      internalId: data.get(#internalId, or: $value.internalId),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      materials: data.get(#materials, or: $value.materials),
      materialsTranslations:
          data.get(#materialsTranslations, or: $value.materialsTranslations));

  @override
  RecipeCopyWith<$R2, Recipe, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RecipeCopyWithImpl($value, $cast, t);
}
