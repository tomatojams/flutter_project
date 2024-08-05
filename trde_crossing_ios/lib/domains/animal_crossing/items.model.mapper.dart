// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'items.model.dart';

class ItemMapper extends ClassMapperBase<Item> {
  ItemMapper._();

  static ItemMapper? _instance;
  static ItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemMapper._());
      ItemCategoryMapper.ensureInitialized();
      ExchangeCurrencyMapper.ensureInitialized();
      HhaCategoryMapper.ensureInitialized();
      LightingTypeMapper.ensureInitialized();
      CatalogMapper.ensureInitialized();
      TranslationMapper.ensureInitialized();
      RecipeMapper.ensureInitialized();
      SeasonalAvailabilityMapper.ensureInitialized();
      VariationElementMapper.ensureInitialized();
      StyleMapper.ensureInitialized();
      SizeCategoryMapper.ensureInitialized();
      VfxTypeMapper.ensureInitialized();
      PaneTypeMapper.ensureInitialized();
      CurtainTypeMapper.ensureInitialized();
      CeilingTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Item';

  static ItemCategory _$sourceSheet(Item v) => v.sourceSheet;
  static const Field<Item, ItemCategory> _f$sourceSheet =
      Field('sourceSheet', _$sourceSheet);
  static String _$name(Item v) => v.name;
  static const Field<Item, String> _f$name = Field('name', _$name);
  static String? _$image(Item v) => v.image;
  static const Field<Item, String> _f$image =
      Field('image', _$image, opt: true);
  static dynamic _$variation(Item v) => v.variation;
  static const Field<Item, dynamic> _f$variation =
      Field('variation', _$variation);
  static String? _$bodyTitle(Item v) => v.bodyTitle;
  static const Field<Item, String> _f$bodyTitle =
      Field('bodyTitle', _$bodyTitle, opt: true);
  static dynamic _$pattern(Item v) => v.pattern;
  static const Field<Item, dynamic> _f$pattern = Field('pattern', _$pattern);
  static dynamic _$patternTitle(Item v) => v.patternTitle;
  static const Field<Item, dynamic> _f$patternTitle =
      Field('patternTitle', _$patternTitle);
  static bool? _$diy(Item v) => v.diy;
  static const Field<Item, bool> _f$diy = Field('diy', _$diy, opt: true);
  static bool? _$bodyCustomize(Item v) => v.bodyCustomize;
  static const Field<Item, bool> _f$bodyCustomize =
      Field('bodyCustomize', _$bodyCustomize, opt: true);
  static bool? _$patternCustomize(Item v) => v.patternCustomize;
  static const Field<Item, bool> _f$patternCustomize =
      Field('patternCustomize', _$patternCustomize, opt: true);
  static int? _$stackSize(Item v) => v.stackSize;
  static const Field<Item, int> _f$stackSize =
      Field('stackSize', _$stackSize, opt: true);
  static int? _$kitCost(Item v) => v.kitCost;
  static const Field<Item, int> _f$kitCost =
      Field('kitCost', _$kitCost, opt: true);
  static dynamic _$kitType(Item v) => v.kitType;
  static const Field<Item, dynamic> _f$kitType = Field('kitType', _$kitType);
  static dynamic _$cyrusCustomizePrice(Item v) => v.cyrusCustomizePrice;
  static const Field<Item, dynamic> _f$cyrusCustomizePrice =
      Field('cyrusCustomizePrice', _$cyrusCustomizePrice);
  static int? _$buy(Item v) => v.buy;
  static const Field<Item, int> _f$buy = Field('buy', _$buy, opt: true);
  static int? _$sell(Item v) => v.sell;
  static const Field<Item, int> _f$sell = Field('sell', _$sell, opt: true);
  static String? _$size(Item v) => v.size;
  static const Field<Item, String> _f$size = Field('size', _$size, opt: true);
  static bool? _$surface(Item v) => v.surface;
  static const Field<Item, bool> _f$surface =
      Field('surface', _$surface, opt: true);
  static int? _$exchangePrice(Item v) => v.exchangePrice;
  static const Field<Item, int> _f$exchangePrice =
      Field('exchangePrice', _$exchangePrice, opt: true);
  static ExchangeCurrency? _$exchangeCurrency(Item v) => v.exchangeCurrency;
  static const Field<Item, ExchangeCurrency> _f$exchangeCurrency =
      Field('exchangeCurrency', _$exchangeCurrency, opt: true);
  static List<String>? _$source(Item v) => v.source;
  static const Field<Item, List<String>> _f$source =
      Field('source', _$source, opt: true);
  static List<String>? _$sourceNotes(Item v) => v.sourceNotes;
  static const Field<Item, List<String>> _f$sourceNotes =
      Field('sourceNotes', _$sourceNotes, opt: true);
  static String? _$seasonEvent(Item v) => v.seasonEvent;
  static const Field<Item, String> _f$seasonEvent =
      Field('seasonEvent', _$seasonEvent, opt: true);
  static bool? _$seasonEventExclusive(Item v) => v.seasonEventExclusive;
  static const Field<Item, bool> _f$seasonEventExclusive =
      Field('seasonEventExclusive', _$seasonEventExclusive, opt: true);
  static int? _$hhaBasePoints(Item v) => v.hhaBasePoints;
  static const Field<Item, int> _f$hhaBasePoints =
      Field('hhaBasePoints', _$hhaBasePoints, opt: true);
  static HhaCategory? _$hhaCategory(Item v) => v.hhaCategory;
  static const Field<Item, HhaCategory> _f$hhaCategory =
      Field('hhaCategory', _$hhaCategory, opt: true);
  static String? _$interact(Item v) => v.interact;
  static const Field<Item, String> _f$interact =
      Field('interact', _$interact, opt: true, hook: _InteractHook());
  static String? _$tag(Item v) => v.tag;
  static const Field<Item, String> _f$tag = Field('tag', _$tag, opt: true);
  static bool? _$outdoor(Item v) => v.outdoor;
  static const Field<Item, bool> _f$outdoor =
      Field('outdoor', _$outdoor, opt: true);
  static String? _$speakerType(Item v) => v.speakerType;
  static const Field<Item, String> _f$speakerType =
      Field('speakerType', _$speakerType, opt: true);
  static LightingType? _$lightingType(Item v) => v.lightingType;
  static const Field<Item, LightingType> _f$lightingType =
      Field('lightingType', _$lightingType, opt: true);
  static int? _$foodPower(Item v) => v.foodPower;
  static const Field<Item, int> _f$foodPower =
      Field('foodPower', _$foodPower, opt: true);
  static Catalog? _$catalog(Item v) => v.catalog;
  static const Field<Item, Catalog> _f$catalog =
      Field('catalog', _$catalog, opt: true);
  static String? _$versionAdded(Item v) => v.versionAdded;
  static const Field<Item, String> _f$versionAdded =
      Field('versionAdded', _$versionAdded, opt: true);
  static bool? _$unlocked(Item v) => v.unlocked;
  static const Field<Item, bool> _f$unlocked =
      Field('unlocked', _$unlocked, opt: true);
  static String? _$filename(Item v) => v.filename;
  static const Field<Item, String> _f$filename =
      Field('filename', _$filename, opt: true);
  static dynamic _$variantId(Item v) => v.variantId;
  static const Field<Item, dynamic> _f$variantId =
      Field('variantId', _$variantId);
  static int? _$internalId(Item v) => v.internalId;
  static const Field<Item, int> _f$internalId =
      Field('internalId', _$internalId, opt: true);
  static String? _$uniqueEntryId(Item v) => v.uniqueEntryId;
  static const Field<Item, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId, opt: true);
  static Translation? _$seriesTranslations(Item v) => v.seriesTranslations;
  static const Field<Item, Translation> _f$seriesTranslations =
      Field('seriesTranslations', _$seriesTranslations, opt: true);
  static Translation? _$translations(Item v) => v.translations;
  static const Field<Item, Translation> _f$translations =
      Field('translations', _$translations, opt: true);
  static List<String>? _$colors(Item v) => v.colors;
  static const Field<Item, List<String>> _f$colors =
      Field('colors', _$colors, opt: true);
  static List<String>? _$concepts(Item v) => v.concepts;
  static const Field<Item, List<String>> _f$concepts =
      Field('concepts', _$concepts, opt: true);
  static String? _$set(Item v) => v.set;
  static const Field<Item, String> _f$set = Field('set', _$set, opt: true);
  static String? _$series(Item v) => v.series;
  static const Field<Item, String> _f$series =
      Field('series', _$series, opt: true);
  static Recipe? _$recipe(Item v) => v.recipe;
  static const Field<Item, Recipe> _f$recipe =
      Field('recipe', _$recipe, opt: true);
  static Map<String, Translation>? _$themesTranslations(Item v) =>
      v.themesTranslations;
  static const Field<Item, Map<String, Translation>> _f$themesTranslations =
      Field('themesTranslations', _$themesTranslations, opt: true);
  static bool? _$villagerEquippable(Item v) => v.villagerEquippable;
  static const Field<Item, bool> _f$villagerEquippable =
      Field('villagerEquippable', _$villagerEquippable, opt: true);
  static SeasonalAvailability? _$seasonalAvailability(Item v) =>
      v.seasonalAvailability;
  static const Field<Item, SeasonalAvailability> _f$seasonalAvailability =
      Field('seasonalAvailability', _$seasonalAvailability, opt: true);
  static String? _$type(Item v) => v.type;
  static const Field<Item, String> _f$type = Field('type', _$type, opt: true);
  static List<VariationElement>? _$variations(Item v) => v.variations;
  static const Field<Item, List<VariationElement>> _f$variations =
      Field('variations', _$variations, opt: true);
  static List<Style>? _$styles(Item v) => v.styles;
  static const Field<Item, List<Style>> _f$styles =
      Field('styles', _$styles, opt: true);
  static List<String>? _$themes(Item v) => v.themes;
  static const Field<Item, List<String>> _f$themes =
      Field('themes', _$themes, opt: true);
  static String? _$closetImage(Item v) => v.closetImage;
  static const Field<Item, String> _f$closetImage =
      Field('closetImage', _$closetImage, opt: true);
  static String? _$storageImage(Item v) => v.storageImage;
  static const Field<Item, String> _f$storageImage =
      Field('storageImage', _$storageImage, opt: true);
  static SeasonalAvailability? _$seasonality(Item v) => v.seasonality;
  static const Field<Item, SeasonalAvailability> _f$seasonality =
      Field('seasonality', _$seasonality, opt: true);
  static SeasonalAvailability? _$mannequinSeason(Item v) => v.mannequinSeason;
  static const Field<Item, SeasonalAvailability> _f$mannequinSeason =
      Field('mannequinSeason', _$mannequinSeason, opt: true);
  static String? _$gender(Item v) => v.gender;
  static const Field<Item, String> _f$gender =
      Field('gender', _$gender, opt: true);
  static String? _$villagerGender(Item v) => v.villagerGender;
  static const Field<Item, String> _f$villagerGender =
      Field('villagerGender', _$villagerGender, opt: true);
  static int? _$sortOrder(Item v) => v.sortOrder;
  static const Field<Item, int> _f$sortOrder =
      Field('sortOrder', _$sortOrder, opt: true);
  static int? _$clothGroupId(Item v) => v.clothGroupId;
  static const Field<Item, int> _f$clothGroupId =
      Field('clothGroupId', _$clothGroupId, opt: true);
  static bool? _$customize(Item v) => v.customize;
  static const Field<Item, bool> _f$customize =
      Field('customize', _$customize, opt: true);
  static String? _$backColor(Item v) => v.backColor;
  static const Field<Item, String> _f$backColor =
      Field('backColor', _$backColor, opt: true);
  static String? _$bodyColor(Item v) => v.bodyColor;
  static const Field<Item, String> _f$bodyColor =
      Field('bodyColor', _$bodyColor, opt: true);
  static String? _$headColor(Item v) => v.headColor;
  static const Field<Item, String> _f$headColor =
      Field('headColor', _$headColor, opt: true);
  static String? _$footColor(Item v) => v.footColor;
  static const Field<Item, String> _f$footColor =
      Field('footColor', _$footColor, opt: true);
  static String? _$penColor1(Item v) => v.penColor1;
  static const Field<Item, String> _f$penColor1 =
      Field('penColor1', _$penColor1, opt: true);
  static String? _$penColor2(Item v) => v.penColor2;
  static const Field<Item, String> _f$penColor2 =
      Field('penColor2', _$penColor2, opt: true);
  static String? _$penColor3(Item v) => v.penColor3;
  static const Field<Item, String> _f$penColor3 =
      Field('penColor3', _$penColor3, opt: true);
  static String? _$penColor4(Item v) => v.penColor4;
  static const Field<Item, String> _f$penColor4 =
      Field('penColor4', _$penColor4, opt: true);
  static String? _$startDate(Item v) => v.startDate;
  static const Field<Item, String> _f$startDate =
      Field('startDate', _$startDate, opt: true);
  static String? _$endDate(Item v) => v.endDate;
  static const Field<Item, String> _f$endDate =
      Field('endDate', _$endDate, opt: true);
  static String? _$nhStartDate(Item v) => v.nhStartDate;
  static const Field<Item, String> _f$nhStartDate =
      Field('nhStartDate', _$nhStartDate, opt: true);
  static String? _$nhEndDate(Item v) => v.nhEndDate;
  static const Field<Item, String> _f$nhEndDate =
      Field('nhEndDate', _$nhEndDate, opt: true);
  static String? _$shStartDate(Item v) => v.shStartDate;
  static const Field<Item, String> _f$shStartDate =
      Field('shStartDate', _$shStartDate, opt: true);
  static String? _$shEndDate(Item v) => v.shEndDate;
  static const Field<Item, String> _f$shEndDate =
      Field('shEndDate', _$shEndDate, opt: true);
  static String? _$version(Item v) => v.version;
  static const Field<Item, String> _f$version =
      Field('version', _$version, opt: true);
  static String? _$framedImage(Item v) => v.framedImage;
  static const Field<Item, String> _f$framedImage =
      Field('framedImage', _$framedImage, opt: true);
  static String? _$albumImage(Item v) => v.albumImage;
  static const Field<Item, String> _f$albumImage =
      Field('albumImage', _$albumImage, opt: true);
  static String? _$inventoryImage(Item v) => v.inventoryImage;
  static const Field<Item, String> _f$inventoryImage =
      Field('inventoryImage', _$inventoryImage, opt: true);
  static String? _$inventoryFilename(Item v) => v.inventoryFilename;
  static const Field<Item, String> _f$inventoryFilename =
      Field('inventoryFilename', _$inventoryFilename, opt: true);
  static String? _$storageFilename(Item v) => v.storageFilename;
  static const Field<Item, String> _f$storageFilename =
      Field('storageFilename', _$storageFilename, opt: true);
  static SizeCategory? _$sizeCategory(Item v) => v.sizeCategory;
  static const Field<Item, SizeCategory> _f$sizeCategory =
      Field('sizeCategory', _$sizeCategory, opt: true);
  static String? _$primaryShape(Item v) => v.primaryShape;
  static const Field<Item, String> _f$primaryShape =
      Field('primaryShape', _$primaryShape, opt: true);
  static String? _$secondaryShape(Item v) => v.secondaryShape;
  static const Field<Item, String> _f$secondaryShape =
      Field('secondaryShape', _$secondaryShape, opt: true);
  static bool? _$vfx(Item v) => v.vfx;
  static const Field<Item, bool> _f$vfx = Field('vfx', _$vfx, opt: true);
  static bool? _$doorDeco(Item v) => v.doorDeco;
  static const Field<Item, bool> _f$doorDeco =
      Field('doorDeco', _$doorDeco, opt: true);
  static VfxType? _$vfxType(Item v) => v.vfxType;
  static const Field<Item, VfxType> _f$vfxType =
      Field('vfxType', _$vfxType, opt: true);
  static String? _$windowType(Item v) => v.windowType;
  static const Field<Item, String> _f$windowType =
      Field('windowType', _$windowType, opt: true);
  static String? _$windowColor(Item v) => v.windowColor;
  static const Field<Item, String> _f$windowColor =
      Field('windowColor', _$windowColor, opt: true);
  static PaneType? _$paneType(Item v) => v.paneType;
  static const Field<Item, PaneType> _f$paneType =
      Field('paneType', _$paneType, opt: true);
  static CurtainType? _$curtainType(Item v) => v.curtainType;
  static const Field<Item, CurtainType> _f$curtainType =
      Field('curtainType', _$curtainType, opt: true);
  static String? _$curtainColor(Item v) => v.curtainColor;
  static const Field<Item, String> _f$curtainColor =
      Field('curtainColor', _$curtainColor, opt: true);
  static CeilingType? _$ceilingType(Item v) => v.ceilingType;
  static const Field<Item, CeilingType> _f$ceilingType =
      Field('ceilingType', _$ceilingType, opt: true);
  static String? _$uses(Item v) => v.uses;
  static const Field<Item, String> _f$uses =
      Field('uses', _$uses, opt: true, hook: _UseHook());
  static String? _$fossilGroup(Item v) => v.fossilGroup;
  static const Field<Item, String> _f$fossilGroup =
      Field('fossilGroup', _$fossilGroup, opt: true);
  static List<String>? _$description(Item v) => v.description;
  static const Field<Item, List<String>> _f$description =
      Field('description', _$description, opt: true);
  static String? _$museum(Item v) => v.museum;
  static const Field<Item, String> _f$museum =
      Field('museum', _$museum, opt: true);
  static String? _$highResTexture(Item v) => v.highResTexture;
  static const Field<Item, String> _f$highResTexture =
      Field('highResTexture', _$highResTexture, opt: true);
  static bool? _$genuine(Item v) => v.genuine;
  static const Field<Item, bool> _f$genuine =
      Field('genuine', _$genuine, opt: true);
  static String? _$category(Item v) => v.category;
  static const Field<Item, String> _f$category =
      Field('category', _$category, opt: true);
  static String? _$realArtworkTitle(Item v) => v.realArtworkTitle;
  static const Field<Item, String> _f$realArtworkTitle =
      Field('realArtworkTitle', _$realArtworkTitle, opt: true);
  static String? _$artist(Item v) => v.artist;
  static const Field<Item, String> _f$artist =
      Field('artist', _$artist, opt: true);
  static String? _$soundType(Item v) => v.soundType;
  static const Field<Item, String> _f$soundType =
      Field('soundType', _$soundType, opt: true);

  @override
  final MappableFields<Item> fields = const {
    #sourceSheet: _f$sourceSheet,
    #name: _f$name,
    #image: _f$image,
    #variation: _f$variation,
    #bodyTitle: _f$bodyTitle,
    #pattern: _f$pattern,
    #patternTitle: _f$patternTitle,
    #diy: _f$diy,
    #bodyCustomize: _f$bodyCustomize,
    #patternCustomize: _f$patternCustomize,
    #stackSize: _f$stackSize,
    #kitCost: _f$kitCost,
    #kitType: _f$kitType,
    #cyrusCustomizePrice: _f$cyrusCustomizePrice,
    #buy: _f$buy,
    #sell: _f$sell,
    #size: _f$size,
    #surface: _f$surface,
    #exchangePrice: _f$exchangePrice,
    #exchangeCurrency: _f$exchangeCurrency,
    #source: _f$source,
    #sourceNotes: _f$sourceNotes,
    #seasonEvent: _f$seasonEvent,
    #seasonEventExclusive: _f$seasonEventExclusive,
    #hhaBasePoints: _f$hhaBasePoints,
    #hhaCategory: _f$hhaCategory,
    #interact: _f$interact,
    #tag: _f$tag,
    #outdoor: _f$outdoor,
    #speakerType: _f$speakerType,
    #lightingType: _f$lightingType,
    #foodPower: _f$foodPower,
    #catalog: _f$catalog,
    #versionAdded: _f$versionAdded,
    #unlocked: _f$unlocked,
    #filename: _f$filename,
    #variantId: _f$variantId,
    #internalId: _f$internalId,
    #uniqueEntryId: _f$uniqueEntryId,
    #seriesTranslations: _f$seriesTranslations,
    #translations: _f$translations,
    #colors: _f$colors,
    #concepts: _f$concepts,
    #set: _f$set,
    #series: _f$series,
    #recipe: _f$recipe,
    #themesTranslations: _f$themesTranslations,
    #villagerEquippable: _f$villagerEquippable,
    #seasonalAvailability: _f$seasonalAvailability,
    #type: _f$type,
    #variations: _f$variations,
    #styles: _f$styles,
    #themes: _f$themes,
    #closetImage: _f$closetImage,
    #storageImage: _f$storageImage,
    #seasonality: _f$seasonality,
    #mannequinSeason: _f$mannequinSeason,
    #gender: _f$gender,
    #villagerGender: _f$villagerGender,
    #sortOrder: _f$sortOrder,
    #clothGroupId: _f$clothGroupId,
    #customize: _f$customize,
    #backColor: _f$backColor,
    #bodyColor: _f$bodyColor,
    #headColor: _f$headColor,
    #footColor: _f$footColor,
    #penColor1: _f$penColor1,
    #penColor2: _f$penColor2,
    #penColor3: _f$penColor3,
    #penColor4: _f$penColor4,
    #startDate: _f$startDate,
    #endDate: _f$endDate,
    #nhStartDate: _f$nhStartDate,
    #nhEndDate: _f$nhEndDate,
    #shStartDate: _f$shStartDate,
    #shEndDate: _f$shEndDate,
    #version: _f$version,
    #framedImage: _f$framedImage,
    #albumImage: _f$albumImage,
    #inventoryImage: _f$inventoryImage,
    #inventoryFilename: _f$inventoryFilename,
    #storageFilename: _f$storageFilename,
    #sizeCategory: _f$sizeCategory,
    #primaryShape: _f$primaryShape,
    #secondaryShape: _f$secondaryShape,
    #vfx: _f$vfx,
    #doorDeco: _f$doorDeco,
    #vfxType: _f$vfxType,
    #windowType: _f$windowType,
    #windowColor: _f$windowColor,
    #paneType: _f$paneType,
    #curtainType: _f$curtainType,
    #curtainColor: _f$curtainColor,
    #ceilingType: _f$ceilingType,
    #uses: _f$uses,
    #fossilGroup: _f$fossilGroup,
    #description: _f$description,
    #museum: _f$museum,
    #highResTexture: _f$highResTexture,
    #genuine: _f$genuine,
    #category: _f$category,
    #realArtworkTitle: _f$realArtworkTitle,
    #artist: _f$artist,
    #soundType: _f$soundType,
  };

  static Item _instantiate(DecodingData data) {
    return Item(
        sourceSheet: data.dec(_f$sourceSheet),
        name: data.dec(_f$name),
        image: data.dec(_f$image),
        variation: data.dec(_f$variation),
        bodyTitle: data.dec(_f$bodyTitle),
        pattern: data.dec(_f$pattern),
        patternTitle: data.dec(_f$patternTitle),
        diy: data.dec(_f$diy),
        bodyCustomize: data.dec(_f$bodyCustomize),
        patternCustomize: data.dec(_f$patternCustomize),
        stackSize: data.dec(_f$stackSize),
        kitCost: data.dec(_f$kitCost),
        kitType: data.dec(_f$kitType),
        cyrusCustomizePrice: data.dec(_f$cyrusCustomizePrice),
        buy: data.dec(_f$buy),
        sell: data.dec(_f$sell),
        size: data.dec(_f$size),
        surface: data.dec(_f$surface),
        exchangePrice: data.dec(_f$exchangePrice),
        exchangeCurrency: data.dec(_f$exchangeCurrency),
        source: data.dec(_f$source),
        sourceNotes: data.dec(_f$sourceNotes),
        seasonEvent: data.dec(_f$seasonEvent),
        seasonEventExclusive: data.dec(_f$seasonEventExclusive),
        hhaBasePoints: data.dec(_f$hhaBasePoints),
        hhaCategory: data.dec(_f$hhaCategory),
        interact: data.dec(_f$interact),
        tag: data.dec(_f$tag),
        outdoor: data.dec(_f$outdoor),
        speakerType: data.dec(_f$speakerType),
        lightingType: data.dec(_f$lightingType),
        foodPower: data.dec(_f$foodPower),
        catalog: data.dec(_f$catalog),
        versionAdded: data.dec(_f$versionAdded),
        unlocked: data.dec(_f$unlocked),
        filename: data.dec(_f$filename),
        variantId: data.dec(_f$variantId),
        internalId: data.dec(_f$internalId),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        seriesTranslations: data.dec(_f$seriesTranslations),
        translations: data.dec(_f$translations),
        colors: data.dec(_f$colors),
        concepts: data.dec(_f$concepts),
        set: data.dec(_f$set),
        series: data.dec(_f$series),
        recipe: data.dec(_f$recipe),
        themesTranslations: data.dec(_f$themesTranslations),
        villagerEquippable: data.dec(_f$villagerEquippable),
        seasonalAvailability: data.dec(_f$seasonalAvailability),
        type: data.dec(_f$type),
        variations: data.dec(_f$variations),
        styles: data.dec(_f$styles),
        themes: data.dec(_f$themes),
        closetImage: data.dec(_f$closetImage),
        storageImage: data.dec(_f$storageImage),
        seasonality: data.dec(_f$seasonality),
        mannequinSeason: data.dec(_f$mannequinSeason),
        gender: data.dec(_f$gender),
        villagerGender: data.dec(_f$villagerGender),
        sortOrder: data.dec(_f$sortOrder),
        clothGroupId: data.dec(_f$clothGroupId),
        customize: data.dec(_f$customize),
        backColor: data.dec(_f$backColor),
        bodyColor: data.dec(_f$bodyColor),
        headColor: data.dec(_f$headColor),
        footColor: data.dec(_f$footColor),
        penColor1: data.dec(_f$penColor1),
        penColor2: data.dec(_f$penColor2),
        penColor3: data.dec(_f$penColor3),
        penColor4: data.dec(_f$penColor4),
        startDate: data.dec(_f$startDate),
        endDate: data.dec(_f$endDate),
        nhStartDate: data.dec(_f$nhStartDate),
        nhEndDate: data.dec(_f$nhEndDate),
        shStartDate: data.dec(_f$shStartDate),
        shEndDate: data.dec(_f$shEndDate),
        version: data.dec(_f$version),
        framedImage: data.dec(_f$framedImage),
        albumImage: data.dec(_f$albumImage),
        inventoryImage: data.dec(_f$inventoryImage),
        inventoryFilename: data.dec(_f$inventoryFilename),
        storageFilename: data.dec(_f$storageFilename),
        sizeCategory: data.dec(_f$sizeCategory),
        primaryShape: data.dec(_f$primaryShape),
        secondaryShape: data.dec(_f$secondaryShape),
        vfx: data.dec(_f$vfx),
        doorDeco: data.dec(_f$doorDeco),
        vfxType: data.dec(_f$vfxType),
        windowType: data.dec(_f$windowType),
        windowColor: data.dec(_f$windowColor),
        paneType: data.dec(_f$paneType),
        curtainType: data.dec(_f$curtainType),
        curtainColor: data.dec(_f$curtainColor),
        ceilingType: data.dec(_f$ceilingType),
        uses: data.dec(_f$uses),
        fossilGroup: data.dec(_f$fossilGroup),
        description: data.dec(_f$description),
        museum: data.dec(_f$museum),
        highResTexture: data.dec(_f$highResTexture),
        genuine: data.dec(_f$genuine),
        category: data.dec(_f$category),
        realArtworkTitle: data.dec(_f$realArtworkTitle),
        artist: data.dec(_f$artist),
        soundType: data.dec(_f$soundType));
  }

  @override
  final Function instantiate = _instantiate;

  static Item fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Item>(map);
  }

  static Item deserialize(String json) {
    return ensureInitialized().decodeJson<Item>(json);
  }
}

mixin ItemMappable {
  String serialize() {
    return ItemMapper.ensureInitialized().encodeJson<Item>(this as Item);
  }

  Map<String, dynamic> toJson() {
    return ItemMapper.ensureInitialized().encodeMap<Item>(this as Item);
  }

  ItemCopyWith<Item, Item, Item> get copyWith =>
      _ItemCopyWithImpl(this as Item, $identity, $identity);
  @override
  String toString() {
    return ItemMapper.ensureInitialized().stringifyValue(this as Item);
  }

  @override
  bool operator ==(Object other) {
    return ItemMapper.ensureInitialized().equalsValue(this as Item, other);
  }

  @override
  int get hashCode {
    return ItemMapper.ensureInitialized().hashValue(this as Item);
  }
}

extension ItemValueCopy<$R, $Out> on ObjectCopyWith<$R, Item, $Out> {
  ItemCopyWith<$R, Item, $Out> get $asItem =>
      $base.as((v, t, t2) => _ItemCopyWithImpl(v, t, t2));
}

abstract class ItemCopyWith<$R, $In extends Item, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get source;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get sourceNotes;
  TranslationCopyWith<$R, Translation, Translation>? get seriesTranslations;
  TranslationCopyWith<$R, Translation, Translation>? get translations;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get colors;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get concepts;
  RecipeCopyWith<$R, Recipe, Recipe>? get recipe;
  MapCopyWith<$R, String, Translation,
          TranslationCopyWith<$R, Translation, Translation>>?
      get themesTranslations;
  ListCopyWith<$R, VariationElement,
          VariationElementCopyWith<$R, VariationElement, VariationElement>>?
      get variations;
  ListCopyWith<$R, Style, ObjectCopyWith<$R, Style, Style>>? get styles;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get themes;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get description;
  $R call(
      {ItemCategory? sourceSheet,
      String? name,
      String? image,
      dynamic variation,
      String? bodyTitle,
      dynamic pattern,
      dynamic patternTitle,
      bool? diy,
      bool? bodyCustomize,
      bool? patternCustomize,
      int? stackSize,
      int? kitCost,
      dynamic kitType,
      dynamic cyrusCustomizePrice,
      int? buy,
      int? sell,
      String? size,
      bool? surface,
      int? exchangePrice,
      ExchangeCurrency? exchangeCurrency,
      List<String>? source,
      List<String>? sourceNotes,
      String? seasonEvent,
      bool? seasonEventExclusive,
      int? hhaBasePoints,
      HhaCategory? hhaCategory,
      String? interact,
      String? tag,
      bool? outdoor,
      String? speakerType,
      LightingType? lightingType,
      int? foodPower,
      Catalog? catalog,
      String? versionAdded,
      bool? unlocked,
      String? filename,
      dynamic variantId,
      int? internalId,
      String? uniqueEntryId,
      Translation? seriesTranslations,
      Translation? translations,
      List<String>? colors,
      List<String>? concepts,
      String? set,
      String? series,
      Recipe? recipe,
      Map<String, Translation>? themesTranslations,
      bool? villagerEquippable,
      SeasonalAvailability? seasonalAvailability,
      String? type,
      List<VariationElement>? variations,
      List<Style>? styles,
      List<String>? themes,
      String? closetImage,
      String? storageImage,
      SeasonalAvailability? seasonality,
      SeasonalAvailability? mannequinSeason,
      String? gender,
      String? villagerGender,
      int? sortOrder,
      int? clothGroupId,
      bool? customize,
      String? backColor,
      String? bodyColor,
      String? headColor,
      String? footColor,
      String? penColor1,
      String? penColor2,
      String? penColor3,
      String? penColor4,
      String? startDate,
      String? endDate,
      String? nhStartDate,
      String? nhEndDate,
      String? shStartDate,
      String? shEndDate,
      String? version,
      String? framedImage,
      String? albumImage,
      String? inventoryImage,
      String? inventoryFilename,
      String? storageFilename,
      SizeCategory? sizeCategory,
      String? primaryShape,
      String? secondaryShape,
      bool? vfx,
      bool? doorDeco,
      VfxType? vfxType,
      String? windowType,
      String? windowColor,
      PaneType? paneType,
      CurtainType? curtainType,
      String? curtainColor,
      CeilingType? ceilingType,
      String? uses,
      String? fossilGroup,
      List<String>? description,
      String? museum,
      String? highResTexture,
      bool? genuine,
      String? category,
      String? realArtworkTitle,
      String? artist,
      String? soundType});
  ItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Item, $Out>
    implements ItemCopyWith<$R, Item, $Out> {
  _ItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Item> $mapper = ItemMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get source =>
      $value.source != null
          ? ListCopyWith($value.source!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(source: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get sourceNotes => $value.sourceNotes != null
          ? ListCopyWith(
              $value.sourceNotes!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(sourceNotes: v))
          : null;
  @override
  TranslationCopyWith<$R, Translation, Translation>? get seriesTranslations =>
      $value.seriesTranslations?.copyWith
          .$chain((v) => call(seriesTranslations: v));
  @override
  TranslationCopyWith<$R, Translation, Translation>? get translations =>
      $value.translations?.copyWith.$chain((v) => call(translations: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get colors =>
      $value.colors != null
          ? ListCopyWith($value.colors!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(colors: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get concepts =>
      $value.concepts != null
          ? ListCopyWith(
              $value.concepts!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(concepts: v))
          : null;
  @override
  RecipeCopyWith<$R, Recipe, Recipe>? get recipe =>
      $value.recipe?.copyWith.$chain((v) => call(recipe: v));
  @override
  MapCopyWith<$R, String, Translation,
          TranslationCopyWith<$R, Translation, Translation>>?
      get themesTranslations => $value.themesTranslations != null
          ? MapCopyWith(
              $value.themesTranslations!,
              (v, t) => v.copyWith.$chain(t),
              (v) => call(themesTranslations: v))
          : null;
  @override
  ListCopyWith<$R, VariationElement,
          VariationElementCopyWith<$R, VariationElement, VariationElement>>?
      get variations => $value.variations != null
          ? ListCopyWith($value.variations!, (v, t) => v.copyWith.$chain(t),
              (v) => call(variations: v))
          : null;
  @override
  ListCopyWith<$R, Style, ObjectCopyWith<$R, Style, Style>>? get styles =>
      $value.styles != null
          ? ListCopyWith($value.styles!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(styles: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get themes =>
      $value.themes != null
          ? ListCopyWith($value.themes!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(themes: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get description => $value.description != null
          ? ListCopyWith(
              $value.description!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(description: v))
          : null;
  @override
  $R call(
          {ItemCategory? sourceSheet,
          String? name,
          Object? image = $none,
          Object? variation = $none,
          Object? bodyTitle = $none,
          Object? pattern = $none,
          Object? patternTitle = $none,
          Object? diy = $none,
          Object? bodyCustomize = $none,
          Object? patternCustomize = $none,
          Object? stackSize = $none,
          Object? kitCost = $none,
          Object? kitType = $none,
          Object? cyrusCustomizePrice = $none,
          Object? buy = $none,
          Object? sell = $none,
          Object? size = $none,
          Object? surface = $none,
          Object? exchangePrice = $none,
          Object? exchangeCurrency = $none,
          Object? source = $none,
          Object? sourceNotes = $none,
          Object? seasonEvent = $none,
          Object? seasonEventExclusive = $none,
          Object? hhaBasePoints = $none,
          Object? hhaCategory = $none,
          Object? interact = $none,
          Object? tag = $none,
          Object? outdoor = $none,
          Object? speakerType = $none,
          Object? lightingType = $none,
          Object? foodPower = $none,
          Object? catalog = $none,
          Object? versionAdded = $none,
          Object? unlocked = $none,
          Object? filename = $none,
          Object? variantId = $none,
          Object? internalId = $none,
          Object? uniqueEntryId = $none,
          Object? seriesTranslations = $none,
          Object? translations = $none,
          Object? colors = $none,
          Object? concepts = $none,
          Object? set = $none,
          Object? series = $none,
          Object? recipe = $none,
          Object? themesTranslations = $none,
          Object? villagerEquippable = $none,
          Object? seasonalAvailability = $none,
          Object? type = $none,
          Object? variations = $none,
          Object? styles = $none,
          Object? themes = $none,
          Object? closetImage = $none,
          Object? storageImage = $none,
          Object? seasonality = $none,
          Object? mannequinSeason = $none,
          Object? gender = $none,
          Object? villagerGender = $none,
          Object? sortOrder = $none,
          Object? clothGroupId = $none,
          Object? customize = $none,
          Object? backColor = $none,
          Object? bodyColor = $none,
          Object? headColor = $none,
          Object? footColor = $none,
          Object? penColor1 = $none,
          Object? penColor2 = $none,
          Object? penColor3 = $none,
          Object? penColor4 = $none,
          Object? startDate = $none,
          Object? endDate = $none,
          Object? nhStartDate = $none,
          Object? nhEndDate = $none,
          Object? shStartDate = $none,
          Object? shEndDate = $none,
          Object? version = $none,
          Object? framedImage = $none,
          Object? albumImage = $none,
          Object? inventoryImage = $none,
          Object? inventoryFilename = $none,
          Object? storageFilename = $none,
          Object? sizeCategory = $none,
          Object? primaryShape = $none,
          Object? secondaryShape = $none,
          Object? vfx = $none,
          Object? doorDeco = $none,
          Object? vfxType = $none,
          Object? windowType = $none,
          Object? windowColor = $none,
          Object? paneType = $none,
          Object? curtainType = $none,
          Object? curtainColor = $none,
          Object? ceilingType = $none,
          Object? uses = $none,
          Object? fossilGroup = $none,
          Object? description = $none,
          Object? museum = $none,
          Object? highResTexture = $none,
          Object? genuine = $none,
          Object? category = $none,
          Object? realArtworkTitle = $none,
          Object? artist = $none,
          Object? soundType = $none}) =>
      $apply(FieldCopyWithData({
        if (sourceSheet != null) #sourceSheet: sourceSheet,
        if (name != null) #name: name,
        if (image != $none) #image: image,
        if (variation != $none) #variation: variation,
        if (bodyTitle != $none) #bodyTitle: bodyTitle,
        if (pattern != $none) #pattern: pattern,
        if (patternTitle != $none) #patternTitle: patternTitle,
        if (diy != $none) #diy: diy,
        if (bodyCustomize != $none) #bodyCustomize: bodyCustomize,
        if (patternCustomize != $none) #patternCustomize: patternCustomize,
        if (stackSize != $none) #stackSize: stackSize,
        if (kitCost != $none) #kitCost: kitCost,
        if (kitType != $none) #kitType: kitType,
        if (cyrusCustomizePrice != $none)
          #cyrusCustomizePrice: cyrusCustomizePrice,
        if (buy != $none) #buy: buy,
        if (sell != $none) #sell: sell,
        if (size != $none) #size: size,
        if (surface != $none) #surface: surface,
        if (exchangePrice != $none) #exchangePrice: exchangePrice,
        if (exchangeCurrency != $none) #exchangeCurrency: exchangeCurrency,
        if (source != $none) #source: source,
        if (sourceNotes != $none) #sourceNotes: sourceNotes,
        if (seasonEvent != $none) #seasonEvent: seasonEvent,
        if (seasonEventExclusive != $none)
          #seasonEventExclusive: seasonEventExclusive,
        if (hhaBasePoints != $none) #hhaBasePoints: hhaBasePoints,
        if (hhaCategory != $none) #hhaCategory: hhaCategory,
        if (interact != $none) #interact: interact,
        if (tag != $none) #tag: tag,
        if (outdoor != $none) #outdoor: outdoor,
        if (speakerType != $none) #speakerType: speakerType,
        if (lightingType != $none) #lightingType: lightingType,
        if (foodPower != $none) #foodPower: foodPower,
        if (catalog != $none) #catalog: catalog,
        if (versionAdded != $none) #versionAdded: versionAdded,
        if (unlocked != $none) #unlocked: unlocked,
        if (filename != $none) #filename: filename,
        if (variantId != $none) #variantId: variantId,
        if (internalId != $none) #internalId: internalId,
        if (uniqueEntryId != $none) #uniqueEntryId: uniqueEntryId,
        if (seriesTranslations != $none)
          #seriesTranslations: seriesTranslations,
        if (translations != $none) #translations: translations,
        if (colors != $none) #colors: colors,
        if (concepts != $none) #concepts: concepts,
        if (set != $none) #set: set,
        if (series != $none) #series: series,
        if (recipe != $none) #recipe: recipe,
        if (themesTranslations != $none)
          #themesTranslations: themesTranslations,
        if (villagerEquippable != $none)
          #villagerEquippable: villagerEquippable,
        if (seasonalAvailability != $none)
          #seasonalAvailability: seasonalAvailability,
        if (type != $none) #type: type,
        if (variations != $none) #variations: variations,
        if (styles != $none) #styles: styles,
        if (themes != $none) #themes: themes,
        if (closetImage != $none) #closetImage: closetImage,
        if (storageImage != $none) #storageImage: storageImage,
        if (seasonality != $none) #seasonality: seasonality,
        if (mannequinSeason != $none) #mannequinSeason: mannequinSeason,
        if (gender != $none) #gender: gender,
        if (villagerGender != $none) #villagerGender: villagerGender,
        if (sortOrder != $none) #sortOrder: sortOrder,
        if (clothGroupId != $none) #clothGroupId: clothGroupId,
        if (customize != $none) #customize: customize,
        if (backColor != $none) #backColor: backColor,
        if (bodyColor != $none) #bodyColor: bodyColor,
        if (headColor != $none) #headColor: headColor,
        if (footColor != $none) #footColor: footColor,
        if (penColor1 != $none) #penColor1: penColor1,
        if (penColor2 != $none) #penColor2: penColor2,
        if (penColor3 != $none) #penColor3: penColor3,
        if (penColor4 != $none) #penColor4: penColor4,
        if (startDate != $none) #startDate: startDate,
        if (endDate != $none) #endDate: endDate,
        if (nhStartDate != $none) #nhStartDate: nhStartDate,
        if (nhEndDate != $none) #nhEndDate: nhEndDate,
        if (shStartDate != $none) #shStartDate: shStartDate,
        if (shEndDate != $none) #shEndDate: shEndDate,
        if (version != $none) #version: version,
        if (framedImage != $none) #framedImage: framedImage,
        if (albumImage != $none) #albumImage: albumImage,
        if (inventoryImage != $none) #inventoryImage: inventoryImage,
        if (inventoryFilename != $none) #inventoryFilename: inventoryFilename,
        if (storageFilename != $none) #storageFilename: storageFilename,
        if (sizeCategory != $none) #sizeCategory: sizeCategory,
        if (primaryShape != $none) #primaryShape: primaryShape,
        if (secondaryShape != $none) #secondaryShape: secondaryShape,
        if (vfx != $none) #vfx: vfx,
        if (doorDeco != $none) #doorDeco: doorDeco,
        if (vfxType != $none) #vfxType: vfxType,
        if (windowType != $none) #windowType: windowType,
        if (windowColor != $none) #windowColor: windowColor,
        if (paneType != $none) #paneType: paneType,
        if (curtainType != $none) #curtainType: curtainType,
        if (curtainColor != $none) #curtainColor: curtainColor,
        if (ceilingType != $none) #ceilingType: ceilingType,
        if (uses != $none) #uses: uses,
        if (fossilGroup != $none) #fossilGroup: fossilGroup,
        if (description != $none) #description: description,
        if (museum != $none) #museum: museum,
        if (highResTexture != $none) #highResTexture: highResTexture,
        if (genuine != $none) #genuine: genuine,
        if (category != $none) #category: category,
        if (realArtworkTitle != $none) #realArtworkTitle: realArtworkTitle,
        if (artist != $none) #artist: artist,
        if (soundType != $none) #soundType: soundType
      }));
  @override
  Item $make(CopyWithData data) => Item(
      sourceSheet: data.get(#sourceSheet, or: $value.sourceSheet),
      name: data.get(#name, or: $value.name),
      image: data.get(#image, or: $value.image),
      variation: data.get(#variation, or: $value.variation),
      bodyTitle: data.get(#bodyTitle, or: $value.bodyTitle),
      pattern: data.get(#pattern, or: $value.pattern),
      patternTitle: data.get(#patternTitle, or: $value.patternTitle),
      diy: data.get(#diy, or: $value.diy),
      bodyCustomize: data.get(#bodyCustomize, or: $value.bodyCustomize),
      patternCustomize:
          data.get(#patternCustomize, or: $value.patternCustomize),
      stackSize: data.get(#stackSize, or: $value.stackSize),
      kitCost: data.get(#kitCost, or: $value.kitCost),
      kitType: data.get(#kitType, or: $value.kitType),
      cyrusCustomizePrice:
          data.get(#cyrusCustomizePrice, or: $value.cyrusCustomizePrice),
      buy: data.get(#buy, or: $value.buy),
      sell: data.get(#sell, or: $value.sell),
      size: data.get(#size, or: $value.size),
      surface: data.get(#surface, or: $value.surface),
      exchangePrice: data.get(#exchangePrice, or: $value.exchangePrice),
      exchangeCurrency:
          data.get(#exchangeCurrency, or: $value.exchangeCurrency),
      source: data.get(#source, or: $value.source),
      sourceNotes: data.get(#sourceNotes, or: $value.sourceNotes),
      seasonEvent: data.get(#seasonEvent, or: $value.seasonEvent),
      seasonEventExclusive:
          data.get(#seasonEventExclusive, or: $value.seasonEventExclusive),
      hhaBasePoints: data.get(#hhaBasePoints, or: $value.hhaBasePoints),
      hhaCategory: data.get(#hhaCategory, or: $value.hhaCategory),
      interact: data.get(#interact, or: $value.interact),
      tag: data.get(#tag, or: $value.tag),
      outdoor: data.get(#outdoor, or: $value.outdoor),
      speakerType: data.get(#speakerType, or: $value.speakerType),
      lightingType: data.get(#lightingType, or: $value.lightingType),
      foodPower: data.get(#foodPower, or: $value.foodPower),
      catalog: data.get(#catalog, or: $value.catalog),
      versionAdded: data.get(#versionAdded, or: $value.versionAdded),
      unlocked: data.get(#unlocked, or: $value.unlocked),
      filename: data.get(#filename, or: $value.filename),
      variantId: data.get(#variantId, or: $value.variantId),
      internalId: data.get(#internalId, or: $value.internalId),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      seriesTranslations:
          data.get(#seriesTranslations, or: $value.seriesTranslations),
      translations: data.get(#translations, or: $value.translations),
      colors: data.get(#colors, or: $value.colors),
      concepts: data.get(#concepts, or: $value.concepts),
      set: data.get(#set, or: $value.set),
      series: data.get(#series, or: $value.series),
      recipe: data.get(#recipe, or: $value.recipe),
      themesTranslations:
          data.get(#themesTranslations, or: $value.themesTranslations),
      villagerEquippable:
          data.get(#villagerEquippable, or: $value.villagerEquippable),
      seasonalAvailability:
          data.get(#seasonalAvailability, or: $value.seasonalAvailability),
      type: data.get(#type, or: $value.type),
      variations: data.get(#variations, or: $value.variations),
      styles: data.get(#styles, or: $value.styles),
      themes: data.get(#themes, or: $value.themes),
      closetImage: data.get(#closetImage, or: $value.closetImage),
      storageImage: data.get(#storageImage, or: $value.storageImage),
      seasonality: data.get(#seasonality, or: $value.seasonality),
      mannequinSeason: data.get(#mannequinSeason, or: $value.mannequinSeason),
      gender: data.get(#gender, or: $value.gender),
      villagerGender: data.get(#villagerGender, or: $value.villagerGender),
      sortOrder: data.get(#sortOrder, or: $value.sortOrder),
      clothGroupId: data.get(#clothGroupId, or: $value.clothGroupId),
      customize: data.get(#customize, or: $value.customize),
      backColor: data.get(#backColor, or: $value.backColor),
      bodyColor: data.get(#bodyColor, or: $value.bodyColor),
      headColor: data.get(#headColor, or: $value.headColor),
      footColor: data.get(#footColor, or: $value.footColor),
      penColor1: data.get(#penColor1, or: $value.penColor1),
      penColor2: data.get(#penColor2, or: $value.penColor2),
      penColor3: data.get(#penColor3, or: $value.penColor3),
      penColor4: data.get(#penColor4, or: $value.penColor4),
      startDate: data.get(#startDate, or: $value.startDate),
      endDate: data.get(#endDate, or: $value.endDate),
      nhStartDate: data.get(#nhStartDate, or: $value.nhStartDate),
      nhEndDate: data.get(#nhEndDate, or: $value.nhEndDate),
      shStartDate: data.get(#shStartDate, or: $value.shStartDate),
      shEndDate: data.get(#shEndDate, or: $value.shEndDate),
      version: data.get(#version, or: $value.version),
      framedImage: data.get(#framedImage, or: $value.framedImage),
      albumImage: data.get(#albumImage, or: $value.albumImage),
      inventoryImage: data.get(#inventoryImage, or: $value.inventoryImage),
      inventoryFilename:
          data.get(#inventoryFilename, or: $value.inventoryFilename),
      storageFilename: data.get(#storageFilename, or: $value.storageFilename),
      sizeCategory: data.get(#sizeCategory, or: $value.sizeCategory),
      primaryShape: data.get(#primaryShape, or: $value.primaryShape),
      secondaryShape: data.get(#secondaryShape, or: $value.secondaryShape),
      vfx: data.get(#vfx, or: $value.vfx),
      doorDeco: data.get(#doorDeco, or: $value.doorDeco),
      vfxType: data.get(#vfxType, or: $value.vfxType),
      windowType: data.get(#windowType, or: $value.windowType),
      windowColor: data.get(#windowColor, or: $value.windowColor),
      paneType: data.get(#paneType, or: $value.paneType),
      curtainType: data.get(#curtainType, or: $value.curtainType),
      curtainColor: data.get(#curtainColor, or: $value.curtainColor),
      ceilingType: data.get(#ceilingType, or: $value.ceilingType),
      uses: data.get(#uses, or: $value.uses),
      fossilGroup: data.get(#fossilGroup, or: $value.fossilGroup),
      description: data.get(#description, or: $value.description),
      museum: data.get(#museum, or: $value.museum),
      highResTexture: data.get(#highResTexture, or: $value.highResTexture),
      genuine: data.get(#genuine, or: $value.genuine),
      category: data.get(#category, or: $value.category),
      realArtworkTitle:
          data.get(#realArtworkTitle, or: $value.realArtworkTitle),
      artist: data.get(#artist, or: $value.artist),
      soundType: data.get(#soundType, or: $value.soundType));

  @override
  ItemCopyWith<$R2, Item, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ItemCopyWithImpl($value, $cast, t);
}

class VariationElementMapper extends ClassMapperBase<VariationElement> {
  VariationElementMapper._();

  static VariationElementMapper? _instance;
  static VariationElementMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VariationElementMapper._());
      ExchangeCurrencyMapper.ensureInitialized();
      SeasonalAvailabilityMapper.ensureInitialized();
      TranslationMapper.ensureInitialized();
      HhaCategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VariationElement';

  static String? _$closetImage(VariationElement v) => v.closetImage;
  static const Field<VariationElement, String> _f$closetImage =
      Field('closetImage', _$closetImage, opt: true);
  static String? _$storageImage(VariationElement v) => v.storageImage;
  static const Field<VariationElement, String> _f$storageImage =
      Field('storageImage', _$storageImage, opt: true);
  static String? _$variation(VariationElement v) => v.variation;
  static const Field<VariationElement, String> _f$variation =
      Field('variation', _$variation, opt: true, hook: _VariationHook());
  static int? _$exchangePrice(VariationElement v) => v.exchangePrice;
  static const Field<VariationElement, int> _f$exchangePrice =
      Field('exchangePrice', _$exchangePrice, opt: true);
  static ExchangeCurrency? _$exchangeCurrency(VariationElement v) =>
      v.exchangeCurrency;
  static const Field<VariationElement, ExchangeCurrency> _f$exchangeCurrency =
      Field('exchangeCurrency', _$exchangeCurrency, opt: true);
  static String? _$seasonEvent(VariationElement v) => v.seasonEvent;
  static const Field<VariationElement, String> _f$seasonEvent =
      Field('seasonEvent', _$seasonEvent, opt: true);
  static bool? _$seasonEventExclusive(VariationElement v) =>
      v.seasonEventExclusive;
  static const Field<VariationElement, bool> _f$seasonEventExclusive =
      Field('seasonEventExclusive', _$seasonEventExclusive, opt: true);
  static SeasonalAvailability? _$seasonality(VariationElement v) =>
      v.seasonality;
  static const Field<VariationElement, SeasonalAvailability> _f$seasonality =
      Field('seasonality', _$seasonality, opt: true);
  static SeasonalAvailability? _$mannequinSeason(VariationElement v) =>
      v.mannequinSeason;
  static const Field<VariationElement, SeasonalAvailability>
      _f$mannequinSeason =
      Field('mannequinSeason', _$mannequinSeason, opt: true);
  static String? _$gender(VariationElement v) => v.gender;
  static const Field<VariationElement, String> _f$gender =
      Field('gender', _$gender, opt: true);
  static String? _$villagerGender(VariationElement v) => v.villagerGender;
  static const Field<VariationElement, String> _f$villagerGender =
      Field('villagerGender', _$villagerGender, opt: true);
  static int? _$sortOrder(VariationElement v) => v.sortOrder;
  static const Field<VariationElement, int> _f$sortOrder =
      Field('sortOrder', _$sortOrder, opt: true);
  static String _$filename(VariationElement v) => v.filename;
  static const Field<VariationElement, String> _f$filename =
      Field('filename', _$filename);
  static int? _$clothGroupId(VariationElement v) => v.clothGroupId;
  static const Field<VariationElement, int> _f$clothGroupId =
      Field('clothGroupId', _$clothGroupId, opt: true);
  static int _$internalId(VariationElement v) => v.internalId;
  static const Field<VariationElement, int> _f$internalId =
      Field('internalId', _$internalId);
  static String _$uniqueEntryId(VariationElement v) => v.uniqueEntryId;
  static const Field<VariationElement, String> _f$uniqueEntryId =
      Field('uniqueEntryId', _$uniqueEntryId);
  static Translation? _$variantTranslations(VariationElement v) =>
      v.variantTranslations;
  static const Field<VariationElement, Translation> _f$variantTranslations =
      Field('variantTranslations', _$variantTranslations, opt: true);
  static List<String>? _$colors(VariationElement v) => v.colors;
  static const Field<VariationElement, List<String>> _f$colors =
      Field('colors', _$colors, opt: true);
  static String? _$image(VariationElement v) => v.image;
  static const Field<VariationElement, String> _f$image =
      Field('image', _$image, opt: true);
  static String? _$pattern(VariationElement v) => v.pattern;
  static const Field<VariationElement, String> _f$pattern =
      Field('pattern', _$pattern, opt: true);
  static String? _$patternTitle(VariationElement v) => v.patternTitle;
  static const Field<VariationElement, String> _f$patternTitle =
      Field('patternTitle', _$patternTitle, opt: true);
  static String? _$kitType(VariationElement v) => v.kitType;
  static const Field<VariationElement, String> _f$kitType =
      Field('kitType', _$kitType, opt: true);
  static int? _$cyrusCustomizePrice(VariationElement v) =>
      v.cyrusCustomizePrice;
  static const Field<VariationElement, int> _f$cyrusCustomizePrice =
      Field('cyrusCustomizePrice', _$cyrusCustomizePrice, opt: true);
  static bool? _$surface(VariationElement v) => v.surface;
  static const Field<VariationElement, bool> _f$surface =
      Field('surface', _$surface, opt: true);
  static HhaCategory? _$hhaCategory(VariationElement v) => v.hhaCategory;
  static const Field<VariationElement, HhaCategory> _f$hhaCategory =
      Field('hhaCategory', _$hhaCategory, opt: true);
  static String? _$variantId(VariationElement v) => v.variantId;
  static const Field<VariationElement, String> _f$variantId =
      Field('variantId', _$variantId, opt: true);
  static List<String>? _$concepts(VariationElement v) => v.concepts;
  static const Field<VariationElement, List<String>> _f$concepts =
      Field('concepts', _$concepts, opt: true);
  static int? _$stackSize(VariationElement v) => v.stackSize;
  static const Field<VariationElement, int> _f$stackSize =
      Field('stackSize', _$stackSize, opt: true);
  static int? _$foodPower(VariationElement v) => v.foodPower;
  static const Field<VariationElement, int> _f$foodPower =
      Field('foodPower', _$foodPower, opt: true);
  static Translation? _$patternTranslations(VariationElement v) =>
      v.patternTranslations;
  static const Field<VariationElement, Translation> _f$patternTranslations =
      Field('patternTranslations', _$patternTranslations, opt: true);
  static bool? _$doorDeco(VariationElement v) => v.doorDeco;
  static const Field<VariationElement, bool> _f$doorDeco =
      Field('doorDeco', _$doorDeco, opt: true);
  static String? _$soundType(VariationElement v) => v.soundType;
  static const Field<VariationElement, String> _f$soundType =
      Field('soundType', _$soundType, opt: true);
  static String? _$uses(VariationElement v) => v.uses;
  static const Field<VariationElement, String> _f$uses =
      Field('uses', _$uses, opt: true, hook: _UseHook());

  @override
  final MappableFields<VariationElement> fields = const {
    #closetImage: _f$closetImage,
    #storageImage: _f$storageImage,
    #variation: _f$variation,
    #exchangePrice: _f$exchangePrice,
    #exchangeCurrency: _f$exchangeCurrency,
    #seasonEvent: _f$seasonEvent,
    #seasonEventExclusive: _f$seasonEventExclusive,
    #seasonality: _f$seasonality,
    #mannequinSeason: _f$mannequinSeason,
    #gender: _f$gender,
    #villagerGender: _f$villagerGender,
    #sortOrder: _f$sortOrder,
    #filename: _f$filename,
    #clothGroupId: _f$clothGroupId,
    #internalId: _f$internalId,
    #uniqueEntryId: _f$uniqueEntryId,
    #variantTranslations: _f$variantTranslations,
    #colors: _f$colors,
    #image: _f$image,
    #pattern: _f$pattern,
    #patternTitle: _f$patternTitle,
    #kitType: _f$kitType,
    #cyrusCustomizePrice: _f$cyrusCustomizePrice,
    #surface: _f$surface,
    #hhaCategory: _f$hhaCategory,
    #variantId: _f$variantId,
    #concepts: _f$concepts,
    #stackSize: _f$stackSize,
    #foodPower: _f$foodPower,
    #patternTranslations: _f$patternTranslations,
    #doorDeco: _f$doorDeco,
    #soundType: _f$soundType,
    #uses: _f$uses,
  };

  static VariationElement _instantiate(DecodingData data) {
    return VariationElement(
        closetImage: data.dec(_f$closetImage),
        storageImage: data.dec(_f$storageImage),
        variation: data.dec(_f$variation),
        exchangePrice: data.dec(_f$exchangePrice),
        exchangeCurrency: data.dec(_f$exchangeCurrency),
        seasonEvent: data.dec(_f$seasonEvent),
        seasonEventExclusive: data.dec(_f$seasonEventExclusive),
        seasonality: data.dec(_f$seasonality),
        mannequinSeason: data.dec(_f$mannequinSeason),
        gender: data.dec(_f$gender),
        villagerGender: data.dec(_f$villagerGender),
        sortOrder: data.dec(_f$sortOrder),
        filename: data.dec(_f$filename),
        clothGroupId: data.dec(_f$clothGroupId),
        internalId: data.dec(_f$internalId),
        uniqueEntryId: data.dec(_f$uniqueEntryId),
        variantTranslations: data.dec(_f$variantTranslations),
        colors: data.dec(_f$colors),
        image: data.dec(_f$image),
        pattern: data.dec(_f$pattern),
        patternTitle: data.dec(_f$patternTitle),
        kitType: data.dec(_f$kitType),
        cyrusCustomizePrice: data.dec(_f$cyrusCustomizePrice),
        surface: data.dec(_f$surface),
        hhaCategory: data.dec(_f$hhaCategory),
        variantId: data.dec(_f$variantId),
        concepts: data.dec(_f$concepts),
        stackSize: data.dec(_f$stackSize),
        foodPower: data.dec(_f$foodPower),
        patternTranslations: data.dec(_f$patternTranslations),
        doorDeco: data.dec(_f$doorDeco),
        soundType: data.dec(_f$soundType),
        uses: data.dec(_f$uses));
  }

  @override
  final Function instantiate = _instantiate;

  static VariationElement fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VariationElement>(map);
  }

  static VariationElement deserialize(String json) {
    return ensureInitialized().decodeJson<VariationElement>(json);
  }
}

mixin VariationElementMappable {
  String serialize() {
    return VariationElementMapper.ensureInitialized()
        .encodeJson<VariationElement>(this as VariationElement);
  }

  Map<String, dynamic> toJson() {
    return VariationElementMapper.ensureInitialized()
        .encodeMap<VariationElement>(this as VariationElement);
  }

  VariationElementCopyWith<VariationElement, VariationElement, VariationElement>
      get copyWith => _VariationElementCopyWithImpl(
          this as VariationElement, $identity, $identity);
  @override
  String toString() {
    return VariationElementMapper.ensureInitialized()
        .stringifyValue(this as VariationElement);
  }

  @override
  bool operator ==(Object other) {
    return VariationElementMapper.ensureInitialized()
        .equalsValue(this as VariationElement, other);
  }

  @override
  int get hashCode {
    return VariationElementMapper.ensureInitialized()
        .hashValue(this as VariationElement);
  }
}

extension VariationElementValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VariationElement, $Out> {
  VariationElementCopyWith<$R, VariationElement, $Out>
      get $asVariationElement =>
          $base.as((v, t, t2) => _VariationElementCopyWithImpl(v, t, t2));
}

abstract class VariationElementCopyWith<$R, $In extends VariationElement, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TranslationCopyWith<$R, Translation, Translation>? get variantTranslations;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get colors;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get concepts;
  TranslationCopyWith<$R, Translation, Translation>? get patternTranslations;
  $R call(
      {String? closetImage,
      String? storageImage,
      String? variation,
      int? exchangePrice,
      ExchangeCurrency? exchangeCurrency,
      String? seasonEvent,
      bool? seasonEventExclusive,
      SeasonalAvailability? seasonality,
      SeasonalAvailability? mannequinSeason,
      String? gender,
      String? villagerGender,
      int? sortOrder,
      String? filename,
      int? clothGroupId,
      int? internalId,
      String? uniqueEntryId,
      Translation? variantTranslations,
      List<String>? colors,
      String? image,
      String? pattern,
      String? patternTitle,
      String? kitType,
      int? cyrusCustomizePrice,
      bool? surface,
      HhaCategory? hhaCategory,
      String? variantId,
      List<String>? concepts,
      int? stackSize,
      int? foodPower,
      Translation? patternTranslations,
      bool? doorDeco,
      String? soundType,
      String? uses});
  VariationElementCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VariationElementCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VariationElement, $Out>
    implements VariationElementCopyWith<$R, VariationElement, $Out> {
  _VariationElementCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VariationElement> $mapper =
      VariationElementMapper.ensureInitialized();
  @override
  TranslationCopyWith<$R, Translation, Translation>? get variantTranslations =>
      $value.variantTranslations?.copyWith
          .$chain((v) => call(variantTranslations: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get colors =>
      $value.colors != null
          ? ListCopyWith($value.colors!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(colors: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get concepts =>
      $value.concepts != null
          ? ListCopyWith(
              $value.concepts!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(concepts: v))
          : null;
  @override
  TranslationCopyWith<$R, Translation, Translation>? get patternTranslations =>
      $value.patternTranslations?.copyWith
          .$chain((v) => call(patternTranslations: v));
  @override
  $R call(
          {Object? closetImage = $none,
          Object? storageImage = $none,
          Object? variation = $none,
          Object? exchangePrice = $none,
          Object? exchangeCurrency = $none,
          Object? seasonEvent = $none,
          Object? seasonEventExclusive = $none,
          Object? seasonality = $none,
          Object? mannequinSeason = $none,
          Object? gender = $none,
          Object? villagerGender = $none,
          Object? sortOrder = $none,
          String? filename,
          Object? clothGroupId = $none,
          int? internalId,
          String? uniqueEntryId,
          Object? variantTranslations = $none,
          Object? colors = $none,
          Object? image = $none,
          Object? pattern = $none,
          Object? patternTitle = $none,
          Object? kitType = $none,
          Object? cyrusCustomizePrice = $none,
          Object? surface = $none,
          Object? hhaCategory = $none,
          Object? variantId = $none,
          Object? concepts = $none,
          Object? stackSize = $none,
          Object? foodPower = $none,
          Object? patternTranslations = $none,
          Object? doorDeco = $none,
          Object? soundType = $none,
          Object? uses = $none}) =>
      $apply(FieldCopyWithData({
        if (closetImage != $none) #closetImage: closetImage,
        if (storageImage != $none) #storageImage: storageImage,
        if (variation != $none) #variation: variation,
        if (exchangePrice != $none) #exchangePrice: exchangePrice,
        if (exchangeCurrency != $none) #exchangeCurrency: exchangeCurrency,
        if (seasonEvent != $none) #seasonEvent: seasonEvent,
        if (seasonEventExclusive != $none)
          #seasonEventExclusive: seasonEventExclusive,
        if (seasonality != $none) #seasonality: seasonality,
        if (mannequinSeason != $none) #mannequinSeason: mannequinSeason,
        if (gender != $none) #gender: gender,
        if (villagerGender != $none) #villagerGender: villagerGender,
        if (sortOrder != $none) #sortOrder: sortOrder,
        if (filename != null) #filename: filename,
        if (clothGroupId != $none) #clothGroupId: clothGroupId,
        if (internalId != null) #internalId: internalId,
        if (uniqueEntryId != null) #uniqueEntryId: uniqueEntryId,
        if (variantTranslations != $none)
          #variantTranslations: variantTranslations,
        if (colors != $none) #colors: colors,
        if (image != $none) #image: image,
        if (pattern != $none) #pattern: pattern,
        if (patternTitle != $none) #patternTitle: patternTitle,
        if (kitType != $none) #kitType: kitType,
        if (cyrusCustomizePrice != $none)
          #cyrusCustomizePrice: cyrusCustomizePrice,
        if (surface != $none) #surface: surface,
        if (hhaCategory != $none) #hhaCategory: hhaCategory,
        if (variantId != $none) #variantId: variantId,
        if (concepts != $none) #concepts: concepts,
        if (stackSize != $none) #stackSize: stackSize,
        if (foodPower != $none) #foodPower: foodPower,
        if (patternTranslations != $none)
          #patternTranslations: patternTranslations,
        if (doorDeco != $none) #doorDeco: doorDeco,
        if (soundType != $none) #soundType: soundType,
        if (uses != $none) #uses: uses
      }));
  @override
  VariationElement $make(CopyWithData data) => VariationElement(
      closetImage: data.get(#closetImage, or: $value.closetImage),
      storageImage: data.get(#storageImage, or: $value.storageImage),
      variation: data.get(#variation, or: $value.variation),
      exchangePrice: data.get(#exchangePrice, or: $value.exchangePrice),
      exchangeCurrency:
          data.get(#exchangeCurrency, or: $value.exchangeCurrency),
      seasonEvent: data.get(#seasonEvent, or: $value.seasonEvent),
      seasonEventExclusive:
          data.get(#seasonEventExclusive, or: $value.seasonEventExclusive),
      seasonality: data.get(#seasonality, or: $value.seasonality),
      mannequinSeason: data.get(#mannequinSeason, or: $value.mannequinSeason),
      gender: data.get(#gender, or: $value.gender),
      villagerGender: data.get(#villagerGender, or: $value.villagerGender),
      sortOrder: data.get(#sortOrder, or: $value.sortOrder),
      filename: data.get(#filename, or: $value.filename),
      clothGroupId: data.get(#clothGroupId, or: $value.clothGroupId),
      internalId: data.get(#internalId, or: $value.internalId),
      uniqueEntryId: data.get(#uniqueEntryId, or: $value.uniqueEntryId),
      variantTranslations:
          data.get(#variantTranslations, or: $value.variantTranslations),
      colors: data.get(#colors, or: $value.colors),
      image: data.get(#image, or: $value.image),
      pattern: data.get(#pattern, or: $value.pattern),
      patternTitle: data.get(#patternTitle, or: $value.patternTitle),
      kitType: data.get(#kitType, or: $value.kitType),
      cyrusCustomizePrice:
          data.get(#cyrusCustomizePrice, or: $value.cyrusCustomizePrice),
      surface: data.get(#surface, or: $value.surface),
      hhaCategory: data.get(#hhaCategory, or: $value.hhaCategory),
      variantId: data.get(#variantId, or: $value.variantId),
      concepts: data.get(#concepts, or: $value.concepts),
      stackSize: data.get(#stackSize, or: $value.stackSize),
      foodPower: data.get(#foodPower, or: $value.foodPower),
      patternTranslations:
          data.get(#patternTranslations, or: $value.patternTranslations),
      doorDeco: data.get(#doorDeco, or: $value.doorDeco),
      soundType: data.get(#soundType, or: $value.soundType),
      uses: data.get(#uses, or: $value.uses));

  @override
  VariationElementCopyWith<$R2, VariationElement, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VariationElementCopyWithImpl($value, $cast, t);
}
