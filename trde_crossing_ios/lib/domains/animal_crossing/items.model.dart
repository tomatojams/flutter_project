// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/services.dart';

import 'enums.dart';
import 'recipes.model.dart';
import 'translations.model.dart';

part 'items.model.mapper.dart';

@MappableClass()
class Item with ItemMappable {
  final ItemCategory sourceSheet;
  final String name;
  final String? image;
  final dynamic variation;
  final String? bodyTitle;
  final dynamic pattern;
  final dynamic patternTitle;
  final bool? diy;
  final bool? bodyCustomize;
  final bool? patternCustomize;
  final int? stackSize;
  final int? kitCost;
  final dynamic kitType;
  final dynamic cyrusCustomizePrice;
  final int? buy;
  final int? sell;
  final String? size;
  final bool? surface;
  final int? exchangePrice;
  final ExchangeCurrency? exchangeCurrency;
  final List<String>? source;
  final List<String>? sourceNotes;
  final String? seasonEvent;
  final bool? seasonEventExclusive;
  final int? hhaBasePoints;
  final HhaCategory? hhaCategory;
  //
  @MappableField(hook: _InteractHook())
  final String? interact;
  final String? tag;
  final bool? outdoor;
  final String? speakerType;
  final LightingType? lightingType;
  final int? foodPower;
  final Catalog? catalog;
  final String? versionAdded;
  final bool? unlocked;
  final String? filename;
  final dynamic variantId;
  final int? internalId;
  final String? uniqueEntryId;
  final Translation? seriesTranslations;
  final Translation? translations;
  final List<String>? colors;
  final List<String>? concepts;
  final String? set;
  final String? series;
  final Recipe? recipe;
  final ThemesTranslations? themesTranslations;
  final bool? villagerEquippable;
  final SeasonalAvailability? seasonalAvailability;
  final String? type;
  final List<VariationElement>? variations;
  final List<Style>? styles;
  final List<String>? themes;
  final String? closetImage;
  final String? storageImage;
  final SeasonalAvailability? seasonality;
  final SeasonalAvailability? mannequinSeason;
  final String? gender;
  final String? villagerGender;
  final int? sortOrder;
  final int? clothGroupId;
  final bool? customize;
  final String? backColor;
  final String? bodyColor;
  final String? headColor;
  final String? footColor;
  final String? penColor1;
  final String? penColor2;
  final String? penColor3;
  final String? penColor4;
  final String? startDate;
  final String? endDate;
  final String? nhStartDate;
  final String? nhEndDate;
  final String? shStartDate;
  final String? shEndDate;
  final String? version;
  final String? framedImage;
  final String? albumImage;
  final String? inventoryImage;
  final String? inventoryFilename;
  final String? storageFilename;
  final SizeCategory? sizeCategory;
  final String? primaryShape;
  final String? secondaryShape;
  final bool? vfx;
  final bool? doorDeco;
  final VfxType? vfxType;
  final String? windowType;
  final String? windowColor;
  final PaneType? paneType;
  final CurtainType? curtainType;
  final String? curtainColor;
  final CeilingType? ceilingType;
  //
  @MappableField(hook: _UseHook())
  final String? uses;
  final String? fossilGroup;
  final List<String>? description;
  final String? museum;
  final String? highResTexture;
  final bool? genuine;
  final String? category;
  final String? realArtworkTitle;
  final String? artist;
  final String? soundType;
  Item({
    required this.sourceSheet,
    required this.name,
    this.image,
    required this.variation,
    this.bodyTitle,
    required this.pattern,
    required this.patternTitle,
    this.diy,
    this.bodyCustomize,
    this.patternCustomize,
    this.stackSize,
    this.kitCost,
    required this.kitType,
    required this.cyrusCustomizePrice,
    this.buy,
    this.sell,
    this.size,
    this.surface,
    this.exchangePrice,
    this.exchangeCurrency,
    this.source,
    this.sourceNotes,
    this.seasonEvent,
    this.seasonEventExclusive,
    this.hhaBasePoints,
    this.hhaCategory,
    this.interact,
    this.tag,
    this.outdoor,
    this.speakerType,
    this.lightingType,
    this.foodPower,
    this.catalog,
    this.versionAdded,
    this.unlocked,
    this.filename,
    required this.variantId,
    this.internalId,
    this.uniqueEntryId,
    this.seriesTranslations,
    this.translations,
    this.colors,
    this.concepts,
    this.set,
    this.series,
    this.recipe,
    this.themesTranslations,
    this.villagerEquippable,
    this.seasonalAvailability,
    this.type,
    this.variations,
    this.styles,
    this.themes,
    this.closetImage,
    this.storageImage,
    this.seasonality,
    this.mannequinSeason,
    this.gender,
    this.villagerGender,
    this.sortOrder,
    this.clothGroupId,
    this.customize,
    this.backColor,
    this.bodyColor,
    this.headColor,
    this.footColor,
    this.penColor1,
    this.penColor2,
    this.penColor3,
    this.penColor4,
    this.startDate,
    this.endDate,
    this.nhStartDate,
    this.nhEndDate,
    this.shStartDate,
    this.shEndDate,
    this.version,
    this.framedImage,
    this.albumImage,
    this.inventoryImage,
    this.inventoryFilename,
    this.storageFilename,
    this.sizeCategory,
    this.primaryShape,
    this.secondaryShape,
    this.vfx,
    this.doorDeco,
    this.vfxType,
    this.windowType,
    this.windowColor,
    this.paneType,
    this.curtainType,
    this.curtainColor,
    this.ceilingType,
    this.uses,
    this.fossilGroup,
    this.description,
    this.museum,
    this.highResTexture,
    this.genuine,
    this.category,
    this.realArtworkTitle,
    this.artist,
    this.soundType,
  });

  String get getImage =>
      image ??
      storageImage ??
      variations?.first.storageImage ??
      variations?.first.image ??
      framedImage ??
      inventoryImage!;

  factory Item.fromJson(Map<String, dynamic> json) => ItemMapper.fromJson(json);

  static Future<List<Item>> findWithPagination({String? after, bool Function(Item item)? filter}) async {
    // Load the JSON file
    final data = await rootBundle.loadString('assets/json/Items.json');
    final json = await jsonDecode(data);
    final items = List<Item>.from(json.map((model) => Item.fromJson(model)));

    if (after != null) {
      return items.skipWhile((value) => value.name != after).skip(1).take(10).toList();
    } else if (filter != null) {
      return items.where((element) => filter(element)).skip(1).take(10).toList();
    }
    return items.take(10).toList();
  }

  static Future<Item?> findOne(bool Function(Item item) filter) async {
    // Load the JSON file
    final data = await rootBundle.loadString('assets/json/Items.json');
    final json = await jsonDecode(data);
    final items = List<Item>.from(json.map((model) => Item.fromJson(model)));
    return items.where(filter).firstOrNull;
  }
}

@MappableClass()
class VariationElement with VariationElementMappable {
  String? closetImage;
  String? storageImage;
  @MappableField(hook: _VariationHook())
  String? variation;
  int? exchangePrice;
  ExchangeCurrency? exchangeCurrency;
  String? seasonEvent;
  bool? seasonEventExclusive;
  SeasonalAvailability? seasonality;
  SeasonalAvailability? mannequinSeason;
  String? gender;
  String? villagerGender;
  int? sortOrder;
  String filename;
  int? clothGroupId;
  int internalId;
  String uniqueEntryId;
  Translation? variantTranslations;
  List<String>? colors;
  String? image;
  String? pattern;
  String? patternTitle;
  String? kitType;
  int? cyrusCustomizePrice;
  bool? surface;
  HhaCategory? hhaCategory;
  String? variantId;
  List<String>? concepts;
  int? stackSize;
  int? foodPower;
  Translation? patternTranslations;
  bool? doorDeco;
  String? soundType;
  @MappableField(hook: _UseHook())
  String? uses;

  VariationElement({
    this.closetImage,
    this.storageImage,
    this.variation,
    this.exchangePrice,
    this.exchangeCurrency,
    this.seasonEvent,
    this.seasonEventExclusive,
    this.seasonality,
    this.mannequinSeason,
    this.gender,
    this.villagerGender,
    this.sortOrder,
    required this.filename,
    this.clothGroupId,
    required this.internalId,
    required this.uniqueEntryId,
    this.variantTranslations,
    this.colors,
    this.image,
    this.pattern,
    this.patternTitle,
    this.kitType,
    this.cyrusCustomizePrice,
    this.surface,
    this.hhaCategory,
    this.variantId,
    this.concepts,
    this.stackSize,
    this.foodPower,
    this.patternTranslations,
    this.doorDeco,
    this.soundType,
    this.uses,
  });

  factory VariationElement.fromJson(Map<String, dynamic> json) => VariationElementMapper.fromJson(json);
}

class _VariationHook extends MappingHook {
  const _VariationHook();

  @override
  Object? afterDecode(Object? value) {
    if (value is int) {
      return value.toString();
    } else {
      return value;
    }
  }
}

typedef ThemesTranslations = Map<String, Translation>;

class _InteractHook extends MappingHook {
  const _InteractHook();

  @override
  Object? afterDecode(Object? value) {
    if (value is bool) {
      return null;
    } else {
      return value;
    }
  }
}

class _UseHook extends MappingHook {
  const _UseHook();

  @override
  Object? afterDecode(Object? value) {
    if (value is int) {
      return value.toString();
    } else {
      return value;
    }
  }
}
