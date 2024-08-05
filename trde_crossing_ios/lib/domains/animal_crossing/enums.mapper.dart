// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'enums.dart';

class ItemCategoryMapper extends EnumMapper<ItemCategory> {
  ItemCategoryMapper._();

  static ItemCategoryMapper? _instance;
  static ItemCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemCategoryMapper._());
    }
    return _instance!;
  }

  static ItemCategory fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ItemCategory decode(dynamic value) {
    switch (value) {
      case 'All':
        return ItemCategory.All;
      case 'Miscellaneous':
        return ItemCategory.Miscellaneous;
      case 'Housewares':
        return ItemCategory.Housewares;
      case 'Accessories':
        return ItemCategory.Accessories;
      case 'Tops':
        return ItemCategory.Tops;
      case 'Photos':
        return ItemCategory.Photos;
      case 'Posters':
        return ItemCategory.Posters;
      case "Message Cards":
        return ItemCategory.MessageCards;
      case 'Music':
        return ItemCategory.Music;
      case 'Other':
        return ItemCategory.Other;
      case 'Headwear':
        return ItemCategory.Headwear;
      case 'Socks':
        return ItemCategory.Socks;
      case 'Bags':
        return ItemCategory.Bags;
      case 'Rugs':
        return ItemCategory.Rugs;
      case "Dress-Up":
        return ItemCategory.DressUp;
      case 'Fencing':
        return ItemCategory.Fencing;
      case 'Floors':
        return ItemCategory.Floors;
      case "Wall-mounted":
        return ItemCategory.WallMounted;
      case 'Wallpaper':
        return ItemCategory.Wallpaper;
      case "Tools/Goods":
        return ItemCategory.ToolsGoods;
      case 'Shoes':
        return ItemCategory.Shoes;
      case 'Umbrellas':
        return ItemCategory.Umbrellas;
      case 'Bottoms':
        return ItemCategory.Bottoms;
      case "Ceiling Decor":
        return ItemCategory.CeilingDecor;
      case "Clothing Other":
        return ItemCategory.ClothingOther;
      case 'Fossils':
        return ItemCategory.Fossils;
      case 'Artwork':
        return ItemCategory.Artwork;
      case 'Gyroids':
        return ItemCategory.Gyroids;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ItemCategory self) {
    switch (self) {
      case ItemCategory.All:
        return 'All';
      case ItemCategory.Miscellaneous:
        return 'Miscellaneous';
      case ItemCategory.Housewares:
        return 'Housewares';
      case ItemCategory.Accessories:
        return 'Accessories';
      case ItemCategory.Tops:
        return 'Tops';
      case ItemCategory.Photos:
        return 'Photos';
      case ItemCategory.Posters:
        return 'Posters';
      case ItemCategory.MessageCards:
        return "Message Cards";
      case ItemCategory.Music:
        return 'Music';
      case ItemCategory.Other:
        return 'Other';
      case ItemCategory.Headwear:
        return 'Headwear';
      case ItemCategory.Socks:
        return 'Socks';
      case ItemCategory.Bags:
        return 'Bags';
      case ItemCategory.Rugs:
        return 'Rugs';
      case ItemCategory.DressUp:
        return "Dress-Up";
      case ItemCategory.Fencing:
        return 'Fencing';
      case ItemCategory.Floors:
        return 'Floors';
      case ItemCategory.WallMounted:
        return "Wall-mounted";
      case ItemCategory.Wallpaper:
        return 'Wallpaper';
      case ItemCategory.ToolsGoods:
        return "Tools/Goods";
      case ItemCategory.Shoes:
        return 'Shoes';
      case ItemCategory.Umbrellas:
        return 'Umbrellas';
      case ItemCategory.Bottoms:
        return 'Bottoms';
      case ItemCategory.CeilingDecor:
        return "Ceiling Decor";
      case ItemCategory.ClothingOther:
        return "Clothing Other";
      case ItemCategory.Fossils:
        return 'Fossils';
      case ItemCategory.Artwork:
        return 'Artwork';
      case ItemCategory.Gyroids:
        return 'Gyroids';
    }
  }
}

extension ItemCategoryMapperExtension on ItemCategory {
  dynamic toValue() {
    ItemCategoryMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ItemCategory>(this);
  }
}

class ConstructionSourceMapper extends EnumMapper<ConstructionSource> {
  ConstructionSourceMapper._();

  static ConstructionSourceMapper? _instance;
  static ConstructionSourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConstructionSourceMapper._());
    }
    return _instance!;
  }

  static ConstructionSource fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ConstructionSource decode(dynamic value) {
    switch (value) {
      case "Initial House":
        return ConstructionSource.InitialHouse;
      case "Resident Services Upgrade":
        return ConstructionSource.ResidentServicesUpgrade;
      case 'Tent':
        return ConstructionSource.Tent;
      case "3rd House Upgrade (Left Room)":
        return ConstructionSource.The3RDHouseUpgradeLeftRoom;
      case "4th House Upgrade (Right Room)":
        return ConstructionSource.The4ThHouseUpgradeRightRoom;
      case "5th House Upgrade (2nd Floor)":
        return ConstructionSource.The5ThHouseUpgrade2NdFloor;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ConstructionSource self) {
    switch (self) {
      case ConstructionSource.InitialHouse:
        return "Initial House";
      case ConstructionSource.ResidentServicesUpgrade:
        return "Resident Services Upgrade";
      case ConstructionSource.Tent:
        return 'Tent';
      case ConstructionSource.The3RDHouseUpgradeLeftRoom:
        return "3rd House Upgrade (Left Room)";
      case ConstructionSource.The4ThHouseUpgradeRightRoom:
        return "4th House Upgrade (Right Room)";
      case ConstructionSource.The5ThHouseUpgrade2NdFloor:
        return "5th House Upgrade (2nd Floor)";
    }
  }
}

extension ConstructionSourceMapperExtension on ConstructionSource {
  dynamic toValue() {
    ConstructionSourceMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ConstructionSource>(this);
  }
}

class CatalogMapper extends EnumMapper<Catalog> {
  CatalogMapper._();

  static CatalogMapper? _instance;
  static CatalogMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CatalogMapper._());
    }
    return _instance!;
  }

  static Catalog fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Catalog decode(dynamic value) {
    switch (value) {
      case "For sale":
        return Catalog.ForSale;
      case "Not for sale":
        return Catalog.NotForSale;
      case "Seasonal":
        return Catalog.Seasonal;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Catalog self) {
    switch (self) {
      case Catalog.ForSale:
        return "For sale";
      case Catalog.NotForSale:
        return "Not for sale";
      case Catalog.Seasonal:
        return "Seasonal";
    }
  }
}

extension CatalogMapperExtension on Catalog {
  dynamic toValue() {
    CatalogMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Catalog>(this);
  }
}

class CeilingTypeMapper extends EnumMapper<CeilingType> {
  CeilingTypeMapper._();

  static CeilingTypeMapper? _instance;
  static CeilingTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CeilingTypeMapper._());
    }
    return _instance!;
  }

  static CeilingType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CeilingType decode(dynamic value) {
    switch (value) {
      case 'Cloth':
        return CeilingType.Cloth;
      case 'Gold':
        return CeilingType.Gold;
      case 'Plain':
        return CeilingType.Plain;
      case 'Stone':
        return CeilingType.Stone;
      case 'Tile':
        return CeilingType.Tile;
      case 'Wood':
        return CeilingType.Wood;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CeilingType self) {
    switch (self) {
      case CeilingType.Cloth:
        return 'Cloth';
      case CeilingType.Gold:
        return 'Gold';
      case CeilingType.Plain:
        return 'Plain';
      case CeilingType.Stone:
        return 'Stone';
      case CeilingType.Tile:
        return 'Tile';
      case CeilingType.Wood:
        return 'Wood';
    }
  }
}

extension CeilingTypeMapperExtension on CeilingType {
  String toValue() {
    CeilingTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CeilingType>(this) as String;
  }
}

class CurtainTypeMapper extends EnumMapper<CurtainType> {
  CurtainTypeMapper._();

  static CurtainTypeMapper? _instance;
  static CurtainTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CurtainTypeMapper._());
    }
    return _instance!;
  }

  static CurtainType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CurtainType decode(dynamic value) {
    switch (value) {
      case 'Curtains':
        return CurtainType.Curtains;
      case "Roller Shades":
        return CurtainType.RollerShades;
      case "Slatted Blinds":
        return CurtainType.SlattedBlinds;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CurtainType self) {
    switch (self) {
      case CurtainType.Curtains:
        return 'Curtains';
      case CurtainType.RollerShades:
        return "Roller Shades";
      case CurtainType.SlattedBlinds:
        return "Slatted Blinds";
    }
  }
}

extension CurtainTypeMapperExtension on CurtainType {
  dynamic toValue() {
    CurtainTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CurtainType>(this);
  }
}

class ExchangeCurrencyMapper extends EnumMapper<ExchangeCurrency> {
  ExchangeCurrencyMapper._();

  static ExchangeCurrencyMapper? _instance;
  static ExchangeCurrencyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ExchangeCurrencyMapper._());
    }
    return _instance!;
  }

  static ExchangeCurrency fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ExchangeCurrency decode(dynamic value) {
    switch (value) {
      case 'Bells':
        return ExchangeCurrency.Bells;
      case "Heart Crystals":
        return ExchangeCurrency.HeartCrystals;
      case "Nook Miles":
        return ExchangeCurrency.NookMiles;
      case "Nook Points":
        return ExchangeCurrency.NookPoints;
      case 'Poki':
        return ExchangeCurrency.Poki;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ExchangeCurrency self) {
    switch (self) {
      case ExchangeCurrency.Bells:
        return 'Bells';
      case ExchangeCurrency.HeartCrystals:
        return "Heart Crystals";
      case ExchangeCurrency.NookMiles:
        return "Nook Miles";
      case ExchangeCurrency.NookPoints:
        return "Nook Points";
      case ExchangeCurrency.Poki:
        return 'Poki';
    }
  }
}

extension ExchangeCurrencyMapperExtension on ExchangeCurrency {
  dynamic toValue() {
    ExchangeCurrencyMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ExchangeCurrency>(this);
  }
}

class HhaCategoryMapper extends EnumMapper<HhaCategory> {
  HhaCategoryMapper._();

  static HhaCategoryMapper? _instance;
  static HhaCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HhaCategoryMapper._());
    }
    return _instance!;
  }

  static HhaCategory fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  HhaCategory decode(dynamic value) {
    switch (value) {
      case 'AC':
        return HhaCategory.AC;
      case 'Appliance':
        return HhaCategory.Appliance;
      case 'Audio':
        return HhaCategory.Audio;
      case 'Clock':
        return HhaCategory.Clock;
      case 'Doll':
        return HhaCategory.Doll;
      case 'Dresser':
        return HhaCategory.Dresser;
      case 'Food':
        return HhaCategory.Food;
      case 'Kitchen':
        return HhaCategory.Kitchen;
      case 'Lighting':
        return HhaCategory.Lighting;
      case 'MusicalInstrument':
        return HhaCategory.MusicalInstrument;
      case 'Pet':
        return HhaCategory.Pet;
      case 'Plant':
        return HhaCategory.Plant;
      case 'SmallGoods':
        return HhaCategory.SmallGoods;
      case 'Trash':
        return HhaCategory.Trash;
      case "TV":
        return HhaCategory.Tv;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(HhaCategory self) {
    switch (self) {
      case HhaCategory.AC:
        return 'AC';
      case HhaCategory.Appliance:
        return 'Appliance';
      case HhaCategory.Audio:
        return 'Audio';
      case HhaCategory.Clock:
        return 'Clock';
      case HhaCategory.Doll:
        return 'Doll';
      case HhaCategory.Dresser:
        return 'Dresser';
      case HhaCategory.Food:
        return 'Food';
      case HhaCategory.Kitchen:
        return 'Kitchen';
      case HhaCategory.Lighting:
        return 'Lighting';
      case HhaCategory.MusicalInstrument:
        return 'MusicalInstrument';
      case HhaCategory.Pet:
        return 'Pet';
      case HhaCategory.Plant:
        return 'Plant';
      case HhaCategory.SmallGoods:
        return 'SmallGoods';
      case HhaCategory.Trash:
        return 'Trash';
      case HhaCategory.Tv:
        return "TV";
    }
  }
}

extension HhaCategoryMapperExtension on HhaCategory {
  dynamic toValue() {
    HhaCategoryMapper.ensureInitialized();
    return MapperContainer.globals.toValue<HhaCategory>(this);
  }
}

class InteractEnumMapper extends EnumMapper<InteractEnum> {
  InteractEnumMapper._();

  static InteractEnumMapper? _instance;
  static InteractEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InteractEnumMapper._());
    }
    return _instance!;
  }

  static InteractEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  InteractEnum decode(dynamic value) {
    switch (value) {
      case 'Bed':
        return InteractEnum.Bed;
      case 'Chair':
        return InteractEnum.Chair;
      case 'Kitchenware':
        return InteractEnum.Kitchenware;
      case 'Mirror':
        return InteractEnum.Mirror;
      case "Music Player":
        return InteractEnum.MusicPlayer;
      case "Musical Instrument":
        return InteractEnum.MusicalInstrument;
      case 'Storage':
        return InteractEnum.Storage;
      case 'Toilet':
        return InteractEnum.Toilet;
      case 'Trash':
        return InteractEnum.Trash;
      case "TV":
        return InteractEnum.Tv;
      case 'Wardrobe':
        return InteractEnum.Wardrobe;
      case 'Workbench':
        return InteractEnum.Workbench;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(InteractEnum self) {
    switch (self) {
      case InteractEnum.Bed:
        return 'Bed';
      case InteractEnum.Chair:
        return 'Chair';
      case InteractEnum.Kitchenware:
        return 'Kitchenware';
      case InteractEnum.Mirror:
        return 'Mirror';
      case InteractEnum.MusicPlayer:
        return "Music Player";
      case InteractEnum.MusicalInstrument:
        return "Musical Instrument";
      case InteractEnum.Storage:
        return 'Storage';
      case InteractEnum.Toilet:
        return 'Toilet';
      case InteractEnum.Trash:
        return 'Trash';
      case InteractEnum.Tv:
        return "TV";
      case InteractEnum.Wardrobe:
        return 'Wardrobe';
      case InteractEnum.Workbench:
        return 'Workbench';
    }
  }
}

extension InteractEnumMapperExtension on InteractEnum {
  dynamic toValue() {
    InteractEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<InteractEnum>(this);
  }
}

class LightingTypeMapper extends EnumMapper<LightingType> {
  LightingTypeMapper._();

  static LightingTypeMapper? _instance;
  static LightingTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LightingTypeMapper._());
    }
    return _instance!;
  }

  static LightingType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LightingType decode(dynamic value) {
    switch (value) {
      case 'Candle':
        return LightingType.Candle;
      case 'Emission':
        return LightingType.Emission;
      case 'Fluorescent':
        return LightingType.Fluorescent;
      case 'Monitor':
        return LightingType.Monitor;
      case 'Shade':
        return LightingType.Shade;
      case 'Spotlight':
        return LightingType.Spotlight;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LightingType self) {
    switch (self) {
      case LightingType.Candle:
        return 'Candle';
      case LightingType.Emission:
        return 'Emission';
      case LightingType.Fluorescent:
        return 'Fluorescent';
      case LightingType.Monitor:
        return 'Monitor';
      case LightingType.Shade:
        return 'Shade';
      case LightingType.Spotlight:
        return 'Spotlight';
    }
  }
}

extension LightingTypeMapperExtension on LightingType {
  String toValue() {
    LightingTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LightingType>(this) as String;
  }
}

class SeasonalAvailabilityMapper extends EnumMapper<SeasonalAvailability> {
  SeasonalAvailabilityMapper._();

  static SeasonalAvailabilityMapper? _instance;
  static SeasonalAvailabilityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SeasonalAvailabilityMapper._());
    }
    return _instance!;
  }

  static SeasonalAvailability fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SeasonalAvailability decode(dynamic value) {
    switch (value) {
      case "All Year":
        return SeasonalAvailability.AllYear;
      case 'Autumn':
        return SeasonalAvailability.Autumn;
      case 'Fall':
        return SeasonalAvailability.Fall;
      case 'Spring':
        return SeasonalAvailability.Spring;
      case 'Summer':
        return SeasonalAvailability.Summer;
      case "Summer; Winter":
        return SeasonalAvailability.SummerWinter;
      case 'Winter':
        return SeasonalAvailability.Winter;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SeasonalAvailability self) {
    switch (self) {
      case SeasonalAvailability.AllYear:
        return "All Year";
      case SeasonalAvailability.Autumn:
        return 'Autumn';
      case SeasonalAvailability.Fall:
        return 'Fall';
      case SeasonalAvailability.Spring:
        return 'Spring';
      case SeasonalAvailability.Summer:
        return 'Summer';
      case SeasonalAvailability.SummerWinter:
        return "Summer; Winter";
      case SeasonalAvailability.Winter:
        return 'Winter';
    }
  }
}

extension SeasonalAvailabilityMapperExtension on SeasonalAvailability {
  dynamic toValue() {
    SeasonalAvailabilityMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SeasonalAvailability>(this);
  }
}

class StyleMapper extends EnumMapper<Style> {
  StyleMapper._();

  static StyleMapper? _instance;
  static StyleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StyleMapper._());
    }
    return _instance!;
  }

  static Style fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Style decode(dynamic value) {
    switch (value) {
      case 'Active':
        return Style.Active;
      case 'Cool':
        return Style.Cool;
      case 'Cute':
        return Style.Cute;
      case 'Elegant':
        return Style.Elegant;
      case 'Gorgeous':
        return Style.Gorgeous;
      case 'Simple':
        return Style.Simple;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Style self) {
    switch (self) {
      case Style.Active:
        return 'Active';
      case Style.Cool:
        return 'Cool';
      case Style.Cute:
        return 'Cute';
      case Style.Elegant:
        return 'Elegant';
      case Style.Gorgeous:
        return 'Gorgeous';
      case Style.Simple:
        return 'Simple';
    }
  }
}

extension StyleMapperExtension on Style {
  String toValue() {
    StyleMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Style>(this) as String;
  }
}

class SizeCategoryMapper extends EnumMapper<SizeCategory> {
  SizeCategoryMapper._();

  static SizeCategoryMapper? _instance;
  static SizeCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SizeCategoryMapper._());
    }
    return _instance!;
  }

  static SizeCategory fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SizeCategory decode(dynamic value) {
    switch (value) {
      case 'Large':
        return SizeCategory.Large;
      case 'Medium':
        return SizeCategory.Medium;
      case 'Small':
        return SizeCategory.Small;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SizeCategory self) {
    switch (self) {
      case SizeCategory.Large:
        return 'Large';
      case SizeCategory.Medium:
        return 'Medium';
      case SizeCategory.Small:
        return 'Small';
    }
  }
}

extension SizeCategoryMapperExtension on SizeCategory {
  String toValue() {
    SizeCategoryMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SizeCategory>(this) as String;
  }
}

class VfxTypeMapper extends EnumMapper<VfxType> {
  VfxTypeMapper._();

  static VfxTypeMapper? _instance;
  static VfxTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VfxTypeMapper._());
    }
    return _instance!;
  }

  static VfxType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  VfxType decode(dynamic value) {
    switch (value) {
      case 'LightOff':
        return VfxType.LightOff;
      case 'Random':
        return VfxType.Random;
      case 'Synchro':
        return VfxType.Synchro;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(VfxType self) {
    switch (self) {
      case VfxType.LightOff:
        return 'LightOff';
      case VfxType.Random:
        return 'Random';
      case VfxType.Synchro:
        return 'Synchro';
    }
  }
}

extension VfxTypeMapperExtension on VfxType {
  String toValue() {
    VfxTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<VfxType>(this) as String;
  }
}

class PaneTypeMapper extends EnumMapper<PaneType> {
  PaneTypeMapper._();

  static PaneTypeMapper? _instance;
  static PaneTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaneTypeMapper._());
    }
    return _instance!;
  }

  static PaneType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PaneType decode(dynamic value) {
    switch (value) {
      case 'Glass':
        return PaneType.Glass;
      case 'Screen':
        return PaneType.Screen;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PaneType self) {
    switch (self) {
      case PaneType.Glass:
        return 'Glass';
      case PaneType.Screen:
        return 'Screen';
    }
  }
}

extension PaneTypeMapperExtension on PaneType {
  String toValue() {
    PaneTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PaneType>(this) as String;
  }
}

class GenderMapper extends EnumMapper<Gender> {
  GenderMapper._();

  static GenderMapper? _instance;
  static GenderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenderMapper._());
    }
    return _instance!;
  }

  static Gender fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Gender decode(dynamic value) {
    switch (value) {
      case 'Male':
        return Gender.Male;
      case 'Female':
        return Gender.Female;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Gender self) {
    switch (self) {
      case Gender.Male:
        return 'Male';
      case Gender.Female:
        return 'Female';
    }
  }
}

extension GenderMapperExtension on Gender {
  String toValue() {
    GenderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Gender>(this) as String;
  }
}
