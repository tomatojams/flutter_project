// ignore_for_file: constant_identifier_names

import 'package:dart_mappable/dart_mappable.dart';

part 'enums.mapper.dart';

// Miscellaneous  │
// │  1 │ Housewares     │
// │  2 │ Accessories    │
// │  3 │ Tops           │
// │  4 │ Photos         │
// │  5 │ Posters        │
// │  6 │ Message Cards  │
// │  7 │ Music          │
// │  8 │ Other          │
// │  9 │ Headwear       │
// │ 10 │ Socks          │
// │ 11 │ Bags           │
// │ 12 │ Rugs           │
// │ 13 │ Dress-Up       │
// │ 14 │ Fencing        │
// │ 15 │ Floors         │
// │ 16 │ Wall-mounted   │
// │ 17 │ Wallpaper      │
// │ 18 │ Tools/Goods    │
// │ 19 │ Shoes          │
// │ 20 │ Umbrellas      │
// │ 21 │ Bottoms        │
// │ 22 │ Ceiling Decor  │
// │ 23 │ Clothing Other │
// │ 24 │ Fossils        │
// │ 25 │ Artwork        │
// │ 26 │ Gyroids        │

@MappableEnum()
enum ItemCategory {
  All,
  Miscellaneous,
  Housewares,
  Accessories,
  Tops,
  Photos,
  Posters,
  @MappableValue("Message Cards")
  MessageCards,
  Music,
  Other,
  Headwear,
  Socks,
  Bags,
  Rugs,
  @MappableValue("Dress-Up")
  DressUp,
  Fencing,
  Floors,
  @MappableValue("Wall-mounted")
  WallMounted,
  Wallpaper,
  @MappableValue("Tools/Goods")
  ToolsGoods,
  Shoes,
  Umbrellas,
  Bottoms,
  @MappableValue("Ceiling Decor")
  CeilingDecor,
  @MappableValue("Clothing Other")
  ClothingOther,
  Fossils,
  Artwork,
  Gyroids,
}

@MappableEnum()
enum ConstructionSource {
  @MappableValue("Initial House")
  InitialHouse,

  @MappableValue("Resident Services Upgrade")
  ResidentServicesUpgrade,
  Tent,

  @MappableValue("3rd House Upgrade (Left Room)")
  The3RDHouseUpgradeLeftRoom,

  @MappableValue("4th House Upgrade (Right Room)")
  The4ThHouseUpgradeRightRoom,

  @MappableValue("5th House Upgrade (2nd Floor)")
  The5ThHouseUpgrade2NdFloor,
}

@MappableEnum()
enum Catalog {
  @MappableValue("For sale")
  ForSale,
  @MappableValue("Not for sale")
  NotForSale,
  @MappableValue("Seasonal")
  Seasonal,
}

@MappableEnum()
enum CeilingType {
  Cloth,
  Gold,
  Plain,
  Stone,
  Tile,
  Wood,
}

@MappableEnum()
enum CurtainType {
  Curtains,
  @MappableValue("Roller Shades")
  RollerShades,
  @MappableValue("Slatted Blinds")
  SlattedBlinds,
}

@MappableEnum()
enum ExchangeCurrency {
  Bells,
  @MappableValue("Heart Crystals")
  HeartCrystals,
  @MappableValue("Nook Miles")
  NookMiles,
  @MappableValue("Nook Points")
  NookPoints,
  Poki
}

@MappableEnum()
enum HhaCategory {
  AC,
  Appliance,
  Audio,
  Clock,
  Doll,
  Dresser,
  Food,
  Kitchen,
  Lighting,
  MusicalInstrument,
  Pet,
  Plant,
  SmallGoods,
  Trash,
  @MappableValue("TV")
  Tv,
}

@MappableEnum()
enum InteractEnum {
  Bed,
  Chair,
  Kitchenware,
  Mirror,
  @MappableValue("Music Player")
  MusicPlayer,
  @MappableValue("Musical Instrument")
  MusicalInstrument,
  Storage,
  Toilet,
  Trash,
  @MappableValue("TV")
  Tv,
  Wardrobe,
  Workbench,
}

@MappableEnum()
enum LightingType {
  Candle,
  Emission,
  Fluorescent,
  Monitor,
  Shade,
  Spotlight,
}

@MappableEnum()
enum SeasonalAvailability {
  @MappableValue("All Year")
  AllYear,
  Autumn,
  Fall,
  Spring,
  Summer,
  @MappableValue("Summer; Winter")
  SummerWinter,
  Winter,
}

@MappableEnum()
enum Style {
  Active,
  Cool,
  Cute,
  Elegant,
  Gorgeous,
  Simple,
}

@MappableEnum()
enum SizeCategory {
  Large,
  Medium,
  Small,
}

@MappableEnum()
enum VfxType {
  LightOff,
  Random,
  Synchro,
}

@MappableEnum()
enum PaneType {
  Glass,
  Screen,
}

@MappableEnum()
enum Gender {
  Male,
  Female,
}
