// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/services.dart';

import 'translations.model.dart';

part 'creature.model.mapper.dart';

@MappableClass()
class Creature with CreatureMappable {
  final CreatureSourceSheet sourceSheet;
  final int num;
  final String name;
  final String iconImage;
  final String critterpediaImage;
  final String furnitureImage;
  final int sell;
  final String? whereHow;
  final String? weather;
  final int totalCatchesToUnlock;
  final String spawnRates;
  final String size;
  final bool surface;
  final List<String> description;
  final List<String> catchPhrase;
  final int hhaBasePoints;
  final String? hhaCategory;
  final String iconFilename;
  final String critterpediaFilename;
  final String furnitureFilename;
  final int internalId;
  final String uniqueEntryId;
  final Translation translations;
  final Hemispheres hemispheres;
  final List<String> colors;
  final String? shadow;
  final String? movementSpeed;
  final String? lightingType;
  final String? versionAdded;
  final bool? unlocked;
  final String? catchDifficulty;
  final String? vision;

  Creature({
    required this.sourceSheet,
    required this.num,
    required this.name,
    required this.iconImage,
    required this.critterpediaImage,
    required this.furnitureImage,
    required this.sell,
    this.whereHow,
    this.weather,
    required this.totalCatchesToUnlock,
    required this.spawnRates,
    required this.size,
    required this.surface,
    required this.description,
    required this.catchPhrase,
    required this.hhaBasePoints,
    this.hhaCategory,
    required this.iconFilename,
    required this.critterpediaFilename,
    required this.furnitureFilename,
    required this.internalId,
    required this.uniqueEntryId,
    required this.translations,
    required this.hemispheres,
    required this.colors,
    this.shadow,
    this.movementSpeed,
    this.lightingType,
    this.versionAdded,
    this.unlocked,
    this.catchDifficulty,
    this.vision,
  });

  factory Creature.fromJson(Map<String, dynamic> json) => CreatureMapper.fromJson(json);

  static Future<List<Creature>> findAll(bool Function(Creature creature) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Creatures.json');
    final json = await jsonDecode(data);
    final creatures = List<Creature>.from(json.map((model) => Creature.fromJson(model)));
    return creatures.where(filter).toList();
  }

  static Future<Creature?> findOne(bool Function(Creature creature) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Creatures.json');
    final json = await jsonDecode(data);
    final creatures = List<Creature>.from(json.map((model) => Creature.fromJson(model)));
    return creatures.where(filter).firstOrNull;
  }
}

@MappableEnum()
enum CreatureSourceSheet {
  Fish,
  Insects,
  @MappableValue("Sea Creatures")
  SeaCreatures,
}

@MappableClass()
class Hemispheres with HemispheresMappable {
  final North north;
  final North south;

  Hemispheres({
    required this.north,
    required this.south,
  });

  factory Hemispheres.fromJson(Map<String, dynamic> json) => HemispheresMapper.fromJson(json);
}

@MappableClass()
class North with NorthMappable {
  final String time;
  @MappableField(hook: TimeArrayHook())
  final List timeArray;
  final List<String> months;
  final List<int> monthsArray;

  North({
    required this.time,
    required this.timeArray,
    required this.months,
    required this.monthsArray,
  });

  factory North.fromJson(dynamic json) => NorthMapper.fromJson(json);
}

class TimeArrayHook extends MappingHook {
  const TimeArrayHook();

  /// Receives the ecoded value before decoding.
  @override
  Object? beforeDecode(Object? value) => value;

  /// Receives the decoded value after decoding.
  @override
  Object? afterDecode(Object? value) {
    final json = value as List;

    if (json[0] is int) {
      return json.map((e) => e as int).toList();
    } else {
      return json.map((e) => (e as List).map((e) => e as int).toList()).toList();
    }
  }

  /// Receives the decoded value before encoding.
  @override
  Object? beforeEncode(Object? value) => value;

  /// Receives the encoded value after encoding.
  @override
  Object? afterEncode(Object? value) => value;
}
