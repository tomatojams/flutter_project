// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/services.dart';

import 'enums.dart';
import 'translations.model.dart';

part 'villagers.model.mapper.dart';

@MappableClass()
class Villager with VillagerMappable {
  String sourceSheet;
  String name;
  String iconImage;
  String photoImage;
  String? houseImage;
  String species;
  Gender gender;
  Personality personality;
  Subtype subtype;
  Hobby hobby;
  String birthday;
  String catchphrase;
  String favoriteSong;
  String favoriteSaying;
  String defaultClothing;
  String defaultUmbrella;
  String wallpaper;
  String flooring;
  List<int> furnitureList;
  List<String> furnitureNameList;
  String diyWorkbench;
  dynamic kitchenEquipment;
  String versionAdded;
  String nameColor;
  String bubbleColor;
  String filename;
  String uniqueEntryId;
  Translation catchphrases;
  Translation translations;
  List<Style> styles;
  List<String> colors;
  int defaultClothingInternalId;

  Villager({
    required this.sourceSheet,
    required this.name,
    required this.iconImage,
    required this.photoImage,
    this.houseImage,
    required this.species,
    required this.gender,
    required this.personality,
    required this.subtype,
    required this.hobby,
    required this.birthday,
    required this.catchphrase,
    required this.favoriteSong,
    required this.favoriteSaying,
    required this.defaultClothing,
    required this.defaultUmbrella,
    required this.wallpaper,
    required this.flooring,
    required this.furnitureList,
    required this.furnitureNameList,
    required this.diyWorkbench,
    required this.kitchenEquipment,
    required this.versionAdded,
    required this.nameColor,
    required this.bubbleColor,
    required this.filename,
    required this.uniqueEntryId,
    required this.catchphrases,
    required this.translations,
    required this.styles,
    required this.colors,
    required this.defaultClothingInternalId,
  });

  factory Villager.fromJson(Map<String, dynamic> json) => VillagerMapper.fromJson(json);

  static Future<List<Villager>> findAll(bool Function(Villager villager) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Villagers.json');
    final json = await jsonDecode(data);
    final villagers = List<Villager>.from(json.map((model) => Villager.fromJson(model)));
    return villagers.where(filter).toList();
  }

  static Future<List<Villager>> findWithPagination({String? after, bool Function(Villager villager)? filter}) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Villagers.json');
    final json = await jsonDecode(data);
    final villagers = List<Villager>.from(json.map((model) => Villager.fromJson(model)));

    if (after != null) {
      return villagers.skipWhile((value) => value.name != after).skip(1).take(10).toList();
    } else if (filter != null) {
      return villagers.where((element) => filter(element)).skip(1).take(10).toList();
    }
    return villagers.take(10).toList();
  }

  static Future<Villager?> findOne(bool Function(Villager villager) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Villagers.json');
    final json = await jsonDecode(data);
    final villagers = List<Villager>.from(json.map((model) => Villager.fromJson(model)));
    return villagers.where(filter).firstOrNull;
  }
}

@MappableEnum()
enum Hobby {
  Education,
  Fashion,
  Fitness,
  Music,
  Nature,
  Play,
}

@MappableEnum()
enum Personality {
  @MappableValue("Big Sister")
  BigSister,
  Cranky,
  Jock,
  Lazy,
  Normal,
  Peppy,
  Smug,
  Snooty,
}

@MappableEnum()
enum Subtype {
  A,
  B,
}
