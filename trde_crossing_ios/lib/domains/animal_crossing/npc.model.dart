// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/services.dart';

import 'enums.dart';
import 'translations.model.dart';

part 'npc.model.mapper.dart';

@MappableClass()
class Npc with NpcMappable {
  String sourceSheet;
  String name;
  String? iconImage;
  String? photoImage;
  Gender gender;
  Gender genderAsia;
  String? versionAdded;
  String npcId;
  int internalId;
  String birthday;
  String? nameColor;
  String? bubbleColor;
  String? iconFilename;
  String? photoFilename;
  String uniqueEntryId;
  Translation translations;

  Npc({
    required this.sourceSheet,
    required this.name,
    this.iconImage,
    this.photoImage,
    required this.gender,
    required this.genderAsia,
    this.versionAdded,
    required this.npcId,
    required this.internalId,
    required this.birthday,
    this.nameColor,
    this.bubbleColor,
    this.iconFilename,
    this.photoFilename,
    required this.uniqueEntryId,
    required this.translations,
  });

  factory Npc.fromJson(Map<String, dynamic> json) => NpcMapper.fromJson(json);

  static Future<List<Npc>> findAll(bool Function(Npc npc) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Npc.json');
    final json = await jsonDecode(data);
    final npcs = List<Npc>.from(json.map((model) => Npc.fromJson(model)));
    return npcs.where(filter).toList();
  }

  static Future<Npc?> findOne(bool Function(Npc npc) filter) async {
    // Load the JSON file
    final String data = await rootBundle.loadString('assets/json/Npc.json');
    final json = await jsonDecode(data);
    final npcs = List<Npc>.from(json.map((model) => Npc.fromJson(model)));
    return npcs.where(filter).firstOrNull;
  }
}
